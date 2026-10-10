# Project status

## Rev A

**Hardware:** an earlier prototype package was submitted for DFM / assembly review, but the audited Mainboard source has since advanced. The current package must replace the earlier PCBWay upload before payment.

### Mainboard

- PCB source: complete for Rev A submission
- native KiCad hard DRC: pass
- unconnected items: 0 at final production gate
- four-layer fabrication package: generated successfully
- BOM / CPL cross-check: pass, **78 / 78 references**
- remote controls: 10 kΩ external pull-ups populated on encoder A/B/SW and Snooze; Snooze also has 10 nF hardware filtering
- MAX98357A exposed-pad via-in-pad removed; EP exits to adjacent GND via outside the pad
- sourcing BOM locked for VEML7700-TR, AO3400A and exact JST/Molex connector MPNs
- physical bring-up: pending fabricated hardware

### Encoder board

- Rev A PCB source complete
- fabrication / assembly package submitted
- physical validation pending

### Snooze board

- Rev A PCB source complete
- fabrication / assembly package submitted
- physical validation pending

### Wake LED board

- Rev A PCB source complete
- LED cathode assembly marker corrected; accidental one-off backside mask opening removed
- current source supersedes the previously submitted fabrication / assembly package and must be re-exported before manufacture
- exact Nichia NFSW757G-V3 2700 K sourcing remains open because PCBWay reported it out of stock
- physical validation pending

## Next milestones

1. Fabricator DFM / sourcing review
2. Rev A fabrication and assembly
3. Power-rail and USB bring-up
4. RTC / sensor / audio validation
5. E Ink power and waveform bring-up
6. Daughterboard validation
7. Wake-light optical test
8. Rev A issue log
9. Rev B decision
