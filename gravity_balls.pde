int numBalls = 7;
float spring = 1;
float gravity = 0.01;
float friction = -1;
int score = 0;
Ball[] balls = new Ball[numBalls];

void setup() {
  size(640, 360);
  for (int i = 0; i < numBalls; i++) {
    balls[i] = new Ball(random(width), random(height), random(30, 70), i, balls);
  }
  noStroke();
  fill(255, 300, 0);
  frameRate(80);
}

void draw() {
  background(0);
  for (Ball ball : balls) {
    textSize(50);
    score = score + ball.getPoint();
    ball.collide();
    ball.move();
    ball.display();
  }
  text("Score: " + score, 150,100);
}