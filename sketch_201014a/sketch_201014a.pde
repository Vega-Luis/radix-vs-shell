final int MAX_ARRAY = 10000000;
HoneyCombAnimation left;
HoneyCombAnimation right;
double radixReps = 0;
double shellReps = 0;
RadixSort radix;
ShellSort shell;
int exp = 1;

//obtiene el numero mas grande el arreglo
int getMax(int pArray[]) {
        int max = pArray[0];
        for (int i = 1; i < pArray.length; i++) {
            if (pArray[i] > max) {
                max = pArray[i];
            }
        }
        return max;
    }

//obtener cantidad de digitos del numero mas grande del arreglo
int getCantDigit(int pNumber) {
  if (pNumber > 0) {
   return getCantDigit(pNumber/10) + 1;
  }
  return 0;
}

void runRadix() {
   int array[] = new int[MAX_ARRAY];
  //int array[] = { 170, 145, 175, 190, 802, 124, 2, 1 };

  for (int i = 0; i < MAX_ARRAY; i++) {
    array[i] = (int) (Math.random()*(MAX_ARRAY)+1);
  }
  int cantDigits = getCantDigit(getMax(array));
  int exp[] = new int[cantDigits];
  Arrays.fill(exp, 0);
  
  for (int index = 0; index < array.length; index++) {
    exp[getCantDigit(array[index])-1]++;
  }
  
  radix = new RadixSort(array, exp);
  radix.start(); 
}

void runShell() {
     int array[] = new int[MAX_ARRAY];
  //int array[] = { 170, 145, 175, 190, 802, 124, 2, 1 };

  for (int i = 0; i < MAX_ARRAY; i++) {
    array[i] = (int) (Math.random()*(MAX_ARRAY)+1);
  }
  shell = new ShellSort(array);
  shell.start();
}
void setup() {

  //Initialize window
  size(displayWidth, displayHeight);
  background(229,164,84);
  fill(252,226,5);
  stroke(0);
  //Iniciando animacion
  int radius = (int)(displayWidth/2-10)/24;
  left = new HoneyCombAnimation(radius, radius, radius);
  right = new HoneyCombAnimation(radius, displayWidth/2+10, radius);
  
  //llamando radix
   runRadix();
  runShell();
}

int c = 0;


void draw() {
  frameRate(1000);
  
  if(radixReps > 0) { 
    left.next();
    radixReps--;
  }  
  if (shellReps > 0) {
    right.next();
    shellReps--;
  }
}
