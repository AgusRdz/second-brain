---
tags:
  - plan
  - project/ciranet
  - project/design-system
date: "2026-04-20"
ticket: RES-439
status: in-progress
---

# RES-439 — Dark Mode Component Review

## Context

Storybook dark mode infrastructure is complete (theme toggle, DARK_CSS injection, zone.js loop fix). This plan tracks the per-component visual review. All fixes go into the `DARK_CSS` string in `.storybook/preview.ts` — no component SCSS changes.

**Branch:** `feat/RES-439-update-colors`
**Workflow:** Review each component in Storybook with Dark mode active → report findings → Claude writes the DARK_CSS fix → mark done.

---

## Already done — skip

- [x] Button
- [x] Avatar
- [x] Card
- [x] Hyperlink
- [x] Icon Button
- [x] List
- [x] Modal
- [x] Segmented Button
- [x] Toast

---

## Tier A — Start here (confirmed SCSS issues)

These are known broken — review to confirm and describe what you see.

- [ ] **Alert** — check all 4 variants: Info, Success, Warning, Error
- [ ] **Tabs** — check hover state on tab items, active tab indicator
- [ ] **Drawer** — open a drawer, check the panel background
- [ ] **Menu** — open a dropdown menu, check background and item hover
- [ ] **Stepper** — check current step circle, completed step, connector line

---

## Tier B — Likely broken (verify)

- [ ] **Action Menu** — open the menu, check background and items
- [ ] **Badge** — check all variants: Default, Navy, Tile, Outline
- [ ] **Datepicker** — open the calendar popup, check day cells, selected date, today
- [ ] **Time Picker** — open the time panel
- [ ] **Search Input** — check input background, border, focus ring
- [ ] **Textarea** — check background, border, focus ring
- [ ] **Rich Text Editor** — check editor area background, toolbar

---

## Tier C — Low risk (quick scan)

- [ ] **Accordion** — expand/collapse, check borders and text
- [ ] **Breadcrumbs** — check link colors and separator
- [ ] **Checkbox** — checked, unchecked, disabled states
- [ ] **Chips** — check chip background, text, selected state
- [ ] **Data Grid** — check header, rows, pagination, filter panel, empty state
- [ ] **Divider** — horizontal and vertical
- [ ] **File Upload** — check drop zone background and border
- [ ] **Form Field** — check label, hint, error message colors
- [ ] **Form Group** — check group label and layout
- [ ] **Pagination** — check buttons and active page
- [ ] **Progress Bar** — check track, fill, striped animation
- [ ] **Radio** — selected, unselected, disabled
- [ ] **Responsive Box** — layout only, quick scan
- [ ] **Select** — open dropdown, check background and options
- [ ] **Skeleton** — check gradient animation visibility
- [ ] **Spinner** — check color visibility
- [ ] **Text Field** — check background, border, placeholder, focus, disabled
- [ ] **Toggle** — on, off, disabled states

---

## Foundation — after Components

- [ ] **Colors** — has its own Dark Mode story, verify swatches render correctly
- [ ] **Typography** — check heading and body text colors
- [ ] **Iconography** — check icon color against dark background
- [ ] **Spacing** — no colors, quick glance
- [ ] **Layout Utilities** — no colors, quick glance

---

## Done criteria

- [ ] All Tier A + B reviewed and fixed
- [ ] Tier C sweep complete
- [ ] Foundation checked
- [ ] `npx tsc --noEmit` clean
- [ ] Light mode regression check
- [ ] Commit + raise MR

## Related

- [[ciranet-design-system]]
