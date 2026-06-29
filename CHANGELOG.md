# Changelog

All notable changes to Playa Plot are documented here.

## Unreleased

### Added
- **Layout autosave (local persistence).** Your layout now survives a page
  refresh — it's saved to the browser automatically on every change and
  restored on load. Fixes the long-standing "refresh resets the scene" gap.
- Storage now sits behind a swappable adapter (`Store`), so cloud-synced
  accounts can drop in later without touching the rest of the app.

First public release. Live at https://bulat-eng.github.io/playa-plot/

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
