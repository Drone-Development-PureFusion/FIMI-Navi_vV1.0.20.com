package com.fimi.player.widget;

import android.app.ActionBar;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class AndroidMediaController extends FmMediaController implements IMediaController {
    private ActionBar mActionBar;
    private ArrayList<View> mShowOnceArray = new ArrayList<>();

    public AndroidMediaController(Context context, AttributeSet attrs) {
        super(context, attrs);
        initView(context);
    }

    public AndroidMediaController(Context context, boolean useFastForward) {
        super(context, useFastForward);
        initView(context);
    }

    public AndroidMediaController(Context context) {
        super(context);
        initView(context);
    }

    private void initView(Context context) {
    }

    public void setSupportActionBar(@Nullable ActionBar actionBar) {
        this.mActionBar = actionBar;
        if (isShowing()) {
            actionBar.show();
        } else {
            actionBar.hide();
        }
    }

    @Override // com.fimi.player.widget.FmMediaController, com.fimi.player.widget.IMediaController
    public void show() {
        super.show();
        if (this.mActionBar != null) {
            this.mActionBar.show();
        }
        Iterator<View> it = this.mShowOnceArray.iterator();
        while (it.hasNext()) {
            View view = it.next();
            view.setVisibility(0);
        }
    }

    @Override // com.fimi.player.widget.FmMediaController, com.fimi.player.widget.IMediaController
    public void hide() {
        super.hide();
        if (this.mActionBar != null) {
            this.mActionBar.hide();
        }
        Iterator<View> it = this.mShowOnceArray.iterator();
        while (it.hasNext()) {
            View view = it.next();
            view.setVisibility(8);
        }
    }

    @Override // com.fimi.player.widget.IMediaController
    public void showOnce(@NonNull View view) {
        this.mShowOnceArray.add(view);
        view.setVisibility(0);
        show();
    }
}
