package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
/* loaded from: classes.dex */
public class RecyclerDividerItemDecoration extends RecyclerView.ItemDecoration {
    public static final int HORIZONTAL_LIST = 0;
    public static final int VERTICAL_LIST = 1;
    private int mDividerHeight;
    private int mOrientation;
    private Paint mPaint = new Paint(1);

    public RecyclerDividerItemDecoration(Context context, int orientation, int dividerHeight, int dividerColor) {
        this.mDividerHeight = 2;
        setOrientation(orientation);
        this.mDividerHeight = dividerHeight;
        this.mPaint.setColor(context.getResources().getColor(dividerColor));
        this.mPaint.setStyle(Paint.Style.STROKE);
    }

    public void setOrientation(int orientation) {
        if (orientation != 0 && orientation != 1) {
            throw new IllegalArgumentException("invalid orientation");
        }
        this.mOrientation = orientation;
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent) {
        if (this.mOrientation == 1) {
            drawVertical(c, parent);
        } else {
            drawHorizontal(c, parent);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        super.onDraw(c, parent, state);
    }

    public void drawVertical(Canvas c, RecyclerView parent) {
        int left = parent.getPaddingLeft();
        int right = parent.getWidth() - parent.getPaddingRight();
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            new RecyclerView(parent.getContext());
            RecyclerView.LayoutParams params = (RecyclerView.LayoutParams) child.getLayoutParams();
            int top = child.getBottom() + params.bottomMargin;
            int bottom = top + this.mDividerHeight;
            if (this.mPaint != null) {
                c.drawRect(left, top, right, bottom, this.mPaint);
            }
        }
    }

    public void drawHorizontal(Canvas c, RecyclerView parent) {
        int top = parent.getPaddingTop();
        int bottom = parent.getHeight() - parent.getPaddingBottom();
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount - 1; i++) {
            View child = parent.getChildAt(i);
            RecyclerView.LayoutParams params = (RecyclerView.LayoutParams) child.getLayoutParams();
            int left = child.getRight() + params.rightMargin;
            int right = left + this.mDividerHeight;
            if (this.mPaint != null) {
                c.drawRect(left, top, right, bottom, this.mPaint);
            }
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, int itemPosition, RecyclerView parent) {
        if (this.mOrientation == 1) {
            outRect.set(0, 0, 0, this.mDividerHeight);
        } else {
            outRect.set(0, 0, this.mDividerHeight, 0);
        }
    }
}
