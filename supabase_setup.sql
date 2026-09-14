create table if not exists public.bookings (
  id uuid primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  guest text not null,
  phone text default '',
  check_in date not null,
  check_out date not null,
  pax integer not null default 2,
  source text default 'Direct',
  rate numeric not null default 650,
  deposit numeric not null default 0,
  status text not null default 'Confirmed',
  payment_status text not null default 'Not Paid',
  notes text default '',
  updated_at timestamptz not null default now()
);

alter table public.bookings enable row level security;

create policy "Users can read own bookings" on public.bookings
for select using (auth.uid() = user_id);

create policy "Users can insert own bookings" on public.bookings
for insert with check (auth.uid() = user_id);

create policy "Users can update own bookings" on public.bookings
for update using (auth.uid() = user_id) with check (auth.uid() = user_id);

create policy "Users can delete own bookings" on public.bookings
for delete using (auth.uid() = user_id);

create index if not exists bookings_user_dates_idx on public.bookings(user_id, check_in, check_out);
