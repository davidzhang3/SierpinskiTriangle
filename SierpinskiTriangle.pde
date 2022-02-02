public void setup() {
  size(500, 500);
}

public void draw() {
  sierpinksi(0, 500, 500);
}

public void sierpinksi(int x, int y, int len) {
  if (len < 5) {
    triangle(x, y, x+len, y, x+(len/2), y-len);
  } else {
    sierpinksi(x, y, len/2);
    sierpinksi(x+len/2, y, len/2);
    sierpinksi(x+len/4, y-len/2, len/2);
  }
}
