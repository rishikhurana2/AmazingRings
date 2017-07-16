float bullsEyeX;
float bullsEyeY;
float bullsEyeD;
float bullsEyeS;
float bullsEyeX2, bullsEyeY2, bullsEyeS2;
int col = 100;
float col1 = 100;
float col2 = 100;
float bullsEyeY3, bullsEyeY4, bullsEyeS3, bullsEyeS4, bullsEyeX3;
void setup() {
  size(800, 800, P2D);
  bullsEyeX = 200;
  bullsEyeY = 400;
  bullsEyeD = 500;
  bullsEyeS = 3;
  bullsEyeS2 = 3;
  bullsEyeS3 = 3;
  bullsEyeS4 = 3;
  bullsEyeX2 = 600;
  bullsEyeY2 = 400;
  bullsEyeX3 = 400;
  bullsEyeY3 = 100;
  bullsEyeY4 = 700;
}
void draw() {
  col = col + 10;
  col1 = col1 + 10;
  col1 = col1 + 10;
  background(255);
  for (float i = bullsEyeD; i > 0; i = i - 10) {
    noFill();
    stroke(col1, col, col2);
    ellipse(bullsEyeX, bullsEyeY, i, i);
  }
  for (float j = bullsEyeD; j > 0; j = j - 10) {
    stroke(col1, col2, col);
    ellipse(bullsEyeX2, bullsEyeY2, j, j);
  }
  for (float t = bullsEyeD; t > 0; t = t - 10) {
    stroke(col2, col1, col);
    ellipse(bullsEyeX3, bullsEyeY3, t, t);
  }
  for (float h = bullsEyeD; h > 0; h = h - 10) {
    stroke(col, col1, col2);
    ellipse(bullsEyeX3, bullsEyeY4, h, h);
  }
  bullsEyeX = bullsEyeX + bullsEyeS;
  bullsEyeX2 = bullsEyeX2 - bullsEyeS2;
  bullsEyeY3 = bullsEyeY3 + bullsEyeS3;
  bullsEyeY4 = bullsEyeY4 - bullsEyeS4;
  if (bullsEyeX > width|| bullsEyeX < 0) {
    bullsEyeS = bullsEyeS * -1;
  }
  if (bullsEyeX2 > width || bullsEyeX2 < 0) {
    bullsEyeS2 = bullsEyeS2 * -1;
  }
  if (bullsEyeY3 > height || bullsEyeY3 < 0) {
    bullsEyeS3 = bullsEyeS3 * -1;
  }
  if (bullsEyeY4 > height || bullsEyeY4 < 0) {
    bullsEyeS4 = bullsEyeS4 * -1;
  }
}