package com.example.donationapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    ProgressBar progressBar;
    TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,WindowManager.LayoutParams.FLAG_FULLSCREEN);
        progressBar=findViewById(R.id.progressBar);
        textView= findViewById((R.id.textView));
        progressBar.setMax(100);
        progressBar.setScaleY(3f);

        progressAnimation();
    }
    public void progressAnimation(){
        Context context;
        LoaderProgressBar anim= new LoaderProgressBar(context: this, progressBar, textView, from: 0f, to: 100f);
        anim.setDuration(8000);
        progressBar.setAnimation(anim);
    }
}