EESchema Schematic File Version 4
LIBS:ENKU_Clock
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "ENKU Clock Rev A — Hierarchy"
Date "2026-10-05"
Rev "Rev A"
Comp "ENKU"
Comment1 "Clock v0.3"
Comment2 "8-degree ID baseline"
Comment3 ""
Comment4 ""
$EndDescr

Text Notes 900 650 0 100 ~ 20
ENKU Clock v0.3 — Rev A schematic hierarchy
Text Notes 900 850 0 60 ~ 0
First real schematic-capture pass. Sheets are electrically joined by global net labels.
$Sheet
S 1000 1300 2500 650
U A1000001
F0 "Power & USB" 60
F1 "power_usb.sch" 60
$EndSheet
$Sheet
S 1000 2300 2500 650
U A1000002
F0 "MCU & Debug" 60
F1 "mcu_debug.sch" 60
$EndSheet
$Sheet
S 1000 3300 2500 650
U A1000003
F0 "RTC / Sensors / Inputs" 60
F1 "rtc_inputs.sch" 60
$EndSheet
$Sheet
S 4300 1300 2500 650
U A1000004
F0 "E Ink & Frontlight" 60
F1 "eink.sch" 60
$EndSheet
$Sheet
S 4300 2300 2500 650
U A1000005
F0 "Audio & Wake Light" 60
F1 "audio_light.sch" 60
$EndSheet
$Sheet
S 4300 3300 2500 650
U A1000006
F0 "Encoder daughterboard" 60
F1 "encoder_board.sch" 60
$EndSheet
$Sheet
S 7600 1300 2500 650
U A1000007
F0 "Snooze daughterboard" 60
F1 "snooze_board.sch" 60
$EndSheet
$Sheet
S 7600 2300 2500 650
U A1000008
F0 "Wake LED board" 60
F1 "wake_led_board.sch" 60
$EndSheet
Text Notes 1000 4600 0 55 ~ 0
GLOBAL NETS: GND, SYS_RAW, BAT+, +3V3, USB_D+, USB_D-, I2C_SDA, I2C_SCL,
Text Notes 1000 4750 0 55 ~ 0
RTC_INT, SNOOZE_SW, ENC_A/B/SW, EPD_*, I2S_*, WAKE_LED_PWM, FRONTLIGHT_PWM.
$EndSCHEMATC
