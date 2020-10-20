class ShellSort extends Thread {
  
  public int [] array;
  
  public  ShellSort(int [] array){
    this.array = array;
  }
  
public void run(){
    int size = array.length;
    int dibujados = 0;
    for( int gap = size/2 ; gap > 0 ; gap /= 2) {
      for(int i = gap ; i < size ; i += 1) { 
          
        int temp = array[i];     //Toma el elemento del extremo
        int j;
        if(gap == 1) {
          shellReps += (264.0/array.length);
          delay(1);
          dibujados++;
        }
        for(j = i ; j>= gap && array[j-gap] > temp ; j-= gap )  {
          array[j] = array[j-gap];
        }
      array[j] = temp; 
      }
    }
      if (264-dibujados > 0) {
      shellReps = 264-dibujados;
      while(shellReps > 0) {
        delay(1);
      }
    }
    }
}
