public class HoneyCombAnimation {
  private int cellRadius;
  private final int CANT_VERTEX = 6; 
  private boolean altern;
  private int column;
  private int row;
  private int x;
  private int y;
  private int startX;
  
  public HoneyCombAnimation(int pCellRadius, int pX, int pY) {
    this.cellRadius =  pCellRadius;
    this.x = pX;
    this.y = pY;
    this.altern = false;
    this.row = 0;
    this.column = 0;
    this.startX = pX;
  }
  
  private void Hexagon(float x, float y) {
    float angle = TWO_PI / CANT_VERTEX;
    beginShape();
    for (float a = 0; a < TWO_PI; a += angle) {
      float sx = x + cos(a) * cellRadius;
      float sy = y + sin(a) * cellRadius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
  
  
  public void next(){
    if (column > 12) {
      column = 0;
      x = startX;
      y += this.cellRadius;
      row++;
    }
    if (row < 22) {
      Hexagon(x,y);
      x += 2*(cellRadius/(2*tan(radians(30))));
      column++;
      if(altern) {
        y = (y - cellRadius);
    } else {
      y = (y + cellRadius);
    }
    altern = !altern;
    }
  }
  
}
