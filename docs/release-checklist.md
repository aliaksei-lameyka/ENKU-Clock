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
- [x] prototype package submitted for fabricator review

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
