import java.io.*;
import java.util.*;
public class RadixSort extends Thread{
  private int array[];
  private int exponentes[];
  HoneyCombAnimation animation;
  
  public RadixSort(int pArray[], int pExponentes[]){
    this.array = pArray;
    this.exponentes = pExponentes;
    int radius = (int)(displayWidth/2-10)/24;
    animation = new HoneyCombAnimation(radius, radius, radius);
  }
  
  public void run(){
    radixsort();
  }

 public void radixsort() {
    int max = getMax();
    int index = 0;
    int draw = 0;
    for (int exp = 1; max / exp > 0; exp *= 10) {
      countSort(exp);
      //print("index",exponentes[index]);
      if ( exponentes[index] != 0) {
        radixReps =+ (264.0/array.length) * exponentes[index];
        //print("reps ", reps);
        draw += (264 / array.length) * exponentes[index];
      }
      index++;
      
      while(radixReps> 0) {
        delay(1);
      }
      delay(100);
      }
    
   if (264-draw > 0) {
      radixReps = 264-draw;
          while(radixReps> 0) {
        delay(1);
      }
    }
  }
    public int getMax() {
        int max = this.array[0];
        for (int i = 1; i < this.array.length; i++) {
            if (this.array[i] > max) {
                max = this.array[i];
            }
        }
        return max;
    }
    public void countSort(int pExp) {
        int output[] = new int[this.array.length]; // output array
        int i;
        int count[] = new int[10];
        Arrays.fill(count, 0);

        for (i = 0; i < this.array.length; i++) {
            count[(this.array[i] / pExp) % 10]++;
        }
 
        for (i = 1; i < 10; i++){
            count[i] += count[i - 1];
        }
 
        for (i = this.array.length - 1; i >= 0; i--) {
            output[count[(this.array[i] / pExp) % 10] - 1] = this.array[i];
            count[(this.array[i] / pExp) % 10]--;
        }
 
        for (i = 0; i < this.array.length; i++) {
            this.array[i] = output[i];
        }
    }
}
