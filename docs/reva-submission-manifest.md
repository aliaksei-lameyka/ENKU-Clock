# ENKU Clock Rev A — PCBWay submission manifest

This bundle is the authoritative **prototype submission package** for the source commit recorded at the bottom of the generated copy.

## Order split

| Folder | Board | Manufacturing route | Prototype qty | PCB spec |
|---|---|---|---:|---|
| `01-mainboard-PCBA` | Mainboard | PCBWay PCB + SMT assembly | 5 | 88 × 48 mm, 4-layer, 1.6 mm, ENIG, 1 oz outer/inner |
| `02-encoder-PCBA` | Encoder | PCBWay PCB + SMT assembly | 5 | 24 × 23 mm, 2-layer, 1.6 mm, ENIG |
| `03-snooze-PCBA` | Snooze | PCBWay PCB + SMT assembly | 5 | 26 × 18 mm, 2-layer, 1.6 mm, ENIG |
| `04-wake-led-BARE-PCB` | Wake LED | **Bare PCB only; local assembly** | 5 minimum | 78 × 8 mm, 2-layer, 1.0 mm, ENIG |

If PCBWay's price difference is negligible, ordering 10 bare Wake LED PCBs is acceptable for prototype spares, but the required functional set is five.

## What to upload to PCBWay

### Mainboard

Upload:
- `mainboard-reva-PCBWay-Gerbers.zip`
- `mainboard-reva-bom.csv`
- `mainboard-reva-cpl.csv`

Request **5 assembled boards**, top-side SMT assembly.

This submission **replaces** the old Mainboard inquiry/order package. Do not pay the old quotation without replacing its files and receiving a new sourcing review.

### Encoder

Upload:
- `encoder-board-reva-PCBWay-Gerbers.zip`
- `encoder-board-reva-bom.csv`
- `encoder-board-reva-cpl.csv`

Request **5 assembled boards**.

### Snooze

Upload:
- `snooze-board-reva-PCBWay-Gerbers.zip`
- `snooze-board-reva-bom.csv`
- `snooze-board-reva-cpl.csv`

Request **5 assembled boards**.

### Wake LED

Upload **only**:
- `wake-led-board-reva-BARE-PCB-Gerbers.zip`

Order as **bare PCB, no PCBWay assembly**.

The exact Nichia LEDs are sourced separately and assembled locally. The `local-assembly/` directory contains the BOM, CPL and top-paste Gerber for local stencil/reflow work.

## Mandatory sourcing instructions for PCBWay

PCBWay must provide the new **Actual Purchase Mfg Part #** list before payment.

Critical locks:

- J5: Molex **54550-2472**, 24-pin 0.5 mm TOP-CONTACT. No arbitrary substitute.
- J6 production target: Molex **54550-0672**. Rev A prototype alternate explicitly allowed: genuine Molex **54550-0671**. If neither genuine part is available, **DNP J6** and hand-fit locally.
- U5: Vishay **VEML7700-TR**. Do not silently substitute VEML7700-TT or an unverified -TR1 order code.
- Q_FL / Q2: AOS **AO3400A**. Any suffix/equivalent requires engineering approval.
- J8: JST **SM02B-GHS-TB(LF)(SN)**.
- U6 MAX98357A no longer requires a via-in-pad fill/cap process; the thermal pad exits to an adjacent normal GND via.

See `PCBWAY-SOURCING-GATES.md` for the complete sourcing audit.

## Wake LED local assembly

Exact Rev A LED:
**Nichia NFSW757GT-V3 sm275/P11d21-P12d22/K22-L12/R8000**, 2700 K, CRI80.

For five clocks:
- fitted: 30 LEDs;
- buy: **40 LEDs from one lot**;
- 10 remain as same-bin spares.

Polarity:
- pad 1 = cathode / K / WAKE_LED_RETURN;
- pad 2 = anode / A / resistor / +3V3.

Use controlled solder-paste deposition and a single reflow pass.

## Pre-payment gate

Before paying PCBWay:

1. DFM accepted for all three PCBA boards and the bare Wake LED PCB.
2. PCBWay returns the **new** Mainboard/Encoder/Snooze sourcing list against these exact BOMs.
3. Every substitution is compared against `PCBWAY-SOURCING-GATES.md`.
4. J6 is either exact 54550-0672, approved genuine 54550-0671, or explicitly DNP.
5. No Wake LED PCBA assembly is included in the PCBWay order.
6. Gerber/BOM/CPL files all come from the same generated submission bundle.

## Bring-up note

Physical panel fit remains part of prototype bring-up. The GDEY037T03-FL21 FPC contact-side geometry and the selected Molex 54550-series top-contact connector geometry have been audited and are no longer considered a PCB-release blocker.
