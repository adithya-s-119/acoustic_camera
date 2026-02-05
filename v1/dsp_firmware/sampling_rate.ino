#include <ADC.h>

ADC *adc = new ADC();

// Mux control pins
const int s0 = 24;
const int s1 = 25;
const int s2 = 28;
const int s3 = 29;

// Time measurement
unsigned long lastTime[10];    // Array to store last time for each mic
unsigned long currentTime[10]; // Array to store current time for each mic
unsigned long sampleCount[10]; // Array to store sample count for each mic

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

  // Initialize time and sample count for each microphone
  for (int i = 0; i < 10; i++) {
    lastTime[i] = micros();  // Initial time for each mic
    sampleCount[i] = 0;      // Initialize sample count for each mic
  }
}

void loop() {
  // Loop through all microphones (channels)
  for (int i = 0; i < 10; i++) {
    int value = readMux(i);
    sampleCount[i]++;

    // Time measurement: Calculate elapsed time for each mic
    currentTime[i] = micros();
    unsigned long elapsedTime = currentTime[i] - lastTime[i];

    // Calculate and print the sampling rate for each microphone every 1000 samples
    if (sampleCount[i] >= 1000) {
      // Convert to kHz: 1 kHz = 1000 samples per second
      float samplingRate_kHz = (sampleCount[i] * 1000000.0) / elapsedTime / 1000.0;
      Serial.print("Mic ");
      Serial.print(i);
      Serial.print(" Sampling Rate: ");
      Serial.print(samplingRate_kHz);
      Serial.println(" kHz");
      sampleCount[i] = 0;  // Reset count for this mic
      lastTime[i] = currentTime[i];  // Reset time for this mic
    }
    
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
