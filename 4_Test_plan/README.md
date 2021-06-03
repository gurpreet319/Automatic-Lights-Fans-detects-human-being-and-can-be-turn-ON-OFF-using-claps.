# Test Plan and Test Output

## Testing Observations

Initially when person enters the room, Infrared sensor detects that motion and sends a high signal to IC-CD4017(Decade Counter).

After riecing the signal, decade counter increments its output and it goes to an AND gate

Another Signal which comes from Light Dependence Resistor goes to another input of AND Gate.

AND Gate produces HIGH output when both inputs are HIGH.

The ouput of AND Gate goes to a 2 to 1 mux whose selection signal dependent upon Clap System.

IF Clap Signal is HIGH then it will toggle the output. If it is HIGH then after clap it changes to LOW and vice-versa.


## Excepted Truth Table


|Claps          |   Light       |    Infrared Sensor |   Output     |
| :---         |     :---:        |     :---:      |       ---: |
 |   1          |      0        |          0         |     x|
 |   1          |      0        |          1         |     x|
 |   1          |      1        |          0         |     x|
 |   1          |      1        |          1         |     x|
 |   0          |      0        |          0         |     0|
 |   0          |      0        |          1         |     0|
  |  0          |      1        |          0         |     0|
 |   0          |      1        |          1         |     1|
 
 
 Here x dont care, it can be High or Low, Since the System is override by clap system.



