MOCHI & MOON — PHONE BOOKING MANAGER

FILES
- index.html              Main booking app
- manifest.webmanifest    Lets the site behave like an app
- sw.js                   Offline/PWA support
- icon-192.png / icon-512.png  App icons
- supabase_setup.sql      Database + security setup

FASTEST WAY TO USE ON IPHONE
1. Create a free Supabase project at supabase.com.
2. In Supabase > SQL Editor, paste and run supabase_setup.sql.
3. In Supabase > Project Settings > API, copy:
   - Project URL
   - anon/public key
4. Host the folder on any HTTPS static host such as Netlify, Vercel, GitHub Pages or Cloudflare Pages.
5. Open the hosted URL on your iPhone Safari.
6. In Settings inside the Mochi & Moon app, paste the Project URL and anon/public key.
7. Enter your email and tap Email Login Link.
8. Open the login email on your phone and tap the link.
9. Tap Sync Now.
10. Safari > Share > Add to Home Screen.

IMPORTANT
- The anon/public Supabase key is designed for browser apps. Do NOT use a service_role key.
- Row Level Security in supabase_setup.sql restricts each signed-in user to their own booking records.
- Until cloud setup is completed, bookings are stored only in the current browser/device.

APP FEATURES
- Dashboard: confirmed bookings, revenue, outstanding balance, pending bookings
- Calendar view
- Booking management: guest, phone, dates, pax, source, rates, deposit, status, payment, notes
- Date-clash warning
- Payment table
- Search/filter bookings
- CSV export
- JSON backup/restore
- Supabase cloud sync with magic-link sign in
- Installable on iPhone Home Screen
- Offline shell support
