EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
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
L Amplifier_Operational:OPA4340UA U?
U 1 1 637FA2FF
P 4150 2950
AR Path="/637FA2FF" Ref="U?"  Part="1" 
AR Path="/637BA1B6/637FA2FF" Ref="U10"  Part="1" 
AR Path="/638C9E00/637FA2FF" Ref="U?"  Part="1" 
AR Path="/638CB94F/637FA2FF" Ref="U?"  Part="1" 
F 0 "U10" H 4150 3317 50  0000 C CNN
F 1 "OPA4340UA" H 4150 3226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4100 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 4200 3150 50  0001 C CNN
	1    4150 2950
	1    0    0    1   
$EndComp
$Comp
L Device:D_Photo D?
U 1 1 637FA305
P 7700 4500
AR Path="/637FA305" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA305" Ref="D13"  Part="1" 
AR Path="/638C9E00/637FA305" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA305" Ref="D?"  Part="1" 
F 0 "D13" V 7604 4657 50  0000 L CNN
F 1 "D_Photo" V 7695 4657 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7650 4500 50  0001 C CNN
F 3 "~" H 7650 4500 50  0001 C CNN
	1    7700 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637FA30B
P 3250 3150
AR Path="/637FA30B" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA30B" Ref="#PWR084"  Part="1" 
AR Path="/638C9E00/637FA30B" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA30B" Ref="#PWR?"  Part="1" 
F 0 "#PWR084" H 3250 2900 50  0001 C CNN
F 1 "GND" H 3255 2977 50  0000 C CNN
F 2 "" H 3250 3150 50  0001 C CNN
F 3 "" H 3250 3150 50  0001 C CNN
	1    3250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2850 3850 2850
$Comp
L Device:R R?
U 1 1 637FA312
P 4000 2600
AR Path="/637FA312" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA312" Ref="R25"  Part="1" 
AR Path="/638C9E00/637FA312" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA312" Ref="R?"  Part="1" 
F 0 "R25" V 3793 2600 50  0000 C CNN
F 1 "220K" V 3884 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3930 2600 50  0001 C CNN
F 3 "~" H 4000 2600 50  0001 C CNN
	1    4000 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA318
P 4000 2250
AR Path="/637FA318" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA318" Ref="C36"  Part="1" 
AR Path="/638C9E00/637FA318" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA318" Ref="C?"  Part="1" 
F 0 "C36" V 3748 2250 50  0000 C CNN
F 1 "6pF" V 3839 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4038 2100 50  0001 C CNN
F 3 "~" H 4000 2250 50  0001 C CNN
	1    4000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 2250 3850 2600
Connection ~ 3850 2600
Wire Wire Line
	3850 2600 3850 2850
Wire Wire Line
	4150 2250 4150 2600
Wire Wire Line
	4150 2600 4450 2600
Wire Wire Line
	4450 2600 4450 2950
Connection ~ 4150 2600
$Comp
L Amplifier_Operational:OPA4340UA U?
U 5 1 637FA325
P 10100 2900
AR Path="/637FA325" Ref="U?"  Part="5" 
AR Path="/637BA1B6/637FA325" Ref="U10"  Part="5" 
AR Path="/638C9E00/637FA325" Ref="U?"  Part="5" 
AR Path="/638CB94F/637FA325" Ref="U?"  Part="5" 
F 0 "U10" H 10058 2946 50  0000 L CNN
F 1 "OPA4340UA" H 10058 2855 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10050 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 10150 3100 50  0001 C CNN
	5    10100 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA4340UA U?
U 2 1 637FA32B
P 5650 2950
AR Path="/637FA32B" Ref="U?"  Part="2" 
AR Path="/637BA1B6/637FA32B" Ref="U10"  Part="2" 
AR Path="/638C9E00/637FA32B" Ref="U?"  Part="2" 
AR Path="/638CB94F/637FA32B" Ref="U?"  Part="2" 
F 0 "U10" H 5650 3317 50  0000 C CNN
F 1 "OPA4340UA" H 5650 3226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5600 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 5700 3150 50  0001 C CNN
	2    5650 2950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA4340UA U?
U 3 1 637FA331
P 7150 2950
AR Path="/637FA331" Ref="U?"  Part="3" 
AR Path="/637BA1B6/637FA331" Ref="U10"  Part="3" 
AR Path="/638C9E00/637FA331" Ref="U?"  Part="3" 
AR Path="/638CB94F/637FA331" Ref="U?"  Part="3" 
F 0 "U10" H 7150 3317 50  0000 C CNN
F 1 "OPA4340UA" H 7150 3226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7100 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 7200 3150 50  0001 C CNN
	3    7150 2950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA4340UA U?
U 4 1 637FA337
P 8650 2950
AR Path="/637FA337" Ref="U?"  Part="4" 
AR Path="/637BA1B6/637FA337" Ref="U10"  Part="4" 
AR Path="/638C9E00/637FA337" Ref="U?"  Part="4" 
AR Path="/638CB94F/637FA337" Ref="U?"  Part="4" 
F 0 "U10" H 8650 3317 50  0000 C CNN
F 1 "OPA4340UA" H 8650 3226 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8600 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 8700 3150 50  0001 C CNN
	4    8650 2950
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 637FA33D
P 5500 2600
AR Path="/637FA33D" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA33D" Ref="R27"  Part="1" 
AR Path="/638C9E00/637FA33D" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA33D" Ref="R?"  Part="1" 
F 0 "R27" V 5293 2600 50  0000 C CNN
F 1 "220K" V 5384 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5430 2600 50  0001 C CNN
F 3 "~" H 5500 2600 50  0001 C CNN
	1    5500 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA343
P 5500 2250
AR Path="/637FA343" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA343" Ref="C38"  Part="1" 
AR Path="/638C9E00/637FA343" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA343" Ref="C?"  Part="1" 
F 0 "C38" V 5248 2250 50  0000 C CNN
F 1 "6pF" V 5339 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5538 2100 50  0001 C CNN
F 3 "~" H 5500 2250 50  0001 C CNN
	1    5500 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2250 5350 2600
Connection ~ 5350 2600
Wire Wire Line
	5350 2600 5350 2850
Wire Wire Line
	5650 2250 5650 2600
Wire Wire Line
	5650 2600 5950 2600
Wire Wire Line
	5950 2600 5950 2950
Connection ~ 5650 2600
Connection ~ 5350 2850
Connection ~ 3850 2850
$Comp
L Device:D_Photo D?
U 1 1 637FA352
P 6200 4500
AR Path="/637FA352" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA352" Ref="D11"  Part="1" 
AR Path="/638C9E00/637FA352" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA352" Ref="D?"  Part="1" 
F 0 "D11" V 6104 4657 50  0000 L CNN
F 1 "D_Photo" V 6195 4657 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6150 4500 50  0001 C CNN
F 3 "~" H 6150 4500 50  0001 C CNN
	1    6200 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637FA358
P 6250 3150
AR Path="/637FA358" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA358" Ref="#PWR088"  Part="1" 
AR Path="/638C9E00/637FA358" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA358" Ref="#PWR?"  Part="1" 
F 0 "#PWR088" H 6250 2900 50  0001 C CNN
F 1 "GND" H 6255 2977 50  0000 C CNN
F 2 "" H 6250 3150 50  0001 C CNN
F 3 "" H 6250 3150 50  0001 C CNN
	1    6250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2850 6850 2850
$Comp
L Device:R R?
U 1 1 637FA35F
P 7000 2600
AR Path="/637FA35F" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA35F" Ref="R29"  Part="1" 
AR Path="/638C9E00/637FA35F" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA35F" Ref="R?"  Part="1" 
F 0 "R29" V 6793 2600 50  0000 C CNN
F 1 "220K" V 6884 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6930 2600 50  0001 C CNN
F 3 "~" H 7000 2600 50  0001 C CNN
	1    7000 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA365
P 7000 2250
AR Path="/637FA365" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA365" Ref="C40"  Part="1" 
AR Path="/638C9E00/637FA365" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA365" Ref="C?"  Part="1" 
F 0 "C40" V 6748 2250 50  0000 C CNN
F 1 "6pF" V 6839 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7038 2100 50  0001 C CNN
F 3 "~" H 7000 2250 50  0001 C CNN
	1    7000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2250 6850 2600
Connection ~ 6850 2600
Wire Wire Line
	6850 2600 6850 2850
Wire Wire Line
	7150 2250 7150 2600
Wire Wire Line
	7150 2600 7450 2600
Wire Wire Line
	7450 2600 7450 2950
Connection ~ 7150 2600
Connection ~ 6850 2850
Wire Wire Line
	7750 2850 8350 2850
$Comp
L Device:R R?
U 1 1 637FA37A
P 8500 2600
AR Path="/637FA37A" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA37A" Ref="R31"  Part="1" 
AR Path="/638C9E00/637FA37A" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA37A" Ref="R?"  Part="1" 
F 0 "R31" V 8293 2600 50  0000 C CNN
F 1 "220K" V 8384 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8430 2600 50  0001 C CNN
F 3 "~" H 8500 2600 50  0001 C CNN
	1    8500 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA380
P 8500 2250
AR Path="/637FA380" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA380" Ref="C42"  Part="1" 
AR Path="/638C9E00/637FA380" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA380" Ref="C?"  Part="1" 
F 0 "C42" V 8248 2250 50  0000 C CNN
F 1 "6pF" V 8339 2250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8538 2100 50  0001 C CNN
F 3 "~" H 8500 2250 50  0001 C CNN
	1    8500 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 2250 8350 2600
Connection ~ 8350 2600
Wire Wire Line
	8350 2600 8350 2850
Wire Wire Line
	8650 2250 8650 2600
Wire Wire Line
	8650 2600 8950 2600
Wire Wire Line
	8950 2600 8950 2950
Connection ~ 8650 2600
Connection ~ 8350 2850
$Comp
L Device:C C?
U 1 1 637FA38E
P 9700 2900
AR Path="/637FA38E" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA38E" Ref="C44"  Part="1" 
AR Path="/638C9E00/637FA38E" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA38E" Ref="C?"  Part="1" 
F 0 "C44" H 9815 2946 50  0000 L CNN
F 1 "1uF" H 9815 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9738 2750 50  0001 C CNN
F 3 "~" H 9700 2900 50  0001 C CNN
	1    9700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2600 9700 2600
Wire Wire Line
	9700 2600 9700 2750
Wire Wire Line
	9700 3050 9700 3200
Wire Wire Line
	9700 3200 10000 3200
$Comp
L power:GND #PWR?
U 1 1 637FA398
P 10000 3200
AR Path="/637FA398" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA398" Ref="#PWR094"  Part="1" 
AR Path="/638C9E00/637FA398" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA398" Ref="#PWR?"  Part="1" 
F 0 "#PWR094" H 10000 2950 50  0001 C CNN
F 1 "GND" H 10005 3027 50  0000 C CNN
F 2 "" H 10000 3200 50  0001 C CNN
F 3 "" H 10000 3200 50  0001 C CNN
	1    10000 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Photo D?
U 1 1 637FA39E
P 3250 3050
AR Path="/637FA39E" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA39E" Ref="D8"  Part="1" 
AR Path="/638C9E00/637FA39E" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA39E" Ref="D?"  Part="1" 
F 0 "D8" V 3154 3207 50  0000 L CNN
F 1 "D_Photo" V 3245 3207 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3200 3050 50  0001 C CNN
F 3 "~" H 3200 3050 50  0001 C CNN
	1    3250 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637FA3A4
P 3200 4600
AR Path="/637FA3A4" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA3A4" Ref="#PWR083"  Part="1" 
AR Path="/638C9E00/637FA3A4" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA3A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR083" H 3200 4350 50  0001 C CNN
F 1 "GND" H 3205 4427 50  0000 C CNN
F 2 "" H 3200 4600 50  0001 C CNN
F 3 "" H 3200 4600 50  0001 C CNN
	1    3200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4300 3800 4300
$Comp
L Device:C C?
U 1 1 637FA3AB
P 3950 3700
AR Path="/637FA3AB" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA3AB" Ref="C35"  Part="1" 
AR Path="/638C9E00/637FA3AB" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA3AB" Ref="C?"  Part="1" 
F 0 "C35" V 3698 3700 50  0000 C CNN
F 1 "6pF" V 3789 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3988 3550 50  0001 C CNN
F 3 "~" H 3950 3700 50  0001 C CNN
	1    3950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3700 4100 4050
Wire Wire Line
	4100 4050 4400 4050
Wire Wire Line
	4400 4050 4400 4400
$Comp
L Amplifier_Operational:OPA4340UA U?
U 5 1 637FA3B4
P 10050 4350
AR Path="/637FA3B4" Ref="U?"  Part="5" 
AR Path="/637BA1B6/637FA3B4" Ref="U9"  Part="5" 
AR Path="/638C9E00/637FA3B4" Ref="U?"  Part="5" 
AR Path="/638CB94F/637FA3B4" Ref="U?"  Part="5" 
F 0 "U9" H 10008 4396 50  0000 L CNN
F 1 "OPA4340UA" H 10008 4305 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10000 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 10100 4550 50  0001 C CNN
	5    10050 4350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:OPA4340UA U?
U 2 1 637FA3BA
P 5600 4400
AR Path="/637FA3BA" Ref="U?"  Part="2" 
AR Path="/637BA1B6/637FA3BA" Ref="U9"  Part="2" 
AR Path="/638C9E00/637FA3BA" Ref="U?"  Part="2" 
AR Path="/638CB94F/637FA3BA" Ref="U?"  Part="2" 
F 0 "U9" H 5600 4767 50  0000 C CNN
F 1 "OPA4340UA" H 5600 4676 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5550 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 5650 4600 50  0001 C CNN
	2    5600 4400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA4340UA U?
U 3 1 637FA3C0
P 7100 4400
AR Path="/637FA3C0" Ref="U?"  Part="3" 
AR Path="/637BA1B6/637FA3C0" Ref="U9"  Part="3" 
AR Path="/638C9E00/637FA3C0" Ref="U?"  Part="3" 
AR Path="/638CB94F/637FA3C0" Ref="U?"  Part="3" 
F 0 "U9" H 7100 4767 50  0000 C CNN
F 1 "OPA4340UA" H 7100 4676 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7050 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 7150 4600 50  0001 C CNN
	3    7100 4400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:OPA4340UA U?
U 4 1 637FA3C6
P 8600 4400
AR Path="/637FA3C6" Ref="U?"  Part="4" 
AR Path="/637BA1B6/637FA3C6" Ref="U9"  Part="4" 
AR Path="/638C9E00/637FA3C6" Ref="U?"  Part="4" 
AR Path="/638CB94F/637FA3C6" Ref="U?"  Part="4" 
F 0 "U9" H 8600 4767 50  0000 C CNN
F 1 "OPA4340UA" H 8600 4676 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8550 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 8650 4600 50  0001 C CNN
	4    8600 4400
	1    0    0    1   
$EndComp
$Comp
L Device:D_Photo D?
U 1 1 637FA3CC
P 6250 3050
AR Path="/637FA3CC" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA3CC" Ref="D12"  Part="1" 
AR Path="/638C9E00/637FA3CC" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA3CC" Ref="D?"  Part="1" 
F 0 "D12" V 6154 3207 50  0000 L CNN
F 1 "D_Photo" V 6245 3207 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6200 3050 50  0001 C CNN
F 3 "~" H 6200 3050 50  0001 C CNN
	1    6250 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637FA3D2
P 4700 4600
AR Path="/637FA3D2" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA3D2" Ref="#PWR085"  Part="1" 
AR Path="/638C9E00/637FA3D2" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA3D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR085" H 4700 4350 50  0001 C CNN
F 1 "GND" H 4705 4427 50  0000 C CNN
F 2 "" H 4700 4600 50  0001 C CNN
F 3 "" H 4700 4600 50  0001 C CNN
	1    4700 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4300 5300 4300
$Comp
L Device:R R?
U 1 1 637FA3D9
P 5450 4050
AR Path="/637FA3D9" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA3D9" Ref="R26"  Part="1" 
AR Path="/638C9E00/637FA3D9" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA3D9" Ref="R?"  Part="1" 
F 0 "R26" V 5243 4050 50  0000 C CNN
F 1 "220K" V 5334 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5380 4050 50  0001 C CNN
F 3 "~" H 5450 4050 50  0001 C CNN
	1    5450 4050
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA3DF
P 5450 3700
AR Path="/637FA3DF" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA3DF" Ref="C37"  Part="1" 
AR Path="/638C9E00/637FA3DF" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA3DF" Ref="C?"  Part="1" 
F 0 "C37" V 5198 3700 50  0000 C CNN
F 1 "6pF" V 5289 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5488 3550 50  0001 C CNN
F 3 "~" H 5450 3700 50  0001 C CNN
	1    5450 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 3700 5300 4050
Connection ~ 5300 4050
Wire Wire Line
	5300 4050 5300 4300
Wire Wire Line
	5600 3700 5600 4050
Wire Wire Line
	5600 4050 5900 4050
Wire Wire Line
	5900 4050 5900 4400
Connection ~ 5600 4050
Connection ~ 5300 4300
$Comp
L Device:D_Photo D?
U 1 1 637FA3ED
P 7750 3050
AR Path="/637FA3ED" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA3ED" Ref="D14"  Part="1" 
AR Path="/638C9E00/637FA3ED" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA3ED" Ref="D?"  Part="1" 
F 0 "D14" V 7654 3207 50  0000 L CNN
F 1 "D_Photo" V 7745 3207 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7700 3050 50  0001 C CNN
F 3 "~" H 7700 3050 50  0001 C CNN
	1    7750 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637FA3F3
P 6200 4600
AR Path="/637FA3F3" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA3F3" Ref="#PWR087"  Part="1" 
AR Path="/638C9E00/637FA3F3" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA3F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR087" H 6200 4350 50  0001 C CNN
F 1 "GND" H 6205 4427 50  0000 C CNN
F 2 "" H 6200 4600 50  0001 C CNN
F 3 "" H 6200 4600 50  0001 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4300 6800 4300
$Comp
L Device:R R?
U 1 1 637FA3FA
P 6950 4050
AR Path="/637FA3FA" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA3FA" Ref="R28"  Part="1" 
AR Path="/638C9E00/637FA3FA" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA3FA" Ref="R?"  Part="1" 
F 0 "R28" V 6743 4050 50  0000 C CNN
F 1 "220K" V 6834 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6880 4050 50  0001 C CNN
F 3 "~" H 6950 4050 50  0001 C CNN
	1    6950 4050
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA400
P 6950 3700
AR Path="/637FA400" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA400" Ref="C39"  Part="1" 
AR Path="/638C9E00/637FA400" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA400" Ref="C?"  Part="1" 
F 0 "C39" V 6698 3700 50  0000 C CNN
F 1 "6pF" V 6789 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6988 3550 50  0001 C CNN
F 3 "~" H 6950 3700 50  0001 C CNN
	1    6950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3700 6800 4050
Connection ~ 6800 4050
Wire Wire Line
	6800 4050 6800 4300
Wire Wire Line
	7100 3700 7100 4050
Wire Wire Line
	7100 4050 7400 4050
Wire Wire Line
	7400 4050 7400 4400
Connection ~ 7100 4050
Connection ~ 6800 4300
Wire Wire Line
	7700 4300 8300 4300
$Comp
L Device:R R?
U 1 1 637FA415
P 8450 4050
AR Path="/637FA415" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA415" Ref="R30"  Part="1" 
AR Path="/638C9E00/637FA415" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA415" Ref="R?"  Part="1" 
F 0 "R30" V 8243 4050 50  0000 C CNN
F 1 "220K" V 8334 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8380 4050 50  0001 C CNN
F 3 "~" H 8450 4050 50  0001 C CNN
	1    8450 4050
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 637FA41B
P 8450 3700
AR Path="/637FA41B" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA41B" Ref="C41"  Part="1" 
AR Path="/638C9E00/637FA41B" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA41B" Ref="C?"  Part="1" 
F 0 "C41" V 8198 3700 50  0000 C CNN
F 1 "6pF" V 8289 3700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8488 3550 50  0001 C CNN
F 3 "~" H 8450 3700 50  0001 C CNN
	1    8450 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 3700 8300 4050
Connection ~ 8300 4050
Wire Wire Line
	8300 4050 8300 4300
Wire Wire Line
	8600 3700 8600 4050
Wire Wire Line
	8600 4050 8900 4050
Wire Wire Line
	8900 4050 8900 4400
Connection ~ 8600 4050
Connection ~ 8300 4300
$Comp
L Device:C C?
U 1 1 637FA429
P 9650 4350
AR Path="/637FA429" Ref="C?"  Part="1" 
AR Path="/637BA1B6/637FA429" Ref="C43"  Part="1" 
AR Path="/638C9E00/637FA429" Ref="C?"  Part="1" 
AR Path="/638CB94F/637FA429" Ref="C?"  Part="1" 
F 0 "C43" H 9765 4396 50  0000 L CNN
F 1 "1uF" H 9765 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9688 4200 50  0001 C CNN
F 3 "~" H 9650 4350 50  0001 C CNN
	1    9650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4050 9650 4050
Wire Wire Line
	9650 4050 9650 4200
Wire Wire Line
	9650 4500 9650 4650
Wire Wire Line
	9650 4650 9950 4650
$Comp
L power:GND #PWR?
U 1 1 637FA433
P 9950 4650
AR Path="/637FA433" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA433" Ref="#PWR092"  Part="1" 
AR Path="/638C9E00/637FA433" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA433" Ref="#PWR?"  Part="1" 
F 0 "#PWR092" H 9950 4400 50  0001 C CNN
F 1 "GND" H 9955 4477 50  0000 C CNN
F 2 "" H 9950 4650 50  0001 C CNN
F 3 "" H 9950 4650 50  0001 C CNN
	1    9950 4650
	1    0    0    -1  
$EndComp
Connection ~ 3800 4300
$Comp
L Amplifier_Operational:OPA4340UA U?
U 1 1 637FA442
P 4100 4400
AR Path="/637FA442" Ref="U?"  Part="1" 
AR Path="/637BA1B6/637FA442" Ref="U9"  Part="1" 
AR Path="/638C9E00/637FA442" Ref="U?"  Part="1" 
AR Path="/638CB94F/637FA442" Ref="U?"  Part="1" 
F 0 "U9" H 4100 4767 50  0000 C CNN
F 1 "OPA4340UA" H 4100 4676 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4050 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 4150 4600 50  0001 C CNN
	1    4100 4400
	1    0    0    1   
$EndComp
Connection ~ 9950 4650
Connection ~ 10000 3200
$Comp
L power:GND #PWR?
U 1 1 637FA44A
P 7700 4600
AR Path="/637FA44A" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA44A" Ref="#PWR089"  Part="1" 
AR Path="/638C9E00/637FA44A" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA44A" Ref="#PWR?"  Part="1" 
F 0 "#PWR089" H 7700 4350 50  0001 C CNN
F 1 "GND" H 7705 4427 50  0000 C CNN
F 2 "" H 7700 4600 50  0001 C CNN
F 3 "" H 7700 4600 50  0001 C CNN
	1    7700 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 637FA450
P 7750 3150
AR Path="/637FA450" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA450" Ref="#PWR090"  Part="1" 
AR Path="/638C9E00/637FA450" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA450" Ref="#PWR?"  Part="1" 
F 0 "#PWR090" H 7750 2900 50  0001 C CNN
F 1 "GND" H 7755 2977 50  0000 C CNN
F 2 "" H 7750 3150 50  0001 C CNN
F 3 "" H 7750 3150 50  0001 C CNN
	1    7750 3150
	1    0    0    -1  
$EndComp
Text Label 8000 4500 0    50   ~ 0
V_BIAS
Wire Wire Line
	8000 4500 8300 4500
Text Label 6500 4500 0    50   ~ 0
V_BIAS
Wire Wire Line
	6500 4500 6800 4500
Wire Wire Line
	5050 4500 5300 4500
Text Label 5050 4500 0    50   ~ 0
V_BIAS
Wire Wire Line
	3550 4500 3800 4500
Text Label 3550 4500 0    50   ~ 0
V_BIAS
Wire Wire Line
	3600 3050 3850 3050
Text Label 3600 3050 0    50   ~ 0
V_BIAS
Wire Wire Line
	5100 3050 5350 3050
Text Label 5100 3050 0    50   ~ 0
V_BIAS
Wire Wire Line
	6600 3050 6850 3050
Text Label 6600 3050 0    50   ~ 0
V_BIAS
Wire Wire Line
	8100 3050 8350 3050
Text Label 8100 3050 0    50   ~ 0
V_BIAS
Connection ~ 4100 4050
Connection ~ 3800 4050
Wire Wire Line
	3800 4050 3800 4300
Wire Wire Line
	3800 3700 3800 4050
$Comp
L Device:R R?
U 1 1 637FA46A
P 3950 4050
AR Path="/637FA46A" Ref="R?"  Part="1" 
AR Path="/637BA1B6/637FA46A" Ref="R24"  Part="1" 
AR Path="/638C9E00/637FA46A" Ref="R?"  Part="1" 
AR Path="/638CB94F/637FA46A" Ref="R?"  Part="1" 
F 0 "R24" V 3743 4050 50  0000 C CNN
F 1 "220K" V 3834 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3880 4050 50  0001 C CNN
F 3 "~" H 3950 4050 50  0001 C CNN
	1    3950 4050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 637FA470
P 10000 2600
AR Path="/637FA470" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA470" Ref="#PWR093"  Part="1" 
AR Path="/638C9E00/637FA470" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA470" Ref="#PWR?"  Part="1" 
F 0 "#PWR093" H 10000 2450 50  0001 C CNN
F 1 "+3.3VA" H 10015 2773 50  0000 C CNN
F 2 "" H 10000 2600 50  0001 C CNN
F 3 "" H 10000 2600 50  0001 C CNN
	1    10000 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 637FA476
P 9950 4050
AR Path="/637FA476" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA476" Ref="#PWR091"  Part="1" 
AR Path="/638C9E00/637FA476" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA476" Ref="#PWR?"  Part="1" 
F 0 "#PWR091" H 9950 3900 50  0001 C CNN
F 1 "+3.3VA" H 9965 4223 50  0000 C CNN
F 2 "" H 9950 4050 50  0001 C CNN
F 3 "" H 9950 4050 50  0001 C CNN
	1    9950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2850 5350 2850
$Comp
L power:GND #PWR?
U 1 1 637FA47D
P 4750 3150
AR Path="/637FA47D" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/637FA47D" Ref="#PWR086"  Part="1" 
AR Path="/638C9E00/637FA47D" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/637FA47D" Ref="#PWR?"  Part="1" 
F 0 "#PWR086" H 4750 2900 50  0001 C CNN
F 1 "GND" H 4755 2977 50  0000 C CNN
F 2 "" H 4750 3150 50  0001 C CNN
F 3 "" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63806A6F
P 1250 3850
AR Path="/63806A6F" Ref="D?"  Part="1" 
AR Path="/637BA1B6/63806A6F" Ref="D3"  Part="1" 
AR Path="/638C9E00/63806A6F" Ref="D?"  Part="1" 
AR Path="/638CB94F/63806A6F" Ref="D?"  Part="1" 
F 0 "D3" V 1289 3733 50  0000 R CNN
F 1 "LED" V 1198 3733 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric_Castellated" H 1250 3850 50  0001 C CNN
F 3 "~" H 1250 3850 50  0001 C CNN
	1    1250 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63806A75
P 1250 4000
AR Path="/63806A75" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/63806A75" Ref="#PWR079"  Part="1" 
AR Path="/638C9E00/63806A75" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/63806A75" Ref="#PWR?"  Part="1" 
F 0 "#PWR079" H 1250 3750 50  0001 C CNN
F 1 "GND" H 1255 3827 50  0000 C CNN
F 2 "" H 1250 4000 50  0001 C CNN
F 3 "" H 1250 4000 50  0001 C CNN
	1    1250 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63806A7B
P 1250 3550
AR Path="/63806A7B" Ref="R?"  Part="1" 
AR Path="/637BA1B6/63806A7B" Ref="R20"  Part="1" 
AR Path="/638C9E00/63806A7B" Ref="R?"  Part="1" 
AR Path="/638CB94F/63806A7B" Ref="R?"  Part="1" 
F 0 "R20" H 1320 3596 50  0000 L CNN
F 1 "150R" H 1320 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1180 3550 50  0001 C CNN
F 3 "~" H 1250 3550 50  0001 C CNN
	1    1250 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63806A81
P 1600 3850
AR Path="/63806A81" Ref="D?"  Part="1" 
AR Path="/637BA1B6/63806A81" Ref="D4"  Part="1" 
AR Path="/638C9E00/63806A81" Ref="D?"  Part="1" 
AR Path="/638CB94F/63806A81" Ref="D?"  Part="1" 
F 0 "D4" V 1639 3733 50  0000 R CNN
F 1 "LED" V 1548 3733 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric_Castellated" H 1600 3850 50  0001 C CNN
F 3 "~" H 1600 3850 50  0001 C CNN
	1    1600 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63806A87
P 1600 4000
AR Path="/63806A87" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/63806A87" Ref="#PWR080"  Part="1" 
AR Path="/638C9E00/63806A87" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/63806A87" Ref="#PWR?"  Part="1" 
F 0 "#PWR080" H 1600 3750 50  0001 C CNN
F 1 "GND" H 1605 3827 50  0000 C CNN
F 2 "" H 1600 4000 50  0001 C CNN
F 3 "" H 1600 4000 50  0001 C CNN
	1    1600 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63806A8D
P 1600 3550
AR Path="/63806A8D" Ref="R?"  Part="1" 
AR Path="/637BA1B6/63806A8D" Ref="R21"  Part="1" 
AR Path="/638C9E00/63806A8D" Ref="R?"  Part="1" 
AR Path="/638CB94F/63806A8D" Ref="R?"  Part="1" 
F 0 "R21" H 1670 3596 50  0000 L CNN
F 1 "150R" H 1670 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1530 3550 50  0001 C CNN
F 3 "~" H 1600 3550 50  0001 C CNN
	1    1600 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63806A93
P 1950 3850
AR Path="/63806A93" Ref="D?"  Part="1" 
AR Path="/637BA1B6/63806A93" Ref="D5"  Part="1" 
AR Path="/638C9E00/63806A93" Ref="D?"  Part="1" 
AR Path="/638CB94F/63806A93" Ref="D?"  Part="1" 
F 0 "D5" V 1989 3733 50  0000 R CNN
F 1 "LED" V 1898 3733 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric_Castellated" H 1950 3850 50  0001 C CNN
F 3 "~" H 1950 3850 50  0001 C CNN
	1    1950 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63806A99
P 1950 4000
AR Path="/63806A99" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/63806A99" Ref="#PWR081"  Part="1" 
AR Path="/638C9E00/63806A99" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/63806A99" Ref="#PWR?"  Part="1" 
F 0 "#PWR081" H 1950 3750 50  0001 C CNN
F 1 "GND" H 1955 3827 50  0000 C CNN
F 2 "" H 1950 4000 50  0001 C CNN
F 3 "" H 1950 4000 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63806A9F
P 1950 3550
AR Path="/63806A9F" Ref="R?"  Part="1" 
AR Path="/637BA1B6/63806A9F" Ref="R22"  Part="1" 
AR Path="/638C9E00/63806A9F" Ref="R?"  Part="1" 
AR Path="/638CB94F/63806A9F" Ref="R?"  Part="1" 
F 0 "R22" H 2020 3596 50  0000 L CNN
F 1 "150R" H 2020 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1880 3550 50  0001 C CNN
F 3 "~" H 1950 3550 50  0001 C CNN
	1    1950 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 63806AA5
P 2300 3850
AR Path="/63806AA5" Ref="D?"  Part="1" 
AR Path="/637BA1B6/63806AA5" Ref="D6"  Part="1" 
AR Path="/638C9E00/63806AA5" Ref="D?"  Part="1" 
AR Path="/638CB94F/63806AA5" Ref="D?"  Part="1" 
F 0 "D6" V 2339 3733 50  0000 R CNN
F 1 "LED" V 2248 3733 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric_Castellated" H 2300 3850 50  0001 C CNN
F 3 "~" H 2300 3850 50  0001 C CNN
	1    2300 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63806AAB
P 2300 4000
AR Path="/63806AAB" Ref="#PWR?"  Part="1" 
AR Path="/637BA1B6/63806AAB" Ref="#PWR082"  Part="1" 
AR Path="/638C9E00/63806AAB" Ref="#PWR?"  Part="1" 
AR Path="/638CB94F/63806AAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR082" H 2300 3750 50  0001 C CNN
F 1 "GND" H 2305 3827 50  0000 C CNN
F 2 "" H 2300 4000 50  0001 C CNN
F 3 "" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63806AB1
P 2300 3550
AR Path="/63806AB1" Ref="R?"  Part="1" 
AR Path="/637BA1B6/63806AB1" Ref="R23"  Part="1" 
AR Path="/638C9E00/63806AB1" Ref="R?"  Part="1" 
AR Path="/638CB94F/63806AB1" Ref="R?"  Part="1" 
F 0 "R23" H 2370 3596 50  0000 L CNN
F 1 "150R" H 2370 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2230 3550 50  0001 C CNN
F 3 "~" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
Connection ~ 9950 4050
Connection ~ 10000 2600
Text HLabel 4450 2600 2    50   Input ~ 0
O1
Text HLabel 4400 4050 2    50   Input ~ 0
O5
Text HLabel 5900 4050 2    50   Input ~ 0
O6
Text HLabel 5950 2600 2    50   Input ~ 0
O2
Text HLabel 7450 2600 2    50   Input ~ 0
O3
Text HLabel 7400 4050 2    50   Input ~ 0
O7
Text HLabel 8950 2600 2    50   Input ~ 0
O4
Text HLabel 8900 4050 2    50   Input ~ 0
O8
Text HLabel 2300 3400 2    50   Input ~ 0
L4
Text HLabel 1950 3400 2    50   Input ~ 0
L3
Text HLabel 1600 3400 2    50   Input ~ 0
L2
Text HLabel 1250 3400 2    50   Input ~ 0
L1
$Comp
L Device:D_Photo D?
U 1 1 637FA40E
P 4750 3050
AR Path="/637FA40E" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA40E" Ref="D10"  Part="1" 
AR Path="/638C9E00/637FA40E" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA40E" Ref="D?"  Part="1" 
F 0 "D10" V 4654 3207 50  0000 L CNN
F 1 "D_Photo" V 4745 3207 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4700 3050 50  0001 C CNN
F 3 "~" H 4700 3050 50  0001 C CNN
	1    4750 3050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Photo D?
U 1 1 637FA373
P 3200 4500
AR Path="/637FA373" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA373" Ref="D7"  Part="1" 
AR Path="/638C9E00/637FA373" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA373" Ref="D?"  Part="1" 
F 0 "D7" V 3104 4657 50  0000 L CNN
F 1 "D_Photo" V 3195 4657 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 3150 4500 50  0001 C CNN
F 3 "~" H 3150 4500 50  0001 C CNN
	1    3200 4500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Photo D?
U 1 1 637FA483
P 4700 4500
AR Path="/637FA483" Ref="D?"  Part="1" 
AR Path="/637BA1B6/637FA483" Ref="D9"  Part="1" 
AR Path="/638C9E00/637FA483" Ref="D?"  Part="1" 
AR Path="/638CB94F/637FA483" Ref="D?"  Part="1" 
F 0 "D9" V 4604 4657 50  0000 L CNN
F 1 "D_Photo" V 4695 4657 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 4650 4500 50  0001 C CNN
F 3 "~" H 4650 4500 50  0001 C CNN
	1    4700 4500
	0    1    1    0   
$EndComp
Text Label 1750 3150 0    50   ~ 0
V_BIAS
Wire Wire Line
	1750 3150 2050 3150
Text HLabel 2050 3150 2    50   Input ~ 0
V_BIAS
$EndSCHEMATC
