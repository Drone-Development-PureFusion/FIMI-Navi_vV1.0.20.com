package com.fimi.app.x8s.p011ui.activity;

import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import com.fimi.app.x8s.C0885R;
import com.fimi.player.widget.FimiVideoView;
/* renamed from: com.fimi.app.x8s.ui.activity.X8MediaPlayTestActivity */
/* loaded from: classes.dex */
public class X8MediaPlayTestActivity extends Activity {
    private FimiVideoView videoView;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().addFlags(128);
        setContentView(C0885R.layout.x8_media_play_test);
        testFimiVideo();
    }

    public void onDeviceClick(View view) {
        this.videoView.start();
    }

    public void testFimiVideo() {
        this.videoView = (FimiVideoView) findViewById(C0885R.C0889id.fimi_video);
        String s4 = Environment.getExternalStorageDirectory() + "/a.mp4";
        this.videoView.setVideoPath(s4);
    }
}
