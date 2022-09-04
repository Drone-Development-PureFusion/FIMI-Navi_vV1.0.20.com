package com.fimi.widget.impl;

import android.view.View;
import java.util.Calendar;
/* loaded from: classes.dex */
public abstract class NoDoubleClickListener implements View.OnClickListener {
    private long lastClickTime = 0;
    public int minClickDelayTime;

    protected abstract void onNoDoubleClick(View view);

    public NoDoubleClickListener(int minClickDelayTime) {
        this.minClickDelayTime = 1000;
        this.minClickDelayTime = minClickDelayTime;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        long currentTime = Calendar.getInstance().getTimeInMillis();
        if (currentTime - this.lastClickTime > this.minClickDelayTime) {
            this.lastClickTime = currentTime;
            onNoDoubleClick(v);
        }
    }
}
