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

- Required family: **Nichia NFSW757G-V3**, 3 x 3 mm.
- Target CCT: **2700 K**.
- For prototypes, a single consistent CRI/rank must be declared across all six LEDs; R8000 or R9050 2700 K are technically available in the Nichia family, but the exact ordered rank must be approved before purchase.
- PCBWay's old quote reported NFSW757G-V3 **out of stock**.
- Do not accept an arbitrary “3030 warm white” replacement. If exact Nichia sourcing is uneconomic, leave D1-D6 DNP and assemble the Wake LED board locally with user-supplied LEDs.

## Items already acceptable in the old quote, subject to re-quote

The old quote showed the intended exact core parts or manufacturer families for ESP32-S3-WROOM-1-N8, BQ24074RGTR, TPS62840DLCR, RV-3028-C7, MAX98357AETE+T, USBLC6-2SC6, SI1308EDL-T1-GE3, the JST GH encoder/snooze connectors, and the quoted Samsung high-voltage capacitor choices.

These are **not blanket approvals**: the new quote must still be compared line-by-line with the current BOM because the Mainboard source and BOM have changed.

## Release rule

Do not pay the current/old PCBWay Mainboard quotation. Upload manufacturing outputs generated from the current green source, request a new Actual Purchase Mfg Part list, and approve substitutions only after this file and the BOM assembly notes agree with PCBWay's proposed exact MPNs.
