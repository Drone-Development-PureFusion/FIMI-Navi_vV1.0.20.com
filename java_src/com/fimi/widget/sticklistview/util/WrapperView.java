package com.fimi.widget.sticklistview.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes.dex */
class WrapperView extends ViewGroup {
    Drawable mDivider;
    int mDividerHeight;
    View mHeader;
    View mItem;
    int mItemTop;

    public WrapperView(Context c) {
        super(c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void update(View item, View header, Drawable divider, int dividerHeight) {
        if (item == null) {
            throw new NullPointerException("List view item must not be null.");
        }
        if (this.mItem != item) {
            removeView(this.mItem);
            this.mItem = item;
            ViewParent parent = item.getParent();
            if (parent != null && parent != this && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(item);
            }
            addView(item);
        }
        if (this.mHeader != header) {
            if (this.mHeader != null) {
                removeView(this.mHeader);
            }
            this.mHeader = header;
            if (header != null) {
                addView(header);
            }
        }
        if (this.mDivider != divider) {
            this.mDivider = divider;
            this.mDividerHeight = dividerHeight;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasHeader() {
        return this.mHeader != null;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int measuredWidth = View.MeasureSpec.getSize(widthMeasureSpec);
        int childWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE);
        int measuredHeight = 0;
        if (this.mHeader != null) {
            ViewGroup.LayoutParams params = this.mHeader.getLayoutParams();
            if (params != null && params.height > 0) {
                this.mHeader.measure(childWidthMeasureSpec, View.MeasureSpec.makeMeasureSpec(params.height, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE));
            } else {
                this.mHeader.measure(childWidthMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
            }
            measuredHeight = 0 + this.mHeader.getMeasuredHeight();
        } else if (this.mDivider != null) {
            measuredHeight = 0 + this.mDividerHeight;
        }
        ViewGroup.LayoutParams params2 = this.mItem.getLayoutParams();
        if (params2 != null && params2.height > 0) {
            this.mItem.measure(childWidthMeasureSpec, View.MeasureSpec.makeMeasureSpec(params2.height, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE));
        } else {
            this.mItem.measure(childWidthMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        setMeasuredDimension(measuredWidth, measuredHeight + this.mItem.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int r2 = getWidth();
        int b2 = getHeight();
        if (this.mHeader != null) {
            int headerHeight = this.mHeader.getMeasuredHeight();
            this.mHeader.layout(0, 0, r2, headerHeight);
            this.mItemTop = headerHeight;
            this.mItem.layout(0, headerHeight, r2, b2);
        } else if (this.mDivider != null) {
            this.mDivider.setBounds(0, 0, r2, this.mDividerHeight);
            this.mItemTop = this.mDividerHeight;
            this.mItem.layout(0, this.mDividerHeight, r2, b2);
        } else {
            this.mItemTop = 0;
            this.mItem.layout(0, 0, r2, b2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mHeader == null && this.mDivider != null) {
            if (Build.VERSION.SDK_INT < 11) {
                canvas.clipRect(0, 0, getWidth(), this.mDividerHeight);
            }
            this.mDivider.draw(canvas);
        }
    }
}
