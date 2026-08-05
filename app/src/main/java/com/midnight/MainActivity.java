package com.midnight;

import android.app.Activity;
import android.widget.TextView;
import android.os.Bundle;


public class MainActivity extends Activity {
    static {
        System.loadLibrary("Midnight");
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}
