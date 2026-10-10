# PCBWay sourcing audit — Rev A

This file records sourcing decisions that must be checked against PCBWay's **new** quotation before payment. The October 10, 2026 quotations were generated from older Rev A files and are not release authority for the current hardware.

## Old quotation references

| Board | PCBWay product / inquiry | Result from old quote |
|---|---|---|
| Mainboard | T-1M2W1167728A | Questions present; BOM is now stale and must be replaced |
| Encoder | T-2Y4W1167728A | Exact EC11E15244G1 and JST SM05B-GHS-TB(LF)(SN) appeared; no unresolved question found |
| Snooze | T-2Y6W1167728A | Exact KSC221GLFS and JST SM03B-GHS-TB(LF)(SN) appeared; no unresolved question found |
| Wake LED | T-2Y8W1167728A | Nichia NFSW757G-V3 reported out of stock |

## Hard sourcing gates

### J5 — display FPC

- Required: **Molex 54550-2472**
- 24 circuits, 0.5 mm pitch, 1.2 mm height, right-angle SMT ZIF, **TOP CONTACT**
- Do not substitute a 54548-series or bottom-contact connector.
- Any alternate manufacturer must be approved against contact side, pad pattern, FPC thickness, insertion direction, actuator envelope and pin-1 orientation.

### J6 — frontlight FPC

- Required: **Molex 54550-0672**
- 6 circuits, 0.5 mm pitch, 1.2 mm height, right-angle SMT ZIF, **TOP CONTACT**
- PCBWay's old quote explicitly reported this part **out of stock**.
- **Rev A prototype alternate approved:** genuine **Molex 54550-0671**. It is obsolete for new production, but it has the same 6-position / 0.5 mm / 1.2 mm / right-angle / top-contact interface and the same recommended PCB land pattern; Molex/DigiKey list 54550-0672 as the manufacturer-recommended replacement for 54550-0671.
- Production remains locked to **54550-0672**.
- If PCBWay cannot source either genuine Molex part, populate J6 as **DNP** and hand-fit a genuine 54550-0671 or 54550-0672 locally.
- Do **not** accept Würth 687106149022 as a drop-in: despite being surfaced by some distributor substitution tools, it is bottom-contact and 2.2 mm high.
- No other substitute is approved.

### J8 — Wake LED harness

- Required: **JST SM02B-GHS-TB(LF)(SN)**
- PCBWay's old Mainboard quote asked for an exact part number / component URL. The BOM now carries the exact JST MPN.
- The Wake LED daughterboard uses the same connector family/order and must remain a 1:1 harness.

### U5 — ambient-light sensor

- Required: **Vishay VEML7700-TR**
- The Rev A mechanical implementation uses the side-view VEML7700 package.
- PCBWay's old quote contained a `VEML7700-TR1` string. That suffix is **not approved** for Rev A unless PCBWay provides a manufacturer datasheet/order-code trace proving equivalence.
- `VEML7700-TT` is the top-view variant and is not an approved mechanical substitute.

### Q_FL / Q2 — lighting MOSFETs

- Required prototype part: **Alpha & Omega Semiconductor AO3400A**
- SOT-23, 30 V N-channel MOSFET; current PCB pinout assumes the AO3400A pinout.
- PCBWay's old quote contained an `AO3400AQ` string. Do not approve that string or another suffix/equivalent without the exact manufacturer, datasheet, pinout and low-VGS RDS(on) review.

### Wake LED D1-D6

- Rev A prototype is now locked to **Nichia NFSW757GT-V3 sm275/P11d21-P12d22/K22-L12/R8000**, 2700 K, CRI80, 3 x 3 x 0.65 mm.
- Distributor reference: **LEDRise SKU 33465**. The sourcing snapshot used for this lock showed stock in Germany (>1000 pcs) at EUR 0.17 each through the official Nichia distribution channel; availability and price must be rechecked at purchase time.
- PCBWay's old quote reported generic NFSW757G-V3 **out of stock**, therefore PCBWay should not substitute the LED.
- Preferred Rev A build method: order Wake LED PCBs bare (or DNP D1-D6) and fit the exact Nichia LEDs locally. For a five-clock batch, 30 LEDs are required; **40 pcs** is the preferred prototype buy to keep 10 spares from the same lot.
- Nichia **NFSW757G-P5V1** is a current recommended 757-series device and has the same nominal package size / recommended land-pattern dimensions, but its datasheet uses a different cathode-orientation rule from the V3 datasheet. It is therefore **not approved as a blind drop-in** on the Rev A footprint; using it requires a deliberate footprint/polarity ECO and validation.
- Nichia NFSW757G-V3 (Rs030) keeps the V3 package family but has substantially lower luminous flux and a special-color-rendering spectrum, so it is not the preferred Wake-light prototype part.
- Do not accept an arbitrary “3030 warm white” replacement.

## Items already acceptable in the old quote, subject to re-quote

The old quote showed the intended exact core parts or manufacturer families for ESP32-S3-WROOM-1-N8, BQ24074RGTR, TPS62840DLCR, RV-3028-C7, MAX98357AETE+T, USBLC6-2SC6, SI1308EDL-T1-GE3, the JST GH encoder/snooze connectors, and the quoted Samsung high-voltage capacitor choices.

These are **not blanket approvals**: the new quote must still be compared line-by-line with the current BOM because the Mainboard source and BOM have changed.

## Release rule

Do not pay the current/old PCBWay Mainboard quotation. Upload manufacturing outputs generated from the current green source, request a new Actual Purchase Mfg Part list, and approve substitutions only after this file and the BOM assembly notes agree with PCBWay's proposed exact MPNs.
