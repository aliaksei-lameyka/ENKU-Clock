# Release checklist

A hardware release is considered manufacturing-ready only when the checked source revision and generated manufacturing package agree.

## Source

- [x] Mainboard PCB source present
- [x] Encoder PCB source present
- [x] Snooze PCB source present
- [x] Wake LED PCB source present
- [x] project-specific footprints included
- [x] schematic sheets included
- [x] assembly BOM data included

## Rev A validation before first prototype

- [x] Mainboard native KiCad hard DRC passed
- [x] Mainboard unconnected count reached zero
- [x] Mainboard final production export passed
- [x] four copper layers exported
- [x] front and back solder mask exported
- [x] board outline and drill exported
- [x] BOM / CPL reference cross-check passed
- [x] daughterboard production artifacts generated
- [ ] current audited prototype package submitted for fabricator review
  - Previous PCBWay upload predates the final SI1308EDL, BQ24074, USB-C and BOM corrections and must be replaced before payment.

## Still required before calling Rev A physically validated

- [ ] fabricator DFM accepted
- [ ] exact sourced parts accepted
- [ ] assembled prototype received
- [ ] visual assembly inspection
- [ ] power bring-up completed
- [ ] USB validated
- [ ] RTC and ALS validated
- [ ] controls validated
- [ ] audio validated
- [ ] wake light validated
- [ ] frontlight validated
- [ ] E Ink validated
- [ ] sleep current measured
- [ ] enclosure fit verified
- [ ] Rev A issue log reviewed

## Release policy

Generated Gerbers, drill files, CPL and release ZIPs must come from a known source revision. Do not hand-edit generated fabrication output and then treat it as canonical source.


## Current audited manufacturing snapshot

- Mainboard source DRC: **0 violations / 0 unconnected**
- Daughterboards: **0 violations / 0 unconnected**
- Mainboard BOM ↔ CPL: **73 / 73 references, no missing or extra refs**
- USB-C J1 is now oriented with its mating face at the board edge; no J1 via-in-pad remains.
- U6 MAX98357A exposed-pad ground via remains a fabrication gate: filled/capped/plated-over via-in-pad (IPC-4761 Type VII or fabricator equivalent) is preferred to prevent solder loss.
- J5/J6 top-contact FPC orientation remains a physical sample gate.
- Do not pay or release the existing PCBWay Mainboard order until the Gerber, BOM and CPL are replaced by the current audited set and PCBWay re-runs DFM/assembly review.
