EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Shield-rescue:Conn_01x08-Connector_Generic P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L Shield-rescue:+5V-power #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:GND-power #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:Conn_01x06-Connector_Generic P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:Conn_01x01-Connector_Generic P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Shield-rescue:Conn_01x01-Connector_Generic P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Shield-rescue:Conn_01x01-Connector_Generic P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Shield-rescue:Conn_01x01-Connector_Generic P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Shield-rescue:Conn_01x08-Connector_Generic P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
$Comp
L Shield-rescue:Conn_01x10-Connector_Generic P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10900 1300
Wire Wire Line
	10200 1200 10900 1200
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
Wire Notes Line
	8250 3650 600  3650
Wire Notes Line
	600  3650 600  600 
Wire Notes Line
	8250 600  8250 3650
Wire Notes Line
	600  600  8250 600 
$Comp
L Shield-rescue:R-Device R0
U 1 1 60362378
P 2650 1600
F 0 "R0" H 2720 1646 50  0000 L CNN
F 1 "Rsensor" H 2720 1555 50  0000 L CNN
F 2 "Shield_capteur:Sensor" V 2580 1600 50  0001 C CNN
F 3 "~" H 2650 1600 50  0001 C CNN
	1    2650 1600
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:GND-power #PWR0101
U 1 1 6036A9AF
P 4650 2500
F 0 "#PWR0101" H 4650 2250 50  0001 C CNN
F 1 "GND" H 4655 2327 50  0000 C CNN
F 2 "" H 4650 2500 50  0001 C CNN
F 3 "" H 4650 2500 50  0001 C CNN
	1    4650 2500
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:+5V-power #PWR0102
U 1 1 6036DDF4
P 2650 1200
F 0 "#PWR0102" H 2650 1050 50  0001 C CNN
F 1 "+5V" H 2665 1373 50  0000 C CNN
F 2 "" H 2650 1200 50  0001 C CNN
F 3 "" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1200 2650 1450
$Comp
L Shield-rescue:R-Device R5
U 1 1 603745AD
P 2900 2050
F 0 "R5" V 2693 2050 50  0000 C CNN
F 1 "10K" V 2784 2050 50  0000 C CNN
F 2 "Shield_capteur:Composant" V 2830 2050 50  0001 C CNN
F 3 "~" H 2900 2050 50  0001 C CNN
	1    2900 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1750 2650 2050
Wire Wire Line
	2650 2050 2750 2050
$Comp
L Shield-rescue:C-Device C1
U 1 1 60376679
P 3250 2350
F 0 "C1" H 3365 2396 50  0000 L CNN
F 1 "100N" H 3365 2305 50  0000 L CNN
F 2 "Shield_capteur:Composant" H 3288 2200 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3250 2350
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:R-Device R1
U 1 1 60376DB3
P 3650 2350
F 0 "R1" H 3720 2396 50  0000 L CNN
F 1 "100K" H 3720 2305 50  0000 L CNN
F 2 "Shield_capteur:Composant" V 3580 2350 50  0001 C CNN
F 3 "~" H 3650 2350 50  0001 C CNN
	1    3650 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2200 3250 2050
Wire Wire Line
	3250 2050 3050 2050
Wire Wire Line
	3250 2050 3650 2050
Wire Wire Line
	3650 2050 3650 2200
Connection ~ 3250 2050
Wire Wire Line
	3650 2500 3650 2650
Wire Wire Line
	3650 2650 3250 2650
Wire Wire Line
	3250 2500 3250 2650
$Comp
L Shield-rescue:GND-power #PWR0103
U 1 1 6037B603
P 3250 2750
F 0 "#PWR0103" H 3250 2500 50  0001 C CNN
F 1 "GND" H 3255 2577 50  0000 C CNN
F 2 "" H 3250 2750 50  0001 C CNN
F 3 "" H 3250 2750 50  0001 C CNN
	1    3250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2650 3250 2750
Connection ~ 3250 2650
Connection ~ 3650 2050
$Comp
L Shield-rescue:+5V-power #PWR0104
U 1 1 6038808F
P 4650 1200
F 0 "#PWR0104" H 4650 1050 50  0001 C CNN
F 1 "+5V" H 4665 1373 50  0000 C CNN
F 2 "" H 4650 1200 50  0001 C CNN
F 3 "" H 4650 1200 50  0001 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:C-Device C3
U 1 1 603882F5
P 5100 1500
F 0 "C3" H 5215 1546 50  0000 L CNN
F 1 "100n" H 5215 1455 50  0000 L CNN
F 2 "Shield_capteur:Composant" H 5138 1350 50  0001 C CNN
F 3 "~" H 5100 1500 50  0001 C CNN
	1    5100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1200 4650 1350
Wire Wire Line
	4650 1350 5100 1350
Connection ~ 4650 1350
$Comp
L Shield-rescue:GND-power #PWR0105
U 1 1 60392FE8
P 5100 1650
F 0 "#PWR0105" H 5100 1400 50  0001 C CNN
F 1 "GND" H 5105 1477 50  0000 C CNN
F 2 "" H 5100 1650 50  0001 C CNN
F 3 "" H 5100 1650 50  0001 C CNN
	1    5100 1650
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:GND-power #PWR0106
U 1 1 603A1227
P 6700 2950
F 0 "#PWR0106" H 6700 2700 50  0001 C CNN
F 1 "GND" H 6705 2777 50  0000 C CNN
F 2 "" H 6700 2950 50  0001 C CNN
F 3 "" H 6700 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:R-Device R3
U 1 1 603AB134
P 5500 2500
F 0 "R3" H 5570 2546 50  0000 L CNN
F 1 "100K" H 5570 2455 50  0000 L CNN
F 2 "Shield_capteur:Composant" V 5430 2500 50  0001 C CNN
F 3 "~" H 5500 2500 50  0001 C CNN
	1    5500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2800 5500 2650
Wire Wire Line
	5500 2350 5500 2150
Text GLabel 7100 2150 2    50   Input ~ 0
ADC
$Comp
L Shield-rescue:C-Device C4
U 1 1 603990C3
P 5900 2500
F 0 "C4" H 6015 2546 50  0000 L CNN
F 1 "1µ" H 6015 2455 50  0000 L CNN
F 2 "Shield_capteur:Composant" H 5938 2350 50  0001 C CNN
F 3 "~" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:C-Device C2
U 1 1 6039973D
P 6700 2500
F 0 "C2" H 6815 2546 50  0000 L CNN
F 1 "100N" H 6815 2455 50  0000 L CNN
F 2 "Shield_capteur:Composant" H 6738 2350 50  0001 C CNN
F 3 "~" H 6700 2500 50  0001 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:R-Device R2
U 1 1 60399FBB
P 6300 2800
F 0 "R2" V 6093 2800 50  0000 C CNN
F 1 "1K" V 6184 2800 50  0000 C CNN
F 2 "Shield_capteur:Composant" V 6230 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 2800 6700 2800
Wire Wire Line
	6700 2650 6700 2800
Wire Wire Line
	6150 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2650
Wire Wire Line
	5500 2800 5900 2800
Connection ~ 5900 2800
Wire Wire Line
	6700 2800 6700 2950
Connection ~ 6700 2800
$Comp
L Shield-rescue:R-Device R6
U 1 1 603A6C6B
P 6400 2150
F 0 "R6" V 6193 2150 50  0000 C CNN
F 1 "1k" V 6284 2150 50  0000 C CNN
F 2 "Shield_capteur:Composant" V 6330 2150 50  0001 C CNN
F 3 "~" H 6400 2150 50  0001 C CNN
	1    6400 2150
	0    1    1    0   
$EndComp
$Comp
L shield_capteur:HC05 U3
U 1 1 603C596B
P 3850 4500
F 0 "U3" H 4618 4226 50  0000 L CNN
F 1 "HC05" H 4618 4135 50  0000 L CNN
F 2 "Shield_capteur:Bluetooth" H 3850 4500 50  0001 C CNN
F 3 "" H 3850 4500 50  0001 C CNN
	1    3850 4500
	1    0    0    -1  
$EndComp
Wire Notes Line
	8250 3950 8250 5900
Wire Notes Line
	650  5900 650  3950
Wire Notes Line
	650  3950 8250 3950
Wire Notes Line
	650  5900 8250 5900
$Comp
L shield_capteur:encodeur U4
U 1 1 603D30C3
P 6150 4450
F 0 "U4" H 6528 4151 50  0000 L CNN
F 1 "encodeur" H 6528 4060 50  0000 L CNN
F 2 "Shield_capteur:Encodeur" H 6150 4450 50  0001 C CNN
F 3 "" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
Text GLabel 1650 4650 0    50   Input ~ 0
SDA
Wire Wire Line
	1650 4650 1900 4650
$Comp
L Shield-rescue:+5V-power #PWR0107
U 1 1 603D84FD
P 1200 4350
F 0 "#PWR0107" H 1200 4200 50  0001 C CNN
F 1 "+5V" H 1215 4523 50  0000 C CNN
F 2 "" H 1200 4350 50  0001 C CNN
F 3 "" H 1200 4350 50  0001 C CNN
	1    1200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4850 1200 4350
Wire Wire Line
	1900 4850 1200 4850
Text GLabel 1650 4750 0    50   Input ~ 0
SDK
$Comp
L shield_capteur:OLED U2
U 1 1 603D052A
P 2100 4500
F 0 "U2" H 2478 4226 50  0000 L CNN
F 1 "OLED" H 2478 4135 50  0000 L CNN
F 2 "Shield_capteur:OLED" H 2100 4500 50  0001 C CNN
F 3 "" H 2100 4500 50  0001 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4750 1900 4750
$Comp
L Shield-rescue:GND-power #PWR0108
U 1 1 603E0AFC
P 1750 5150
F 0 "#PWR0108" H 1750 4900 50  0001 C CNN
F 1 "GND" H 1755 4977 50  0000 C CNN
F 2 "" H 1750 5150 50  0001 C CNN
F 3 "" H 1750 5150 50  0001 C CNN
	1    1750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5150 1750 4950
Wire Wire Line
	1750 4950 1900 4950
$Comp
L Shield-rescue:GND-power #PWR0109
U 1 1 603E6344
P 3050 4850
F 0 "#PWR0109" H 3050 4600 50  0001 C CNN
F 1 "GND" H 3055 4677 50  0000 C CNN
F 2 "" H 3050 4850 50  0001 C CNN
F 3 "" H 3050 4850 50  0001 C CNN
	1    3050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4750 3050 4850
$Comp
L Shield-rescue:+5V-power #PWR0110
U 1 1 603E9623
P 3250 4400
F 0 "#PWR0110" H 3250 4250 50  0001 C CNN
F 1 "+5V" H 3265 4573 50  0000 C CNN
F 2 "" H 3250 4400 50  0001 C CNN
F 3 "" H 3250 4400 50  0001 C CNN
	1    3250 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4400 3250 4650
Wire Wire Line
	3250 4650 3550 4650
$Comp
L Shield-rescue:+5V-power #PWR0111
U 1 1 603EFB96
P 5050 4850
F 0 "#PWR0111" H 5050 4700 50  0001 C CNN
F 1 "+5V" H 5065 5023 50  0000 C CNN
F 2 "" H 5050 4850 50  0001 C CNN
F 3 "" H 5050 4850 50  0001 C CNN
	1    5050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4900 5050 4850
$Comp
L Shield-rescue:GND-power #PWR0112
U 1 1 603F3129
P 5750 5150
F 0 "#PWR0112" H 5750 4900 50  0001 C CNN
F 1 "GND" H 5755 4977 50  0000 C CNN
F 2 "" H 5750 5150 50  0001 C CNN
F 3 "" H 5750 5150 50  0001 C CNN
	1    5750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5000 5750 5000
Wire Wire Line
	5750 5000 5750 5150
Text GLabel 10900 1300 2    50   Input ~ 0
SDA
Text GLabel 10900 1200 2    50   Input ~ 0
SDK
Wire Wire Line
	8800 2900 9400 2900
Wire Wire Line
	8800 3000 9400 3000
$Comp
L Shield-rescue:PWR_FLAG-power #FLG0101
U 1 1 604151F9
P 8800 3900
F 0 "#FLG0101" H 8800 3975 50  0001 C CNN
F 1 "PWR_FLAG" H 8800 4073 50  0000 C CNN
F 2 "" H 8800 3900 50  0001 C CNN
F 3 "~" H 8800 3900 50  0001 C CNN
	1    8800 3900
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:PWR_FLAG-power #FLG0102
U 1 1 60415890
P 9300 4100
F 0 "#FLG0102" H 9300 4175 50  0001 C CNN
F 1 "PWR_FLAG" H 9300 4273 50  0000 C CNN
F 2 "" H 9300 4100 50  0001 C CNN
F 3 "~" H 9300 4100 50  0001 C CNN
	1    9300 4100
	-1   0    0    1   
$EndComp
$Comp
L Shield-rescue:GND-power #PWR0113
U 1 1 6041627F
P 8800 4100
F 0 "#PWR0113" H 8800 3850 50  0001 C CNN
F 1 "GND" H 8800 3950 50  0000 C CNN
F 2 "" H 8800 4100 50  0000 C CNN
F 3 "" H 8800 4100 50  0000 C CNN
	1    8800 4100
	1    0    0    -1  
$EndComp
$Comp
L Shield-rescue:+5V-power #PWR0114
U 1 1 60416733
P 9300 3900
F 0 "#PWR0114" H 9300 3750 50  0001 C CNN
F 1 "+5V" H 9315 4073 50  0000 C CNN
F 2 "" H 9300 3900 50  0001 C CNN
F 3 "" H 9300 3900 50  0001 C CNN
	1    9300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4100 9300 3900
Wire Wire Line
	8800 4100 8800 3900
Wire Wire Line
	3400 4950 3550 4950
Text GLabel 3400 4950 0    50   Input ~ 0
TX
Wire Wire Line
	3400 4850 3550 4850
Text GLabel 3400 4850 0    50   Input ~ 0
RX
Wire Wire Line
	3550 4750 3050 4750
Wire Notes Line
	8500 3450 11200 3450
$Comp
L Shield-rescue:GND-power #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1500 10300 3150
Text Label 10550 2100 0    60   ~ 0
8
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	5700 4600 5850 4600
Text GLabel 5700 4600 0    50   Input ~ 0
CLK
Wire Wire Line
	5700 4700 5850 4700
Text GLabel 5700 4700 0    50   Input ~ 0
DATA
Wire Wire Line
	5700 4800 5850 4800
Text GLabel 5700 4800 0    50   Input ~ 0
SWITCH
Wire Wire Line
	5850 4900 5050 4900
Text GLabel 10850 2600 2    50   Input ~ 0
CLK
Text GLabel 10850 2700 2    50   Input ~ 0
DATA
Text GLabel 10850 2800 2    50   Input ~ 0
SWITCH
Wire Wire Line
	10200 2600 10850 2600
Wire Wire Line
	10200 2700 10850 2700
Wire Wire Line
	10200 2800 10850 2800
Text GLabel 11050 1800 2    50   Input ~ 0
TX
Text GLabel 11050 1900 2    50   Input ~ 0
RX
Wire Wire Line
	10200 1800 11050 1800
Wire Wire Line
	10200 1900 11050 1900
Text GLabel 8800 2500 0    50   Input ~ 0
ADC
Wire Wire Line
	8800 2500 9400 2500
NoConn ~ 9350 1450
NoConn ~ 8650 1800
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 3000
NoConn ~ 10550 2900
NoConn ~ 10550 2500
NoConn ~ 10550 2400
NoConn ~ 10550 2300
NoConn ~ 10550 2100
NoConn ~ 10550 2000
NoConn ~ 10550 1700
NoConn ~ 10550 1600
NoConn ~ 10550 1400
NoConn ~ 8950 1450
Wire Wire Line
	5150 2150 5500 2150
Wire Wire Line
	4650 2400 4650 2500
Wire Wire Line
	4200 2250 4300 2250
$Comp
L shield_capteur:LT1050 U1
U 1 1 603685CF
P 4650 1900
F 0 "U1" H 4850 1500 50  0000 C CNN
F 1 "LT1050" H 4850 1400 50  0000 C CNN
F 2 "Shield_capteur:Microcontroler" H 4750 1950 50  0001 C CNN
F 3 "" H 4750 1950 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
NoConn ~ 8800 2900
NoConn ~ 8800 3000
NoConn ~ 9150 1450
Wire Wire Line
	5500 2800 4200 2800
Wire Wire Line
	4200 2800 4200 2250
Connection ~ 5500 2800
Wire Wire Line
	5900 2350 5900 2150
Wire Wire Line
	5900 2150 6250 2150
Wire Wire Line
	5500 2150 5900 2150
Connection ~ 5500 2150
Connection ~ 5900 2150
Wire Wire Line
	7100 2150 6700 2150
Wire Wire Line
	6700 2350 6700 2150
Connection ~ 6700 2150
Wire Wire Line
	6700 2150 6550 2150
Wire Wire Line
	3650 2050 4300 2050
Wire Wire Line
	4650 1350 4650 1900
$EndSCHEMATC
