# Playa Plot — Hub Layout Planner

A single-file, drag-and-drop camp layout planner for Black Rock City (Burning Man).
Set your plot size, drop in RVs, Shiftpods, common tents, structures, and
generators/fuel (with a 10-ft clearance ring), then drag, rotate, and duplicate
items on a to-scale grid. It live-calculates your footprint, total structure
area, 50-ft-unit sizing for the camp questionnaire, and flags fuel-clearance
violations. Includes a north/wind compass and a "Download PNG" export.

## Live site

https://bulat-personal.github.io/playa-plot/

## How it works

Everything lives in [`index.html`](index.html) — all HTML, CSS, and JavaScript
are inline. No backend, no build step, no dependencies, no data leaves the
browser. Open the file locally or host it as a static site.

## Updating the live site

Edit `index.html`, commit, and push to `main`. GitHub Pages redeploys
automatically within a minute or two.
