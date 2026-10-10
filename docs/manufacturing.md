# Manufacturing

## Current stage

An earlier ENKU Clock Rev A package has been submitted for prototype DFM / assembly review. The current audited Mainboard source supersedes that upload and must be re-exported / re-uploaded before payment.

The current audited hardware source revision **1c3d2e55** passed native KiCad validation with:

- 0 hard DRC violations
- 0 unconnected items
- 0 footprint errors in the final production gate
- BOM / CPL reference match on the Mainboard: **78 / 78 references**

## Board set

| Board | Size | Layers | Thickness |
|---|---:|---:|---:|
| Mainboard | 88 × 48 mm | 4 | 1.6 mm |
| Encoder | 24 × 23 mm | 2 | 1.6 mm |
| Snooze | 26 × 18 mm | 2 | 1.6 mm |
| Wake LED | 78 × 8 mm | 2 | 1.0 mm |

## Mainboard baseline

- FR-4
- ENIG
- 1 oz outer copper
- 1 oz inner copper
- L1: F.Cu
- L2: GND reference
- L3: power / utility distribution
- L4: B.Cu

Rev A does not claim controlled impedance for USB Full-Speed.

## Assembly notes

The first prototype batch is intended for top-side assembly.

Rev A remote-control conditioning is now hardware-defined: 10 kΩ pull-ups on ENC_A / ENC_B / ENC_SW / SNOOZE_SW and 10 nF from SNOOZE_SW to GND. Encoder debounce remains firmware-side.

Functional component substitutions must not be made without review. Critical groups include:

- power-path and regulator ICs
- RTC
- USB protection and connector
- E Ink power / interface components
- service connectors

Exact sourcing constraints and the old PCBWay quotation findings are recorded in `docs/pcbway-sourcing-reva.md`.

The former U6 MAX98357A exposed-pad via-in-pad has been removed. Its exposed pad now connects through solid F.Cu ground to a normal through-via outside the thermal pad, avoiding solder-wicking and special via-fill requirements at U6.

## Manufacturing files

The canonical source of truth is the KiCad data under `hardware/`.

Gerber, drill, placement and release ZIP files should be generated from a validated source revision. Do not manually edit generated fabrication files.
