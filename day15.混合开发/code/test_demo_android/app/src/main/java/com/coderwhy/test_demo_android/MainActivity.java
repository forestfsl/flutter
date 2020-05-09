package com.coderwhy.test_demo_android;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_main);
        startActivity(
            FlutterActivity.createDefaultIntent(this)
        );
    }
}
