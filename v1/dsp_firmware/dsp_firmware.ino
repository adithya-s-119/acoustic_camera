#include <ADC.h>

ADC *adc = new ADC();

// Mux control pins
const int s0 = 24;
const int s1 = 25;
const int s2 = 28;
const int s3 = 29;

void setup() {
  // Mux
  pinMode(s0, OUTPUT); 
  pinMode(s1, OUTPUT); 
  pinMode(s2, OUTPUT); 
  pinMode(s3, OUTPUT); 

  digitalWrite(s0, LOW);
  digitalWrite(s1, LOW);
  digitalWrite(s2, LOW);
  digitalWrite(s3, LOW);

  Serial.begin(115200); // Initialize serial communication

  // ADC
  adc->adc0->setAveraging(1);  // Set number of averages
  adc->adc0->setResolution(12); // Set resolution to 12 bits
  adc->adc0->setConversionSpeed(ADC_CONVERSION_SPEED::HIGH_SPEED);
  adc->adc0->setSamplingSpeed(ADC_SAMPLING_SPEED::HIGH_SPEED);
}

void loop() {
  // Loop through and read all 10 values
  for (int i = 0; i < 10; i++) {
    int value = readMux(i);
    Serial.print(i);
    Serial.print(": ");
    Serial.println(value); // Send data in the format "channel: value"
    delayMicroseconds(1);  // Small delay to allow for stabilization
  }
}

int readMux(int channel) {
  int controlPin[] = {s0, s1, s2, s3};

  int muxChannel[10][4] = {
    {0, 0, 0, 0}, // Channel 0
    {1, 0, 0, 0}, // Channel 1
    {0, 1, 0, 0}, // Channel 2
    {1, 1, 0, 0}, // Channel 3
    {0, 0, 1, 0}, // Channel 4
    {1, 0, 1, 0}, // Channel 5
    {0, 1, 1, 0}, // Channel 6
    {1, 1, 1, 0}, // Channel 7
    {0, 0, 0, 1}, // Channel 8
    {1, 0, 0, 1}  // Channel 9
  };

  // Set control pins based on the channel
  for (int i = 0; i < 4; i++) {
    digitalWrite(controlPin[i], muxChannel[channel][i]);
  }

  // Read the value at the SIG pin
  int val = adc->adc0->analogRead(14);  // Read from pin 14 using ADC0

  // Return the value
  return val;
}
