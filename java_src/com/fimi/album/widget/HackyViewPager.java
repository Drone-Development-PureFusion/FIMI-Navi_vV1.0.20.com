package com.fimi.album.widget;

import android.content.Context;
import android.support.p001v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
/* loaded from: classes.dex */
public class HackyViewPager extends ViewPager {
    private static final String TAG = "HackyViewPager";
    private boolean scrollble = true;

    public HackyViewPager(Context context) {
        super(context);
    }

    public HackyViewPager(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override // android.support.p001v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        try {
            if (this.scrollble) {
                return super.onInterceptTouchEvent(ev);
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException e) {
            Log.e(TAG, "hacky viewpager error2");
            return false;
        } catch (IllegalArgumentException e2) {
            Log.e(TAG, "hacky viewpager error1");
            return false;
        }
    }

    @Override // android.support.p001v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        if (!this.scrollble) {
            return false;
        }
        return super.onTouchEvent(ev);
    }

    public void setScrollble(boolean scrollble) {
        this.scrollble = scrollble;
    }

    @Override // android.view.View
    public void scrollTo(int x, int y) {
        super.scrollTo(x, y);
    }
}
