# Rev A procurement list — 5 prototype Clocks

Scope: parts and materials required to turn the PCBWay Rev A board set into **five complete ENKU Clock prototypes**.

Planning rule:
- five complete units are the build target;
- buy or prepare **one practical spare** for fragile / failure-prone / supplier-dependent external parts;
- board-side PCBA parts are excluded because they are handled in the PCBWay assembly orders.

## 1. External electronic parts

| Item | Per Clock | Build qty (5) | Recommended order qty | Status | Notes |
|---|---:|---:|---:|---|---|
| Good Display GDEY037T03-FL21, warm frontlight | 1 | 5 | **6** | ORDER | One spare display for FPC/mechanical/bring-up risk |
| PUI Audio AS04004PR-R, 4 Ω / 3 W | 1 | 5 | **6** | ORDER | One spare for acoustic/mechanical testing |
| Protected 605080 3000 mAh 1S LiPo + 10 kΩ NTC | 1 | 5 | **6** | ORDER / VERIFY | Prefer 3-wire JST-PH 2.0 terminated pack |
| Encoder harness, JST-GH 5p | 1 | 5 | **6** | MAKE / ORDER | 70–100 mm target; final length from enclosure |
| Snooze harness, JST-GH 3p | 1 | 5 | **6** | MAKE / ORDER | 60–90 mm target |
| Wake LED harness, JST-GH 2p | 1 | 5 | **6** | MAKE / ORDER | 40–70 mm target |
| Speaker harness, JST-PH 2p | 1 | 5 | **6** | MAKE / ORDER | 60–120 mm target |
| Battery harness, JST-PH 3p | 1 | 5 | **6** | MAY COME WITH BATTERY | Avoid duplicate if battery supplier terminates pack |

### Display purchasing note

Order the **frontlight version** of GDEY037T03-FL21 and explicitly request:
- warm-white frontlight;
- confirmation of frontlight CCT / available warm bin;
- 24-pin FPC contact orientation;
- 6-pin frontlight FPC contact orientation and conductor order.

Do not substitute a non-frontlight GDEY037T03 variant.

## 2. Connector housings and contacts

If harnesses are not purchased pre-crimped, procure:

| Part | Use | Needed contacts/housings for 5 | Recommended order qty |
|---|---|---:|---:|
| JST GHR-05V-S | Encoder harness housing | 5 | **6 housings** |
| JST GHR-03V-S | Snooze harness housing | 5 | **6 housings** |
| JST GHR-02V-S | Wake LED harness housing | 5 | **6 housings** |
| JST PHR-2 | Speaker harness housing | 5 | **6 housings** |
| JST PHR-3 | Battery harness housing | 5 | **6 housings** |
| JST SSHL-002T-P0.2 | GH crimp contacts | 50 total contacts for 5 systems if both ends are crimped | **60–70 contacts** |
| JST SPH-002T-P0.5S | PH crimp contacts | 25 total contacts for 5 systems if both ends are crimped | **30–40 contacts** |

Contact counts depend on whether the remote side is terminated directly to the part, uses a board-side GH/PH connector, or arrives as a vendor harness. Prefer pre-crimped leads for the Rev A build if a reliable source is available.

## 3. 3D-printed parts

| Printed part | Per Clock | Build qty | Recommended print qty | Status |
|---|---:|---:|---:|---|
| Main enclosure set | 1 | 5 | **5 + one service/test shell as needed** | CAD / PRINT |
| Encoder knob | 1 | 5 | **7** | PRINT | Two extra because fit/tolerance tuning is likely |
| Snooze key / cap | 1 | 5 | **7** | PRINT / TUNE | Two extra for travel/feel experiments |
| Internal supports / brackets | as CAD | 5 sets | **5 sets + test pieces** | CAD / PRINT |
| Wake-light diffuser carrier | 1 | 5 | **6** | CAD / PRINT | Diffuser material itself listed separately |

### Encoder knob

The knob is an ENKU-designed **3D-printed part**.

Rev A fit gate:
- shaft fit on ALPS EC11E15244G1;
- no wobble;
- no rubbing against side wall;
- enough pull-off resistance for normal use;
- still removable for service.

Print at least two extra knobs in the first tolerance run.

## 4. Optical / acoustic / mechanical consumables

| Item | Per Clock | Build qty | Recommended order qty | Status |
|---|---:|---:|---:|---|
| Wake-light diffuser material | 1 cut piece | 5 | material for **8–10 pieces** | SELECT |
| Speaker acoustic gasket / foam | 1 | 5 | **6–10** | SELECT |
| Display perimeter foam / protective gasket | 1 | 5 | **6** | SELECT |
| Battery retention foam / removable pad | as needed | 5 | one sheet / roll | SELECT |
| Cable retention clips / printed channels | as CAD | 5 sets | print with enclosure | CAD |

No permanent adhesive should make the battery non-serviceable.

## 5. Fasteners

Exact screw lengths remain dependent on enclosure CAD, but plan around the existing M2 board mounting strategy.

Prototype stock to have on hand:

| Fastener | Suggested prototype stock |
|---|---:|
| M2 machine screws, short lengths around 4/6/8 mm | **20–30 each useful length** |
| M2 washers | **30** |
| M2 nuts | **20** |
| M2 heat-set inserts, if used after shell testing | **20–30** |

Do not bulk-order final screws until enclosure wall/standoff dimensions are frozen.

## 6. Already covered by PCBWay PCBA

Do **not** buy these separately for the five prototype units unless PCBWay flags sourcing problems:

- ESP32-S3 module;
- BQ24074;
- TPS62840;
- RV-3028-C7;
- VEML7700;
- MAX98357A;
- USB-C and USB ESD;
- all Mainboard passives / E Ink booster parts;
- board-side JST/FPC connectors;
- Encoder EC11E15244G1;
- Snooze KSC221GLFS;
- six Nichia 2700 K LEDs per Wake LED board;
- Wake LED resistors;
- all four fabricated/assembled PCB types.

PCBWay sourcing must still be reviewed before payment because the Mainboard BOM may require exact-MPN clarification.

## 7. Bench / bring-up items

Not product BOM, but required to validate Rev A efficiently:

- USB-C data/power cable known to support data;
- current-limited bench supply;
- USB power meter;
- multimeter;
- oscilloscope / logic analyzer where available;
- fine probes / grabbers;
- spare mating JST leads;
- ESD-safe tweezers;
- Kapton tape;
- flux and fine solder for rework;
- small-gauge silicone wire;
- heat-shrink assortment.

## 8. Buy-now vs wait

### Safe to source now

- **6 × GDEY037T03-FL21 warm-frontlight displays**, after supplier confirms exact frontlight option;
- **6 × AS04004PR-R speakers**;
- **6 × 605080-class batteries** only if connector polarity, 10 kΩ NTC and pack dimensions are confirmed;
- small quantities of JST housings/contacts or pre-crimped leads;
- general M2 prototype hardware.

### Wait for enclosure CAD / PCBWay audit

- final harness lengths;
- production battery wire length;
- final fastener lengths;
- diffuser geometry/material cut dimensions;
- enclosure production quantity;
- any PCB parts PCBWay asks to substitute.

## 9. Minimum Rev A completeness check

Before calling one prototype mechanically complete, one full unit must have:

- [ ] Mainboard
- [ ] Encoder board
- [ ] Snooze board
- [ ] Wake LED board
- [ ] GDEY037T03-FL21 warm-frontlight display
- [ ] AS04004PR-R speaker
- [ ] 605080-class battery with NTC
- [ ] all five internal harnesses / mating connections
- [ ] printed enclosure
- [ ] printed encoder knob
- [ ] printed Snooze key
- [ ] wake-light diffuser
- [ ] service fasteners
