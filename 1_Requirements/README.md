# Requirements

## High Level Requirement
1. Sanitizer should be dispensed automatically upon entry
2. Body temperature should be monitored automatically
3. Alerts should be given to user in case of anomaly

## Low Level Requirements
1. Mimimal delay should be there between consecutive entries
2. Proper calibration of all the sensors
3. IoT alerts to report the anomalies to authorities
4. Webcam interface to capture the image
5. Restriction on number of entries

## Hardware Requirements
1. IC CD4017- Decade Counter
2. IC 347 - Comparator
3. T-Flip Flop
4. 2 to 1 Mux
5. Photo Diode Sensor
6. Infrared Sensor
7. Condensor Mic
8. Photo Resistor
9. IC - 7408 - AND Gate


## Software Requirements
(Only for Lab simulation)
1. VHDL
2. MODELSIM Simulator


## Feasibility Analysis
The project can be implemented using affordable electronic and software technology making it economically, technically and operationally feasible.

### Economic Feasibility
The project is built on Arduino uno development board and electronic components such as infrared sensors, temperature sensor, LCD, DC pump etc. which are affordable and readily available in market making it economically possible to implement.

### Technical Feasibility
Most of the hardware and software components used in the project are open source with good forums and researches available on them regarding latest technical advancements. Therefore, it is very much feasible from technical aspect.

### Operational Feasibility
The setup is very easy to use with user friendly interface and alerts, instruction being shown using 16*2 LCD making it very simple to operate even from a layman point of view. Just power on and follow the visual instructions shown on LCD.


## Defining the system

![block diagram](https://user-images.githubusercontent.com/39994054/120267746-37c47d00-c2c2-11eb-9b3b-3d5340ae1989.JPG)



## SWOT analysis

![swot analysis](https://user-images.githubusercontent.com/39994054/120269252-131dd480-c2c5-11eb-92e0-a544d2186e45.JPG)



# 4W&#39;s and 1&#39;H

## Who:

The implemented system is helpful for everyone in present world for providing contactless sanitizing and body temperature check before taking entry at any place.

## What:

A smart sanitization and alert system with ability to send alerts along with image of person in case of anomaly.

## When:

When taking entry at any public place to ensure that every person take sanitization and body temperature check process seriously to ensure safety of everyone. 

## Where:

Can be put at entry gates of various place like school/colleges, offices, malls, metro stations etc.

## How:

The system automatically dispenses sanitizer when a person takes entry at entry gate 1 and shows instruction to go to entry gate 2. At entry gate 2 body temperature of person is checked. If the person has skipped sanitization or is having signs of fever, it triggers the buzzer to alert nearby people and also an automatic alert is triggered in form of SMS/e-mail along with image of person to report this incident.


