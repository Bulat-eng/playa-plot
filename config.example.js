/* Playa Plot — cloud config (PUBLIC values only)
 * ------------------------------------------------------------------
 * SETUP:
 *   1. Copy this file to  config.js   (same folder)
 *   2. Paste your Supabase Project URL + Publishable key below
 *   3. Commit config.js and push — Cloudflare Pages will serve it
 *
 * WHICH KEY: in Supabase → Settings → API Keys, use the "Publishable key"
 * (looks like sb_publishable_...). It's the current name for the old
 * "anon / public" key — safe in a browser. It still goes in the
 * supabaseAnonKey slot below (that's just the field label).
 *
 * Both values here are PUBLIC by design and safe to commit:
 *   - The publishable key only grants the "anonymous" role; every row is
 *     protected by Row-Level Security (see supabase-schema.sql), so a signed-in
 *     user can only ever read/write their OWN templates.
 *   - NEVER put the Secret key (sb_secret_... / service_role) or the database
 *     password in this file.
 *
 * With no config.js present, Playa Plot runs fully local (templates save to the
 * browser only) — nothing breaks, you just don't get accounts / cross-device sync.
 */
window.PLAYA_CONFIG = {
  supabaseUrl: "https://YOUR_PROJECT_REF.supabase.co",
  supabaseAnonKey: "sb_publishable_YOUR_KEY_HERE",   // the Publishable key
};
