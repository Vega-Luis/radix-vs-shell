import java.io.*;
import java.util.*;
public class RadixSort extends Thread{
  private int array[];
  
  public RadixSort(int pArray[]){
    this.array = pArray;
  }
  
  public void radixsort() {
    int max = getMax();
    for (int exp = 1; max / exp > 0; exp *= 10) {
      countSort(exp);
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
    private void countSort(int pExp) {
        int output[] = new int[this.array.length]; // output array
        int i;
        int count[] = new int[10];
        Arrays.fill(count, 0);

        for (i = 0; i < this.array.length; i++) {
            count[(this.array[i] / pExp) % 10]++;
            right.next();
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
            thread("right.next");
        }
    }
}
