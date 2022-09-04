package com.fimi.app.x8s.p011ui.album.x8s;
/* renamed from: com.fimi.app.x8s.ui.album.x8s.IFmMediaPlayer */
/* loaded from: classes.dex */
public interface IFmMediaPlayer {
    long getCurrentPosition();

    long getDuration();

    boolean isPlaying();

    void onDestroy();

    void pause();

    void seekTo(int i);

    void start();
}
