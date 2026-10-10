# Connectors and GPIO

This document captures the Rev A service interfaces and MCU ownership used by the current hardware.

## Internal architecture

The Clock is built around one Mainboard and three daughterboards:

| Interface | Remote module / load | Signals |
|---|---|---|
| Encoder | Encoder board | GND, ENC_A, ENC_B, ENC_SW, GND |
| Snooze | Snooze board | GND, SNOOZE_SW, GND |
| Wake light | Wake LED board | LED+, LED_RETURN_PWM |
| Battery | 1S LiPo pack | BAT+, BAT-, NTC |
| Speaker | speaker | SPK+, SPK- |
| E Ink | display FPC | 24-pin display interface |
| Frontlight | display/frontlight FPC | 6-pin frontlight interface |

Connector reference designators and final mating-part details should be verified against the physical Rev A assembly before a service manual is frozen.

## Encoder connector

Recommended logical order:

1. GND
2. ENC_A
3. ENC_B
4. ENC_SW
5. GND

Grounds on both cable edges are intentional. Pull-ups remain on the Mainboard.

## Snooze connector

1. GND
2. SNOOZE_SW
3. GND

The dual-ground arrangement is intentional.

## Wake-light connector

1. LED+
2. LED_RETURN_PWM

PWM/current switching remains on the Mainboard.

## Battery connector

1. BAT+
2. BAT-
3. NTC

The target battery is a protected 1S LiPo with an integrated NTC where practical.

## Speaker connector

1. SPK+
2. SPK-

A short twisted pair is preferred if the final harness length requires it.

## USB

ESP32-S3 native USB is reserved for:

| Function | GPIO |
|---|---:|
| USB D- | GPIO19 |
| USB D+ | GPIO20 |

GPIO19/20 are not shared with other functions.

## Rev A GPIO map

### Wake and user input

| Function | GPIO |
|---|---:|
| BAT_ADC | GPIO1 |
| BAT_ADC_EN | GPIO2 |
| RTC_INT | GPIO4 |
| SNOOZE_SW | GPIO5 |
| ENC_A | GPIO6 |
| ENC_B | GPIO7 |
| ENC_SW | GPIO8 |

GPIO0 and GPIO3 are deliberately avoided for user controls because of strapping roles.

### I2C

| Function | GPIO |
|---|---:|
| I2C_SDA | GPIO9 |
| I2C_SCL | GPIO10 |

Current shared devices include the RTC and ambient-light sensor.

### E Ink

| Function | GPIO |
|---|---:|
| EPD_SCK | GPIO11 |
| EPD_MOSI | GPIO12 |
| EPD_CS | GPIO13 |
| EPD_DC | GPIO14 |
| EPD_RST | GPIO15 |
| EPD_BUSY | GPIO16 |

### Lighting

| Function | GPIO |
|---|---:|
| WAKE_LED_PWM | GPIO17 |
| FRONTLIGHT_PWM | GPIO18 |

### Audio

| Function | GPIO |
|---|---:|
| I2S_BCLK | GPIO35 |
| I2S_LRCLK | GPIO36 |
| I2S_DOUT | GPIO37 |
| AMP_SD | GPIO38 |

### Charger / power status

| Function | GPIO |
|---|---:|
| CHG_STATUS | GPIO47 |
| POWER_GOOD | GPIO48 |

## Debug interfaces

The Rev A map preserves:

- GPIO39–42 for JTAG/debug
- GPIO43/44 for UART0
- BOOT access on GPIO0
- EN / CHIP_PU reset access

## Wake behavior

Mandatory deep-sleep wake sources:

- RTC_INT
- SNOOZE_SW

Optional:

- ENC_SW

Quadrature rotation itself is not required to wake the device in the first firmware revision.

## Harness rules

- no harness across the ESP32 antenna volume;
- no harness through the encoder shaft sweep;
- speaker wiring should stay away from the encoder bundle where practical;
- wake-light PWM return should not share a long thin return path with encoder signals;
- battery wiring should remain short and mechanically protected.


## Pre-production contact-side gate

- J5 uses Molex 54550-2472. Molex classifies 54550-series **72** tape-pack variants as right-angle ZIF **top-contact** connectors. The GDEY037T03-FL21 panel sample/FPC must be checked physically for exposed-conductor side before assembly release.
- J6 uses Molex 54550-0672, likewise a **top-contact** 0.5 mm ZIF connector. Do not approve an arbitrary substitute; replacement must preserve contact side, 0.5 mm pitch, pin count, pad pattern, insertion direction, actuator envelope, and mating FPC thickness.
- If the production display/frontlight FPC presents contacts on the opposite side, change the connector family or mechanical orientation before PCB release; do not solve this by flipping logical pin numbering.
