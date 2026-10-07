# Repairability

Repairability is a core ENKU design requirement.

## Hardware strategy

ENKU Clock separates frequently handled or mechanically constrained parts from the Mainboard:

- Encoder board
- Snooze board
- Wake LED board

These modules are connected rather than permanently integrated into one large PCB.

## Serviceability goals

- screws rather than destructive enclosure closure where practical
- replaceable battery
- documented connectors and pin functions
- visible reference designators where board area permits
- polarity / pin-1 markings on critical parts
- accessible debug and production-test points
- independent replacement of controls and lighting modules

## Documentation

As Rev A is physically validated, this repository will add:

- connector pinout tables
- disassembly sequence
- battery replacement procedure
- daughterboard replacement procedure
- known-good electrical measurements
- bring-up and diagnostic steps

Repair documentation should describe actual validated hardware, not assumptions from CAD alone.
