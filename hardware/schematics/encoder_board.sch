EESchema Schematic File Version 4
LIBS:ENKU_Clock
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Encoder daughterboard"
Date "2026-10-05"
Rev "Rev A"
Comp "ENKU"
Comment1 "Clock v0.3"
Comment2 "8-degree ID baseline"
Comment3 ""
Comment4 ""
$EndDescr

$Comp
L ENKU_Clock:EC11E SW1
U 1 1 A7000001
P 5200 3400
F 0 "SW1" H 5200 3950 50 0000 C CNN
F 1 "EC11E15244G1" H 5200 2850 50 0000 C CNN
	1    5200 3400
	1 0 0 -1
$EndComp
$Comp
L ENKU_Clock:CONN_5 J1
U 1 1 A7000010
P 2600 3400
F 0 "J1" H 2600 3850 50 0000 C CNN
F 1 "JST-GH 5P" H 2600 2950 50 0000 C CNN
	1    2600 3400
	1 0 0 -1
$EndComp
Wire Wire Line
	2150 3200 1700 3200
Text GLabel 1700 3200 0 50 Input ~ 0
GND
Wire Wire Line
	2150 3300 1700 3300
Text GLabel 1700 3300 0 50 Input ~ 0
ENC_A
Wire Wire Line
	2150 3400 1700 3400
Text GLabel 1700 3400 0 50 Input ~ 0
ENC_B
Wire Wire Line
	2150 3500 1700 3500
Text GLabel 1700 3500 0 50 Input ~ 0
ENC_SW
Wire Wire Line
	2150 3600 1700 3600
Text GLabel 1700 3600 0 50 Input ~ 0
GND
Text Notes 1800 5000 0 50 ~ 0
24 x 20 mm target; encoder shaft perpendicular to right side wall. RC debounce footprints DNP by default.

Wire Wire Line
	4600 3250 4200 3250
Text GLabel 4200 3250 0 50 Input ~ 0
ENC_A
Wire Wire Line
	4600 3400 4200 3400
Text GLabel 4200 3400 0 50 Input ~ 0
GND
Wire Wire Line
	4600 3550 4200 3550
Text GLabel 4200 3550 0 50 Input ~ 0
ENC_B
Wire Wire Line
	5800 3300 6200 3300
Text GLabel 6200 3300 2 50 Input ~ 0
ENC_SW
Wire Wire Line
	5800 3500 6200 3500
Text GLabel 6200 3500 2 50 Input ~ 0
GND
Text Notes 1800 5200 0 50 ~ 0
All debounce/pull-up components remain on Mainboard so PCB-B stays purely mechanical/passive and cheap to replace.
$EndSCHEMATC

