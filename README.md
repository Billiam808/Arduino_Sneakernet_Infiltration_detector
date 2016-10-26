# Arduino_Sneakernet_Infiltration_detector

The arduino <b>Sneakernet Infiltration Detector</b> uses <b>Ultrasonic Sensor</b> to do an initial sweep of the area.<br>
The purpose of the initial scan is to store the distance of each non-moving object.<br>
After the initial scan, if the <b>Ultransonic Sensor</b> sends a data via <b>HC05 Bluetooth module</b> and it does not match,<br>
the inital stored data then someone or something is infiltrating the area.<br>
<br>
<br>
We are using a <b>Stepper motor</b> created by sparkfun to rotate 2 <b>Ultrasonic Sensor</b>.<br>
The Stepper Motor takes about 5 seconds to do a full 360 degree so I decided to use 2 sensors so the motor will only have to do a 180 degree turn.<br>
By doing this, it would need 2 sensors to cover the full 360.
