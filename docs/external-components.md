# External components — Rev A prototype

This list covers parts required for a complete ENKU Clock prototype that are **not part of the assembled PCB BOM**.

## Status legend

- **LOCK** — selected for Rev A prototype
- **LOCK / VERIFY** — selected, but physical sample or supplier detail must be verified before production
- **OPEN** — still needs final mechanical/supplier decision

## Core external parts

| Function | Selected part / target | Status | Notes |
|---|---|---|---|
| E Ink display + frontlight | Good Display **GDEY037T03-FL21** | LOCK / VERIFY | 3.7", 416×240, UC8253, 24-pin 0.5 mm E Ink FPC + bonded 6-pin frontlight FPC |
| Display frontlight color | Warm white | LOCK / VERIFY | Specify warm-white option in supplier RFQ; confirm exact CCT/bin on sample |
| Speaker | PUI Audio **AS04004PR-R** | LOCK / VERIFY | 40 mm round, 4 Ω, 3 W rated, 4 W max; acoustic/enclosure test required |
| Battery prototype | YDL **605080 3000 mAh** or equivalent custom pack | LOCK / VERIFY | Protected 1S LiPo, target 3-wire JST-PH 2.0 with 10 kΩ NTC |
| Enclosure | ENKU Clock printed enclosure | OPEN | Final Rev A CAD / fit validation |
| Encoder knob | Custom ENKU 3D-printed knob | LOCK / PRINT | Printed part; must fit EC11E15244G1 shaft and enclosure |
| Snooze key/cap | Custom ENKU top key | OPEN | Mechanical force/travel tuning after prototype |
| Wake-light diffuser | Custom diffuser/light pipe | OPEN | Optical test with six 2700 K LEDs |
| Fasteners | M2 service screws / inserts as required | OPEN | Freeze with enclosure CAD |

## Display

### Selected module

**Good Display GDEY037T03-FL21**

Rev A electrical interface is already designed for this display family.

Key requirements to verify on the physical sample before production:

1. physical confirmation that the production sample matches the currently documented front-side exposed-contact orientation for both FPC tails;
2. frontlight conductor order;
3. warm-white LED option / requested CCT;
4. mechanical outline and FPC exit relative to enclosure CAD.

The bonded frontlight should be purchased as part of the complete display assembly; it is not treated as a separate ENKU-installed optical layer.

## Speaker

### Rev A prototype selection

**PUI Audio AS04004PR-R**

Target characteristics:
- 40 mm diameter
- 4 Ω
- 3 W rated
- 4 W maximum
- approximately 86 dB sensitivity
- approximately 17.5 mm seated height

The Mainboard already includes:
- MAX98357A I²S amplifier;
- SYS_RAW amplifier power;
- J7 2-pin speaker connector;
- SPK+ / SPK- differential output.

The speaker itself is external and therefore does not appear in the Mainboard assembly BOM.

Prototype gate:
- enclosure fit;
- acoustic chamber;
- alarm SPL;
- distortion at useful volume;
- vibration/rattle;
- current consumption.

## Battery

### Rev A prototype target

**605080-class, 3000 mAh, protected 1S LiPo**

Preferred prototype implementation:
- 3.7 V nominal;
- protection PCB;
- 10 kΩ NTC;
- three-wire connection;
- JST-PH 2.0 mating interface;
- target pack envelope around 6 × 50 × 82 mm before service clearance.

Battery polarity must be verified against the actual harness before connection.

## Harnesses and mating connectors

The PCB BOM contains the **board-side connectors**. A complete Clock also needs mating housings, contacts and wire harnesses.

### JST GH — daughterboards

| Harness | Board-side | Mating housing | Circuits |
|---|---|---|---:|
| Encoder | SM05B-GHS-TB | GHR-05V-S | 5 |
| Snooze | SM03B-GHS-TB | GHR-03V-S | 3 |
| Wake LED | SM02B-GHS-TB | GHR-02V-S | 2 |

Crimp contact family: **SSHL-002T-P0.2**.

### JST PH — battery / speaker

| Harness | Board-side | Mating housing | Circuits |
|---|---|---|---:|
| Battery | 3-pin PH header | PHR-3 | 3 |
| Speaker | 2-pin PH header | PHR-2 | 2 |

Crimp contact baseline: **SPH-002T-P0.5S** where wire gauge is compatible.

Final wire gauge, length and pre-crimp supplier should be frozen with enclosure routing.

## Parts already included on PCBs

The following are **not missing external parts** because they are already included in the PCB assembly data:

- ESP32-S3 module
- BQ24074 charger / power path
- TPS62840 regulator
- RV-3028-C7 RTC
- VEML7700 ambient-light sensor
- MAX98357A audio amplifier
- USB-C connector and USB ESD
- E Ink board-side FPC connector
- frontlight board-side FPC connector
- battery / speaker board-side connectors
- encoder / Snooze / Wake LED board-side connectors
- Encoder EC11E15244G1
- Snooze KSC221GLFS
- six Nichia **NFSW757GT-V3 sm275/P11d21-P12d22/K22-L12/R8000** 2700 K CRI80 wake LEDs
- Wake LED current-setting resistors

## Procurement gate before final assembly

Before closing the Rev A prototype kit, confirm that the following physically exist in hand:

- [ ] 1 × GDEY037T03-FL21 per Clock
- [ ] 1 × AS04004PR-R speaker per Clock
- [ ] 1 × protected 605080-class battery with 10 kΩ NTC per Clock
- [ ] Encoder GH 5-pin harness
- [ ] Snooze GH 3-pin harness
- [ ] Wake LED GH 2-pin harness
- [ ] Speaker PH 2-pin harness
- [ ] battery PH 3-pin harness / correctly terminated pack
- [ ] 3D-printed encoder knob
- [ ] Snooze key/cap
- [ ] wake-light diffuser
- [ ] enclosure + service fasteners

## Production note

Rev A external selections are prototype locks, not automatic production locks. Speaker, battery, harness supplier and optical parts must be validated in the assembled enclosure before volume sourcing.


## Wake LED prototype sourcing

Rev A uses the exact Nichia **NFSW757GT-V3 R8000 2700 K** bin recorded in the Wake LED BOM. A current European prototype source is LEDRise/Lumitronix SKU **33465**.

For five clocks:
- fitted quantity: 30 LEDs;
- preferred purchase: **40 LEDs** from one lot;
- sourcing snapshot: EUR 0.17 each, so 40 LEDs are about **EUR 6.80** before shipping/tax.

Because the Wake LED board contains only one JST connector, six resistors and six LEDs, local single-pass reflow of the whole board is preferred over paying a separate PCBA setup merely to work around PCBWay's unavailable Nichia stock. A stencil / controlled paste deposit is preferred to iron-soldering the LEDs.
