package com.nexusy;

public class App {
    
    public static volatile boolean stop = false;

    public static void main(String[] args) {
 
        Runtime.getRuntime().addShutdownHook(new Thread() {
            @Override
            public void run() {
                stop = true;
                try {
		    Thread.sleep(20000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        });
        while(!stop){}
    }
}
