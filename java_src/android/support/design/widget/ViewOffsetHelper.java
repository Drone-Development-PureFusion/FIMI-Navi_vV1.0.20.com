package android.support.design.widget;

import android.support.p001v4.view.ViewCompat;
import android.view.View;
/* loaded from: classes.dex */
class ViewOffsetHelper {
    private int mLayoutLeft;
    private int mLayoutTop;
    private int mOffsetLeft;
    private int mOffsetTop;
    private final View mView;

    public ViewOffsetHelper(View view) {
        this.mView = view;
    }

    public void onViewLayout() {
        this.mLayoutTop = this.mView.getTop();
        this.mLayoutLeft = this.mView.getLeft();
        updateOffsets();
    }

    private void updateOffsets() {
        ViewCompat.offsetTopAndBottom(this.mView, this.mOffsetTop - (this.mView.getTop() - this.mLayoutTop));
        ViewCompat.offsetLeftAndRight(this.mView, this.mOffsetLeft - (this.mView.getLeft() - this.mLayoutLeft));
    }

    public boolean setTopAndBottomOffset(int offset) {
        if (this.mOffsetTop != offset) {
            this.mOffsetTop = offset;
            updateOffsets();
            return true;
        }
        return false;
    }

    public boolean setLeftAndRightOffset(int offset) {
        if (this.mOffsetLeft != offset) {
            this.mOffsetLeft = offset;
            updateOffsets();
            return true;
        }
        return false;
    }

    public int getTopAndBottomOffset() {
        return this.mOffsetTop;
    }

    public int getLeftAndRightOffset() {
        return this.mOffsetLeft;
    }

    public int getLayoutTop() {
        return this.mLayoutTop;
    }

    public int getLayoutLeft() {
        return this.mLayoutLeft;
    }
}
