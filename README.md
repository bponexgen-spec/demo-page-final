# NexGen BPO — Investor Demo (Complete Build)

This complete build includes a React frontend and Node/Express backend with demo features:
- English/Dutch auto-detect (client-side fallback)
- Voice AI trial (ElevenLabs key included in .env for demo)
- Simulated inbound/outbound call UI
- Booking form (saves to server/data/bookings.json)
- Pricing, sliders, legal pages, EU cookie banner (demo)
- Render-ready Dockerfile and Procfile

Quick local run:
1. npm install
2. cd client && npm install
3. npm run build
4. npm start (from root)

Render deploy (recommended Docker):
- Build command: npm install --prefix server && npm install --prefix client && npm run build --prefix client
- Start command: node server/index.js
