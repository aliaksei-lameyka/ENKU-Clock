# Architecture

ENKU Clock Rev A uses a distributed-board architecture.

## Mainboard

The Mainboard contains the system controller and shared power / peripheral functions:

- ESP32-S3-WROOM-1
- USB-C
- battery charging and dynamic power path
- 3.3 V system regulator
- RTC
- ambient-light sensor
- I2S audio amplifier
- E Ink interface and external booster network
- frontlight / wake-light control
- service and daughterboard connectors

The board outline is 88 × 48 mm and uses four copper layers.

## Daughterboards

### Encoder board

A small side-mounted board carrying the physical rotary control interface.

### Snooze board

A dedicated top-button board so the Snooze control can be positioned independently from the Mainboard.

### Wake LED board

A long narrow lighting board used for the warm wake-light. Keeping it separate allows the optical and mechanical design to evolve without redesigning the Mainboard.

## Design principles

The distributed architecture is deliberate:

- controls can be replaced independently;
- connectors can be documented and serviced;
- mechanical placement is not tied to one large rigid PCB;
- lighting can be iterated separately;
- the Mainboard remains accessible for repair and debugging.

## Revision policy

Rev A is the first physical prototype revision. Electrical and mechanical changes after prototype bring-up will be captured as a new revision rather than silently changing released manufacturing data.
