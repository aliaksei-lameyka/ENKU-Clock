EESchema Schematic File Version 4
LIBS:ENKU_Clock
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Snooze daughterboard"
Date "2026-10-05"
Rev "Rev A"
Comp "ENKU"
Comment1 "Clock v0.3"
Comment2 "8-degree ID baseline"
Comment3 ""
Comment4 ""
$EndDescr

$Comp
L ENKU_Clock:TACT_SW SW1
U 1 1 A8000001
P 5400 3400
F 0 "SW1" H 5400 3750 50 0000 C CNN
F 1 "KSC221GLFS" H 5400 3050 50 0000 C CNN
	1    5400 3400
	1 0 0 -1
$EndComp
$Comp
L ENKU_Clock:CONN_3 J1
U 1 1 A8000010
P 2900 3400
F 0 "J1" H 2900 3800 50 0000 C CNN
F 1 "JST-GH 3P" H 2900 3000 50 0000 C CNN
	1    2900 3400
	1 0 0 -1
$EndComp
Wire Wire Line
	2450 3275 2000 3275
Text GLabel 2000 3275 0 50 Input ~ 0
GND
Wire Wire Line
	2450 3400 2000 3400
Text GLabel 2000 3400 0 50 Input ~ 0
SNOOZE_SW
Wire Wire Line
	2450 3525 2000 3525
Text GLabel 2000 3525 0 50 Input ~ 0
GND
Text Notes 1800 5000 0 50 ~ 0
26 x 18 mm target. Mechanical load closes through local top-shell supports, not Mainboard.

Wire Wire Line
	4850 3400 4450 3400
Text GLabel 4450 3400 0 50 Input ~ 0
SNOOZE_SW
Wire Wire Line
	5950 3280 6350 3280
Text GLabel 6350 3280 2 50 Input ~ 0
GND
Text Notes 1800 5200 0 50 ~ 0
PCB-C is deliberately only switch + connector. Pull-up and debounce stay on Mainboard.
$EndSCHEMATC

