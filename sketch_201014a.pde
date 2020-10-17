final int MAX_ARRAY = 10000000;
HoneyCombAnimation left;
HoneyCombAnimation right;
boolean leftNext = false;
boolean rightNext = false;
void setup() {

  
  //Initialize window
  size(displayWidth, displayHeight);
  background(229,164,84);
  fill(252,226,5);
  stroke(0);
  
  int radius = (int)(displayWidth/2-10)/24;
  left = new HoneyCombAnimation(radius, radius, radius);
  right = new HoneyCombAnimation(radius, displayWidth/2+10, radius);
  thread("radix");
}


void radix(){
  int array[] = new int[MAX_ARRAY];
  for (int i = 0; i < MAX_ARRAY; i++) {
    array[i] = (int) (Math.random()*(MAX_ARRAY));
    println(array[i]);
  }
  
  
  RadixSort radix = new RadixSort(array);
  radix.radixsort();
}

void draw() {
     frameRate(60);
     left.next();
}
