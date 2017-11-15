EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Components
LIBS:Decoder-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x40_Male J1
U 1 1 59F6FE15
P 11000 2600
F 0 "J1" H 10950 2600 50  0000 C CNN
F 1 "Header" H 11000 500 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x40_Pitch2.54mm" H 11000 2600 50  0001 C CNN
F 3 "" H 11000 2600 50  0001 C CNN
	1    11000 2600
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 59F6FE66
P 10400 700
F 0 "#PWR01" H 10400 550 50  0001 C CNN
F 1 "VCC" H 10400 850 50  0000 C CNN
F 2 "" H 10400 700 50  0001 C CNN
F 3 "" H 10400 700 50  0001 C CNN
	1    10400 700 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59F6FE8C
P 10400 800
F 0 "#PWR02" H 10400 550 50  0001 C CNN
F 1 "GND" H 10400 650 50  0000 C CNN
F 2 "" H 10400 800 50  0001 C CNN
F 3 "" H 10400 800 50  0001 C CNN
	1    10400 800 
	1    0    0    -1  
$EndComp
Text GLabel 10800 1600 0    49   Input ~ 0
A0
Text GLabel 10800 3900 0    49   BiDi ~ 0
D7
Text GLabel 10800 3200 0    49   BiDi ~ 0
D0
Text GLabel 10800 2100 0    49   Input ~ 0
A5
Text GLabel 10800 2200 0    49   Input ~ 0
A6
Text GLabel 10800 2300 0    49   Input ~ 0
A7
Text GLabel 10800 2400 0    49   Input ~ 0
A8
Text GLabel 10800 2500 0    49   Input ~ 0
A9
Text GLabel 10800 2600 0    49   Input ~ 0
A10
Text GLabel 10800 2700 0    49   Input ~ 0
A11
Text GLabel 10800 700  0    49   Input ~ 0
GND
Text GLabel 10800 800  0    49   Input ~ 0
VCC
Text GLabel 10800 1700 0    49   Input ~ 0
A1
Text GLabel 10800 1800 0    49   Input ~ 0
A2
Text GLabel 10800 1900 0    49   Input ~ 0
A3
Text GLabel 10800 2000 0    49   Input ~ 0
A4
Text GLabel 10800 2800 0    49   Input ~ 0
A12
Text GLabel 10800 2900 0    49   Input ~ 0
A13
Text GLabel 10800 3000 0    49   Input ~ 0
A14
Text GLabel 10800 3100 0    49   Input ~ 0
A15
Text GLabel 10800 3300 0    49   BiDi ~ 0
D1
Text GLabel 10800 3400 0    49   BiDi ~ 0
D2
Text GLabel 10800 3500 0    49   BiDi ~ 0
D3
Text GLabel 10800 3600 0    49   BiDi ~ 0
D4
Text GLabel 10800 3700 0    49   BiDi ~ 0
D5
Text GLabel 10800 3800 0    49   BiDi ~ 0
D6
Text GLabel 10800 1400 0    49   Input ~ 0
Φ2
Text GLabel 10800 1300 0    49   Output ~ 0
CLK
Text GLabel 10800 900  0    49   Output ~ 0
~RES
Text GLabel 10800 1000 0    49   Output ~ 0
~RDY
Text GLabel 10800 1100 0    49   Output ~ 0
~IRQ
Text GLabel 10300 800  0    49   Input ~ 0
GND
Text GLabel 10300 700  0    49   Input ~ 0
VCC
Wire Wire Line
	10400 700  10300 700 
Wire Wire Line
	10400 800  10300 800 
Text GLabel 10800 1200 0    49   Output ~ 0
NMI
Text GLabel 10800 1500 0    49   Input ~ 0
R/~W
$Comp
L 74LS139 U1
U 2 1 5A003CC1
P 6000 2700
F 0 "U1" H 6000 2800 50  0000 C CNN
F 1 "74LS139" H 6000 2600 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	2    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L 74LS139 U1
U 1 1 5A003CEE
P 6000 4500
F 0 "U1" H 6000 4600 50  0000 C CNN
F 1 "74LS139" H 6000 4400 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6000 4500 50  0001 C CNN
F 3 "" H 6000 4500 50  0001 C CNN
	1    6000 4500
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U2
U 1 1 5A003D89
P 4700 2950
F 0 "U2" H 4895 3065 50  0000 C CNN
F 1 "74LS04" H 4890 2825 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 4700 2950 50  0001 C CNN
F 3 "" H 4700 2950 50  0001 C CNN
	1    4700 2950
	1    0    0    -1  
$EndComp
Text GLabel 5150 4750 0    49   Input ~ 0
GND
Text GLabel 5150 4400 0    49   Input ~ 0
Φ2
Text GLabel 5150 4250 0    49   Input ~ 0
R/~W
NoConn ~ 6850 4200
NoConn ~ 6850 4600
Text GLabel 6850 4800 2    49   Output ~ 0
OE
Text GLabel 6850 4400 2    49   Output ~ 0
WE
Text GLabel 5150 2600 0    49   Input ~ 0
A13
Text GLabel 5150 2450 0    49   Input ~ 0
A14
Text GLabel 4150 2950 0    49   Input ~ 0
A15
Text GLabel 6850 2400 2    49   Output ~ 0
CS_8000-9FFF
Text GLabel 6850 3000 2    49   Output ~ 0
CS_E000-FFFF
Text GLabel 6850 2800 2    49   Output ~ 0
CS_C000-DFFF
Text GLabel 6850 2600 2    49   Output ~ 0
CS_A000-BFFF
Text GLabel 6850 2200 2    49   Output ~ 0
CS_0000-7FFF
Wire Wire Line
	4250 2950 4250 2200
Wire Wire Line
	4250 2200 6850 2200
Wire Wire Line
	4250 2950 4150 2950
Text GLabel 10800 4000 0    49   Output ~ 0
OE
Text GLabel 10800 4100 0    49   Output ~ 0
WE
Text GLabel 10800 4300 0    49   Output ~ 0
CS_8000-9FFF
Text GLabel 10800 4600 0    49   Output ~ 0
CS_E000-FFFF
Text GLabel 10800 4500 0    49   Output ~ 0
CS_C000-DFFF
Text GLabel 10800 4400 0    49   Output ~ 0
CS_A000-BFFF
Text GLabel 10800 4200 0    49   Output ~ 0
CS_0000-7FFF
$EndSCHEMATC
