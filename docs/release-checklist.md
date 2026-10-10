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
  - Previous PCBWay upload predates the final SI1308EDL, BQ24074, USB-C, EPD BOM and remote-input conditioning corrections and must be replaced before payment.

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

Validated source revision: **2f6e8ed** (`fix(mainboard): relocate Snooze filter below J4`).

- Mainboard source DRC: **0 violations / 0 unconnected**
- Daughterboards: **0 violations / 0 unconnected**
- Mainboard BOM ↔ CPL: **78 / 78 references, no missing or extra refs**
- Remote controls now have populated 10 kΩ external pull-ups on ENC_A / ENC_B / ENC_SW / SNOOZE_SW; Snooze also has a populated 10 nF hardware filter. Encoder RC capacitors remain omitted and debounce stays in firmware.
- USB-C J1 is now oriented with its mating face at the board edge; no J1 via-in-pad remains.
- U6 MAX98357A exposed-pad ground via remains a fabrication gate: filled/capped/plated-over via-in-pad (IPC-4761 Type VII or fabricator equivalent) is preferred to prevent solder loss.
- J5/J6 top-contact FPC orientation remains a physical sample gate.
- Exact GDEY037T03-FL21 reference-circuit audit: MBR0530 diode class, SI1308EDL MOSFET class, 10 uH / 3.0 x 3.0 x 1.5 mm EPD inductor class, and >=25 V X5R/X7R HV capacitor requirements are matched. Current HV capacitors are 50 V.
- L_EPD is now locked to Wurth 74438335100 (10 uH, 3.0 x 3.0 x 1.5 mm, 1.25 A rated, 2 A saturation class) with the manufacturer land pattern embedded in the PCB.
- GDEY037T03-FL21 / UC8253 BUSY is active-low during controller activity; firmware bring-up must use this polarity.
- Do not pay or release the existing PCBWay Mainboard order until the Gerber, BOM and CPL are replaced by the current audited set and PCBWay re-runs DFM/assembly review.
