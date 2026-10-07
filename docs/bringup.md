# Rev A bring-up checklist

This checklist is for the first assembled ENKU Clock Rev A hardware.

Do not connect the display, speaker, battery and all daughterboards at once on the first power-up. Bring the system up in controlled stages.

## 0. Before power

- [ ] inspect the board for assembly polarity errors
- [ ] inspect USB-C shell and anchors
- [ ] inspect exposed-pad packages for obvious solder bridges
- [ ] verify no conductive debris is present
- [ ] inspect E Ink FPC connector orientation
- [ ] inspect battery connector polarity against the pack
- [ ] check resistance from +3V3 to GND for an obvious short
- [ ] check resistance from VBUS to GND for an obvious short
- [ ] check resistance from BAT+ to GND for an obvious short

## 1. USB-only power

Use a current-limited USB supply if available.

- [ ] connect USB with battery disconnected
- [ ] observe input current
- [ ] verify VBUS path
- [ ] verify SYS_RAW
- [ ] verify +3V3
- [ ] verify EN / CHIP_PU state
- [ ] check regulator and charger temperatures
- [ ] confirm no unexpected heating

Stop immediately if current is abnormal or any IC heats rapidly.

## 2. MCU and USB

- [ ] confirm ESP32-S3 boots
- [ ] verify UART/debug access
- [ ] verify native USB enumeration
- [ ] verify BOOT / reset access
- [ ] load minimal bring-up firmware

## 3. I2C

With minimal firmware:

- [ ] detect RV-3028-C7
- [ ] detect VEML7700
- [ ] verify RTC interrupt line
- [ ] verify ambient-light readings change with illumination

## 4. Battery and charging

Only after USB-only rails are known good:

- [ ] confirm battery connector polarity again
- [ ] connect protected 1S LiPo
- [ ] verify BAT voltage measurement
- [ ] verify charger state indication
- [ ] verify power-path operation
- [ ] verify USB insertion/removal does not reset unexpectedly
- [ ] confirm charging current and thermal behavior
- [ ] verify NTC behavior if populated

## 5. Physical controls

Connect one daughterboard at a time:

### Encoder
- [ ] ENC_A transitions
- [ ] ENC_B transitions
- [ ] direction decoding
- [ ] push switch
- [ ] no false input during wake-light PWM

### Snooze
- [ ] switch transition
- [ ] deep-sleep wake
- [ ] mechanical force does not flex Mainboard

## 6. Audio

- [ ] enable MAX98357A
- [ ] verify I2S clocks
- [ ] play low-level test tone
- [ ] verify speaker polarity / connector
- [ ] check for digital noise coupling into controls

## 7. Wake light

- [ ] connect Wake LED board
- [ ] start at low PWM duty
- [ ] verify all LED branches
- [ ] check LED polarity and temperature
- [ ] sweep PWM
- [ ] check encoder for PWM-induced false transitions
- [ ] inspect diffuser uniformity in enclosure

## 8. Frontlight

Frontlight conductor order must be confirmed against the actual display sample before full-power testing.

- [ ] verify conductor map
- [ ] start with conservative current
- [ ] verify dimming
- [ ] check thermal behavior

## 9. E Ink

Bring up the E Ink power section only after base rails are stable.

- [ ] inspect HV passives and diode orientation
- [ ] verify display FPC pin 1
- [ ] connect display with power removed
- [ ] verify control signals at logic level
- [ ] enable E Ink power sequence
- [ ] measure expected analog/HV rails
- [ ] check switching components for heating
- [ ] perform first controlled refresh
- [ ] verify BUSY behavior
- [ ] verify power-down sequence

## 10. Sleep / wake

- [ ] RTC wake
- [ ] Snooze wake
- [ ] optional encoder-button wake
- [ ] current measurement in sleep
- [ ] wake-light and frontlight off in sleep
- [ ] no unintended back-power through daughterboards

## 11. Mechanical integration

- [ ] rear USB cutout alignment
- [ ] ESP32 antenna volume remains clear
- [ ] E Ink/frontlight FPC bend radius acceptable
- [ ] all harnesses removable without soldering
- [ ] battery replaceable without removing the display
- [ ] speaker replaceable
- [ ] encoder and Snooze boards independently removable

## 12. Rev A result

Record every issue in the Rev A issue log before changing CAD. Fixes that alter production data should become an explicit new revision or documented Rev A ECO.
