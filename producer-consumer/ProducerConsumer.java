/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package producerconsumer;

import java.util.LinkedList;
import java.util.Queue;

/**
 *
 * @author Kamrul
 */
public class ProducerConsumer {

    /**
     * @param args the command line arguments
     */
         static int N =5;
        public static Semaphore mutex =new Semaphore(1,1);
        public static Semaphore empty =new Semaphore(N,N);
        public static Semaphore full =new Semaphore(0,N);
        public static Queue<Integer> buffer = new LinkedList<Integer>();
    
    
    public static void main(String[] args) {
       
             
        
        Producer producer1=new Producer(mutex,empty,full,buffer);
        Producer producer2=new Producer(mutex,empty,full,buffer);
        
        Consumer consumer1=new Consumer(mutex,empty,full,buffer);
        Consumer consumer2=new Consumer(mutex,empty,full,buffer);
        
        
        new Thread(producer1,"Producer 1").start();
        
        new Thread(consumer1,"Consumer 1").start();
        
        new Thread(producer2,"Producer 2").start();
               
        new Thread(consumer2,"Consumer 2").start();
        
             
        
    }
    
}
