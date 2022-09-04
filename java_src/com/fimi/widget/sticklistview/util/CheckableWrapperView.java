package com.fimi.widget.sticklistview.util;

import android.content.Context;
import android.widget.Checkable;
/* loaded from: classes.dex */
class CheckableWrapperView extends WrapperView implements Checkable {
    public CheckableWrapperView(Context context) {
        super(context);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return ((Checkable) this.mItem).isChecked();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean checked) {
        ((Checkable) this.mItem).setChecked(checked);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }
}
