const int analogpin = A5;
const int soundpin = 3;
int sound = 0;
void setup() {
  pinMode(analogpin, INPUT);
  pinMode(soundpin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  int sensorReading = analogRead(analogpin);
  Serial.println(sensorReading);
  int sound = map(sensorReading , 0, 1023, 0, 255);
  digitalWrite(sound, HIGH);
  delay(sound);
  digitalWrite(sound,LOW);
  delay(sound);
}
