# Changelog

All notable changes to Playa Plot are documented here.

## v0.2.0 — 2026-07-01

### Added
- **First-run setup wizard.** New visitors get asked plot size, RV count, tent
  count, and whether they have a common area (open / covered / none), and the
  starter scene is built from their answers — RVs as a windbreak on the west
  edge, tents on the leeward east. Skippable; shows only once.
- **New item types:** Shade structure (translucent, drawn above everything),
  Fire lane (hatched keep-clear strip), Road (with dashed centre line), Bike,
  and Power (panel with a lightning bolt).
- **Common area** is now its own item: an open zone by default (light fill,
  dashed edge, drawn under other items) with a **"Covered — render as a tent"**
  checkbox. Replaces the old "Common tent"; existing saves migrate automatically.
- **Edge-move + resize handles** on shade structures and common areas: clicks
  inside the zone select whatever sits in it, dragging the edge moves the zone,
  and square corner/side handles resize it (snap-aware, rotation-aware).
- **Fire-lane warnings:** anything overlapping a fire lane is called out in the
  Footprint panel, like the existing fuel-clearance check.
- **Share links.** One click copies a URL with the whole layout compressed into
  it — no account or backend needed; opening the link loads the exact layout.
- **JSON export / import** of layouts as files.
- Selecting an item now scrolls the sidebar editor into view with a brief
  highlight, so the edit fields are always visible after a click.

### Changed
- Default scene slimmed to 1 RV + 1 tent (was 2 RVs + 5 shiftpods + common tent);
  the wizard covers richer starts.
- Canvas is layered: fire lanes, roads, and common areas draw under items;
  shade structures draw above them.
- Sidebar reordered: Account → My templates → Add to plot → Selected item →
  Footprint → Share & export → Legend → Notes.

## v0.1.0 — 2026-07-01

### Added
- **Accounts + cloud-synced templates (optional).** Sign in with email+password
  or Google to save named layouts that sync across devices. Backed by Supabase
  with Row-Level Security so each person only ever sees their own templates. New
  **Account** and **My templates** panels in the sidebar.
- **Named templates work offline too.** Signed out (or with no cloud configured),
  templates save to the browser via the same panel — the app stays fully local and
  needs no setup to keep working.
- **Layout autosave (local persistence).** Your layout now survives a page
  refresh — it's saved to the browser automatically on every change and
  restored on load. Fixes the long-standing "refresh resets the scene" gap.
- **Show/hide password toggle** on the account sign-in fields.
- Storage now sits behind swappable adapters (`Store` for autosave, `Templates`
  for named layouts), so the cloud backend drops in without touching the rest of
  the app.

### Changed
- Canonical live site moved to https://playa-plot.pages.dev/ (Cloudflare Pages).

## v0.0.1

First public release.

### Added
- Drag-and-drop Black Rock City hub layout planner, shipped as a single
  self-contained HTML file (no backend, build step, or dependencies).
- **Add-to-plot dropdowns** with researched, real-world dimensions:
  - RVs — Camper van (Class B), Class B+, Class C, Class A, Travel trailer,
    Fifth wheel, Teardrop.
  - Tents/shelters — Shiftpod Mini / III / XL, Kodiak 10×10 & 10×14,
    Bell tent 5m & 6m, Dome tent, Common tent.
  - Plus Structure and Generator/fuel (with a 10-ft clearance ring).
- **Realistic items:** tents and shiftpods render round; RVs show a driver
  cab (drivable) or a hitch/gooseneck (towable). Every RV and tent has a
  high-contrast door.
- **In-item labels:** each piece shows its name and W×H footprint.
- **Rename** via the panel field, double-click, or the toolbar pencil.
- **Footprint stats:** bounding box, total structure area, 50-ft-unit sizing
  for the camp questionnaire, and an inventory count.
- **Warnings** when the layout exceeds the plot or breaks the 10-ft fuel clearance.
- **Map controls:** auto-fit to the stage, manual zoom, Fit, and Fullscreen.
- North + prevailing-wind compass, PNG export, and adjustable plot size with
  snap-to-grid.
