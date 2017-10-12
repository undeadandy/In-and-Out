int buttomPin = A5;
int LEDPin = 3;
int buttomStates = 0;
void setup() {
  pinMode = (buttomPin, INPUT_PULLUP);
  pinMode = (LEDPin, OUTPUT);
  Serial.begin(9600);
}


void loop() {
  int buttomStates = analogRead(buttomPin);
  if (buttomPin == HIGH) {
    digitalWrite(LEDPin, HIGH);
    delay(100);
    digitalWrite(LEDPin, LOW);
    delay(100);
  } else {
    digitalWrite(LEDPin, LOW);
  };
}
