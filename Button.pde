class Button {
  float x, y, w, h;
  String label;

  Button(float xp, float yp, float wd, float ht) {
    x = xp;
    y = yp;
    w = wd;
    h = ht;
  }

  public void setLabel(String l) {
    label = l;
  }

  public void display() {
    fill(255, 0, 0);
    rect(x, y, w, h);
    fill(0);
    text(label, x+10, y+50);
  }

  public boolean isInside(float mX, float mY) {
    if (mX<x+w && mX>x-w && mY<y+h && mY>y-h) {
      return true;
    } else {return false;}
  }
}
