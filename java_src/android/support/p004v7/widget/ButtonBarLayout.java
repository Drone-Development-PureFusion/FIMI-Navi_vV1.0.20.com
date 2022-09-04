package android.support.p004v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.p001v4.view.ViewCompat;
import android.support.p004v7.appcompat.C0345R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v7.widget.ButtonBarLayout */
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {
    private static final int ALLOW_STACKING_MIN_HEIGHT_DP = 320;
    private static final int PEEK_BUTTON_DP = 16;
    private boolean mAllowStacking;
    private int mLastWidthSize = -1;
    private int mMinimumHeight = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonBarLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        boolean allowStackingDefault = false;
        allowStackingDefault = getResources().getConfiguration().screenHeightDp >= ALLOW_STACKING_MIN_HEIGHT_DP ? true : allowStackingDefault;
        TypedArray ta = context.obtainStyledAttributes(attrs, C0345R.styleable.ButtonBarLayout);
        this.mAllowStacking = ta.getBoolean(C0345R.styleable.ButtonBarLayout_allowStacking, allowStackingDefault);
        ta.recycle();
    }

    public void setAllowStacking(boolean allowStacking) {
        if (this.mAllowStacking != allowStacking) {
            this.mAllowStacking = allowStacking;
            if (!this.mAllowStacking && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int initialWidthMeasureSpec;
        int widthSize = View.MeasureSpec.getSize(widthMeasureSpec);
        if (this.mAllowStacking) {
            if (widthSize > this.mLastWidthSize && isStacked()) {
                setStacked(false);
            }
            this.mLastWidthSize = widthSize;
        }
        boolean needsRemeasure = false;
        if (!isStacked() && View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824) {
            initialWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(widthSize, Integer.MIN_VALUE);
            needsRemeasure = true;
        } else {
            initialWidthMeasureSpec = widthMeasureSpec;
        }
        super.onMeasure(initialWidthMeasureSpec, heightMeasureSpec);
        if (this.mAllowStacking && !isStacked()) {
            int measuredWidth = getMeasuredWidthAndState();
            int measuredWidthState = measuredWidth & ViewCompat.MEASURED_STATE_MASK;
            boolean stack = measuredWidthState == 16777216;
            if (stack) {
                setStacked(true);
                needsRemeasure = true;
            }
        }
        if (needsRemeasure) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
        int minHeight = 0;
        int firstVisible = getNextVisibleChildIndex(0);
        if (firstVisible >= 0) {
            View firstButton = getChildAt(firstVisible);
            LinearLayout.LayoutParams firstParams = (LinearLayout.LayoutParams) firstButton.getLayoutParams();
            minHeight = 0 + getPaddingTop() + firstButton.getMeasuredHeight() + firstParams.topMargin + firstParams.bottomMargin;
            if (isStacked()) {
                int secondVisible = getNextVisibleChildIndex(firstVisible + 1);
                if (secondVisible >= 0) {
                    minHeight += getChildAt(secondVisible).getPaddingTop() + ((int) (16.0f * getResources().getDisplayMetrics().density));
                }
            } else {
                minHeight += getPaddingBottom();
            }
        }
        if (ViewCompat.getMinimumHeight(this) != minHeight) {
            setMinimumHeight(minHeight);
        }
    }

    private int getNextVisibleChildIndex(int index) {
        int count = getChildCount();
        for (int i = index; i < count; i++) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.mMinimumHeight, super.getMinimumHeight());
    }

    private void setStacked(boolean stacked) {
        setOrientation(stacked ? 1 : 0);
        setGravity(stacked ? 5 : 80);
        View spacer = findViewById(C0345R.C0349id.spacer);
        if (spacer != null) {
            spacer.setVisibility(stacked ? 8 : 4);
        }
        int childCount = getChildCount();
        for (int i = childCount - 2; i >= 0; i--) {
            bringChildToFront(getChildAt(i));
        }
    }

    private boolean isStacked() {
        return getOrientation() == 1;
    }
}
