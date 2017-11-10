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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IO/65 CPU Module"
Date "2017-10-31"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x40_Male J1
U 1 1 59F6FE15
P 10800 3400
F 0 "J1" H 10750 3400 50  0000 C CNN
F 1 "Header" H 10800 1300 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x40_Pitch2.54mm" H 10800 3400 50  0001 C CNN
F 3 "" H 10800 3400 50  0001 C CNN
	1    10800 3400
	-1   0    0    -1  
$EndComp
Text GLabel 5600 4050 0    49   Output ~ 0
A0
Text GLabel 10600 2400 0    49   Output ~ 0
A0
Text GLabel 6900 4650 2    49   BiDi ~ 0
D7
Text GLabel 10600 4700 0    49   BiDi ~ 0
D7
Text GLabel 6900 3950 2    49   BiDi ~ 0
D0
Text GLabel 10600 4000 0    49   BiDi ~ 0
D0
Text GLabel 6900 4050 2    49   BiDi ~ 0
D1
Text GLabel 6900 4150 2    49   BiDi ~ 0
D2
Text GLabel 6900 4250 2    49   BiDi ~ 0
D3
Text GLabel 6900 4350 2    49   BiDi ~ 0
D4
Text GLabel 6900 4450 2    49   BiDi ~ 0
D5
Text GLabel 6900 4550 2    49   BiDi ~ 0
D6
Text GLabel 6900 4750 2    49   Output ~ 0
A15
Text GLabel 6900 4850 2    49   Output ~ 0
A14
Text GLabel 6900 4950 2    49   Output ~ 0
A13
Text GLabel 6900 5050 2    49   Output ~ 0
A12
Text GLabel 6900 5150 2    49   Input ~ 0
GND
Text GLabel 5600 4150 0    49   Output ~ 0
A1
Text GLabel 5600 4250 0    49   Output ~ 0
A2
Text GLabel 5600 4350 0    49   Output ~ 0
A3
Text GLabel 5600 4450 0    49   Output ~ 0
A4
Text GLabel 10600 2900 0    49   Output ~ 0
A5
Text GLabel 10600 3000 0    49   Output ~ 0
A6
Text GLabel 10600 3100 0    49   Output ~ 0
A7
Text GLabel 10600 3200 0    49   Output ~ 0
A8
Text GLabel 10600 3300 0    49   Output ~ 0
A9
Text GLabel 10600 3400 0    49   Output ~ 0
A10
Text GLabel 10600 3500 0    49   Output ~ 0
A11
Text GLabel 5600 3250 0    49   Input ~ 0
GND
Text GLabel 5150 3350 0    49   Input ~ 0
RDY
Text GLabel 5150 3550 0    49   Input ~ 0
IRQ
Text GLabel 5600 3950 0    49   Input ~ 0
VCC
Text GLabel 7000 3250 2    49   Input ~ 0
RES
Text GLabel 6900 3350 2    49   Output ~ 0
Φ2
Text GLabel 6900 3850 2    49   Output ~ 0
R/W
Text GLabel 10600 1500 0    49   Input ~ 0
GND
Text GLabel 10600 1600 0    49   Input ~ 0
VCC
Text GLabel 10600 2500 0    49   Output ~ 0
A1
Text GLabel 10600 2600 0    49   Output ~ 0
A2
Text GLabel 10600 2700 0    49   Output ~ 0
A3
Text GLabel 10600 2800 0    49   Output ~ 0
A4
Text GLabel 5600 4550 0    49   Output ~ 0
A5
Text GLabel 5600 4650 0    49   Output ~ 0
A6
Text GLabel 5600 4750 0    49   Output ~ 0
A7
Text GLabel 5600 4850 0    49   Output ~ 0
A8
Text GLabel 5600 4950 0    49   Output ~ 0
A9
Text GLabel 5600 5050 0    49   Output ~ 0
A10
Text GLabel 5600 5150 0    49   Output ~ 0
A11
Text GLabel 10600 3600 0    49   Output ~ 0
A12
Text GLabel 10600 3700 0    49   Output ~ 0
A13
Text GLabel 10600 3800 0    49   Output ~ 0
A14
Text GLabel 10600 3900 0    49   Output ~ 0
A15
Text GLabel 10600 4100 0    49   BiDi ~ 0
D1
Text GLabel 10600 4200 0    49   BiDi ~ 0
D2
Text GLabel 10600 4300 0    49   BiDi ~ 0
D3
Text GLabel 10600 4400 0    49   BiDi ~ 0
D4
Text GLabel 10600 4500 0    49   BiDi ~ 0
D5
Text GLabel 10600 4600 0    49   BiDi ~ 0
D6
NoConn ~ 5600 3650
NoConn ~ 5600 3850
NoConn ~ 6900 3750
NoConn ~ 6900 3650
NoConn ~ 6900 3450
$Comp
L GND #PWR01
U 1 1 59F70C7C
P 2100 3350
F 0 "#PWR01" H 2100 3100 50  0001 C CNN
F 1 "GND" H 2100 3200 50  0001 C CNN
F 2 "" H 2100 3350 50  0001 C CNN
F 3 "" H 2100 3350 50  0001 C CNN
	1    2100 3350
	1    0    0    -1  
$EndComp
Text GLabel 10600 2200 0    49   Output ~ 0
Φ2
Text GLabel 1200 3000 2    49   Input ~ 0
CLK
Text GLabel 10600 2100 0    49   Input ~ 0
CLK
Text GLabel 10600 1700 0    49   Input ~ 0
RES
Text GLabel 10600 1800 0    49   Input ~ 0
RDY
Text GLabel 10600 1900 0    49   Input ~ 0
IRQ
Text GLabel 10600 2000 0    49   Input ~ 0
NMI
$Comp
L VCC #PWR02
U 1 1 59F71819
P 4750 2800
F 0 "#PWR02" H 4750 2650 50  0001 C CNN
F 1 "VCC" H 4750 2950 50  0001 C CNN
F 2 "" H 4750 2800 50  0001 C CNN
F 3 "" H 4750 2800 50  0001 C CNN
	1    4750 2800
	1    0    0    -1  
$EndComp
Text GLabel 5600 3450 0    49   Output ~ 0
Φ1
Text GLabel 6900 3550 2    49   Input ~ 0
Φ0
Text GLabel 800  3600 0    49   Input ~ 0
Φ1
Text GLabel 800  3100 0    49   Input ~ 0
Φ0
$Comp
L R_Network08 RN2
U 1 1 59F74D11
P 7350 4400
F 0 "RN2" V 6850 4400 50  0000 C CNN
F 1 "4k7" V 7750 4400 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP9" V 7825 4400 50  0001 C CNN
F 3 "" H 7350 4400 50  0001 C CNN
	1    7350 4400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 59F74FA1
P 7550 4000
F 0 "#PWR03" H 7550 3750 50  0001 C CNN
F 1 "GND" H 7550 3850 50  0001 C CNN
F 2 "" H 7550 4000 50  0001 C CNN
F 3 "" H 7550 4000 50  0001 C CNN
	1    7550 4000
	1    0    0    -1  
$EndComp
$Comp
L R_Network04 RN1
U 1 1 59F7529E
P 4950 3000
F 0 "RN1" V 4650 3000 50  0000 C CNN
F 1 "4k7" V 5150 3000 50  0000 C CNN
F 2 "Resistors_THT:R_Array_SIP5" V 5225 3000 50  0001 C CNN
F 3 "" H 4950 3000 50  0001 C CNN
	1    4950 3000
	0    -1   1    0   
$EndComp
Wire Wire Line
	5200 3100 5150 3100
Wire Wire Line
	5150 3550 5600 3550
Wire Wire Line
	5250 3000 5250 3550
Wire Wire Line
	5250 3000 5150 3000
Wire Wire Line
	5150 3350 5600 3350
Wire Wire Line
	5300 3350 5300 2900
Wire Wire Line
	5300 2900 5150 2900
Wire Wire Line
	5350 3100 5350 2800
Wire Wire Line
	5350 2800 5150 2800
Connection ~ 5300 3350
Connection ~ 5250 3550
Wire Wire Line
	7150 4000 6900 4000
Wire Wire Line
	6900 4000 6900 3950
Wire Wire Line
	7150 4100 6900 4100
Wire Wire Line
	6900 4100 6900 4050
Wire Wire Line
	7150 4200 6900 4200
Wire Wire Line
	6900 4200 6900 4150
Wire Wire Line
	7150 4300 6900 4300
Wire Wire Line
	6900 4300 6900 4250
Wire Wire Line
	7150 4400 6900 4400
Wire Wire Line
	6900 4400 6900 4350
Wire Wire Line
	7150 4500 6900 4500
Wire Wire Line
	6900 4500 6900 4450
Wire Wire Line
	7150 4600 6900 4600
Wire Wire Line
	6900 4600 6900 4550
Wire Wire Line
	7150 4700 6900 4700
Wire Wire Line
	6900 4700 6900 4650
$Comp
L VCC #PWR04
U 1 1 59F85D8F
P 10200 1500
F 0 "#PWR04" H 10200 1350 50  0001 C CNN
F 1 "VCC" H 10200 1650 50  0000 C CNN
F 2 "" H 10200 1500 50  0001 C CNN
F 3 "" H 10200 1500 50  0001 C CNN
	1    10200 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59F85D95
P 10200 1600
F 0 "#PWR05" H 10200 1350 50  0001 C CNN
F 1 "GND" H 10200 1450 50  0000 C CNN
F 2 "" H 10200 1600 50  0001 C CNN
F 3 "" H 10200 1600 50  0001 C CNN
	1    10200 1600
	1    0    0    -1  
$EndComp
Text GLabel 10100 1600 0    49   Input ~ 0
GND
Text GLabel 10100 1500 0    49   Input ~ 0
VCC
Wire Wire Line
	10200 1500 10100 1500
Wire Wire Line
	10200 1600 10100 1600
$Comp
L SW_DPDT_x2 SW1
U 1 1 59F861F5
P 1000 3100
F 0 "SW1" H 1000 3270 50  0000 C CNN
F 1 "Clock Select" H 1000 2900 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 1000 3100 50  0001 C CNN
F 3 "" H 1000 3100 50  0001 C CNN
	1    1000 3100
	1    0    0    1   
$EndComp
$Comp
L SW_DPDT_x2 SW1
U 2 1 59F862BC
P 1000 3600
F 0 "SW1" H 1000 3770 50  0000 C CNN
F 1 "Clock Select" H 1000 3400 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 1000 3600 50  0001 C CNN
F 3 "" H 1000 3600 50  0001 C CNN
	2    1000 3600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59F86311
P 1400 3350
F 0 "R1" V 1480 3350 50  0000 C CNN
F 1 "100k" V 1400 3350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1330 3350 50  0001 C CNN
F 3 "" H 1400 3350 50  0001 C CNN
	1    1400 3350
	-1   0    0    1   
$EndComp
$Comp
L Crystal Y1
U 1 1 59F8636C
P 1600 3350
F 0 "Y1" H 1600 3350 50  0000 C CNN
F 1 "1MHz" H 1600 3500 50  0000 C CNN
F 2 "Crystals:Crystal_HC52-6mm_Vertical" H 1600 3350 50  0001 C CNN
F 3 "" H 1600 3350 50  0001 C CNN
	1    1600 3350
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 59F86433
P 1900 3200
F 0 "C2" H 1910 3270 50  0000 L CNN
F 1 "47pF" H 1910 3120 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C1
U 1 1 59F864CB
P 1900 3500
F 0 "C1" H 1910 3570 50  0000 L CNN
F 1 "47pF" H 1910 3420 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1900 3500 50  0001 C CNN
F 3 "" H 1900 3500 50  0001 C CNN
	1    1900 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3200 1800 3200
Connection ~ 1400 3200
Connection ~ 1600 3200
Wire Wire Line
	1200 3500 1800 3500
Connection ~ 1400 3500
Connection ~ 1600 3500
Wire Wire Line
	2000 3200 2000 3500
Wire Wire Line
	2000 3350 2100 3350
Connection ~ 2000 3350
NoConn ~ 1200 3700
Wire Notes Line
	600  3800 2200 3800
Wire Notes Line
	2200 3800 2200 2900
Wire Notes Line
	2200 2900 600  2900
Wire Notes Line
	600  2900 600  3800
Text Notes 600  2900 0    60   ~ 0
Clock
$Comp
L R R2
U 1 1 59F886FF
P 1450 4100
F 0 "R2" V 1530 4100 50  0000 C CNN
F 1 "4k7" V 1450 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1380 4100 50  0001 C CNN
F 3 "" H 1450 4100 50  0001 C CNN
	1    1450 4100
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 59F88742
P 1450 4300
F 0 "D1" H 1450 4400 50  0000 C CNN
F 1 "1N4148" H 1450 4200 50  0001 C CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1450 4300 50  0001 C CNN
F 3 "" H 1450 4300 50  0001 C CNN
	1    1450 4300
	-1   0    0    1   
$EndComp
$Comp
L CP C3
U 1 1 59F887F4
P 1000 4300
F 0 "C3" H 1025 4400 50  0000 L CNN
F 1 "10μF" H 1025 4200 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D4.0mm_P1.50mm" H 1038 4150 50  0001 C CNN
F 3 "" H 1000 4300 50  0001 C CNN
	1    1000 4300
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 59F88849
P 1000 4100
F 0 "SW2" H 1050 4200 50  0000 L CNN
F 1 "Reset" H 1000 4040 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 1000 4300 50  0001 C CNN
F 3 "" H 1000 4300 50  0001 C CNN
	1    1000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4100 1600 4300
Wire Wire Line
	1250 4100 1250 4450
Wire Wire Line
	1200 4100 1300 4100
Connection ~ 1250 4100
Wire Wire Line
	1150 4300 1300 4300
Connection ~ 1250 4300
Wire Wire Line
	800  4300 850  4300
Wire Wire Line
	800  4100 800  4300
Wire Wire Line
	1700 4200 1600 4200
Connection ~ 1600 4200
$Comp
L VCC #PWR06
U 1 1 59F88E0B
P 1700 4200
F 0 "#PWR06" H 1700 4050 50  0001 C CNN
F 1 "VCC" H 1700 4350 50  0000 C CNN
F 2 "" H 1700 4200 50  0001 C CNN
F 3 "" H 1700 4200 50  0001 C CNN
	1    1700 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59F88F07
P 700 4200
F 0 "#PWR07" H 700 3950 50  0001 C CNN
F 1 "GND" H 700 4050 50  0000 C CNN
F 2 "" H 700 4200 50  0001 C CNN
F 3 "" H 700 4200 50  0001 C CNN
	1    700  4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  4200 800  4200
Connection ~ 800  4200
Wire Notes Line
	600  3950 600  4550
Wire Notes Line
	600  4550 1800 4550
Wire Notes Line
	1800 4550 1800 3950
Wire Notes Line
	1800 3950 600  3950
Text Notes 600  3950 0    60   ~ 0
Reset
Wire Wire Line
	6900 3100 5350 3100
Wire Wire Line
	6900 3250 6900 3100
Text GLabel 1550 4450 2    49   Output ~ 0
RES
Wire Wire Line
	1250 4450 1550 4450
$Comp
L WD65C02 U1
U 1 1 59F95DF6
P 6250 4150
F 0 "U1" H 6250 3000 60  0000 C CNN
F 1 "65C02" V 6250 4050 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm" H 5750 4350 60  0001 C CNN
F 3 "" H 5750 4350 60  0000 C CNN
	1    6250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3750 5600 3750
Wire Wire Line
	5200 3750 5200 3100
Wire Wire Line
	7000 3250 6900 3250
Connection ~ 6900 3250
Text GLabel 5150 3750 0    49   Input ~ 0
NMI
Connection ~ 5200 3750
Text GLabel 10600 2300 0    49   Output ~ 0
R/W
NoConn ~ 10600 4800
NoConn ~ 10600 4900
NoConn ~ 10600 5000
NoConn ~ 10600 5100
NoConn ~ 10600 5200
NoConn ~ 10600 5300
NoConn ~ 10600 5400
$EndSCHEMATC
