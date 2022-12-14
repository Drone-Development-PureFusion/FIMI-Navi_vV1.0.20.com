package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.p004v7.widget.GridLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.StaggeredGridLayoutManager;
import android.view.View;
/* loaded from: classes.dex */
public class DividerGridItemDecoration extends RecyclerView.ItemDecoration {
    private Drawable mDivider;
    private int mDividerHeight;
    private Paint mPaint = new Paint(1);

    public DividerGridItemDecoration(Context context, int dividerHeight, int dividerColor) {
        this.mDividerHeight = 2;
        this.mDividerHeight = dividerHeight;
        this.mPaint.setColor(context.getResources().getColor(dividerColor));
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas c, RecyclerView parent, RecyclerView.State state) {
        drawHorizontal(c, parent);
        drawVertical(c, parent);
    }

    private int getSpanCount(RecyclerView parent) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            int spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
            return spanCount;
        } else if (!(layoutManager instanceof StaggeredGridLayoutManager)) {
            return -1;
        } else {
            int spanCount2 = ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
            return spanCount2;
        }
    }

    public void drawHorizontal(Canvas c, RecyclerView parent) {
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            RecyclerView.LayoutParams params = (RecyclerView.LayoutParams) child.getLayoutParams();
            int left = child.getLeft() - params.leftMargin;
            int right = child.getRight() + params.rightMargin + this.mDividerHeight;
            int top = child.getBottom() + params.bottomMargin;
            int bottom = top + this.mDividerHeight;
            if (this.mDivider != null) {
                this.mDivider.setBounds(left, top, right, bottom);
                this.mDivider.draw(c);
            }
            if (this.mPaint != null) {
                c.drawRect(left, top, right, bottom, this.mPaint);
            }
        }
    }

    public void drawVertical(Canvas c, RecyclerView parent) {
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View child = parent.getChildAt(i);
            RecyclerView.LayoutParams params = (RecyclerView.LayoutParams) child.getLayoutParams();
            int top = child.getTop() - params.topMargin;
            int bottom = child.getBottom() + params.bottomMargin;
            int left = child.getRight() + params.rightMargin;
            int right = left + this.mDividerHeight;
            if (this.mDivider != null) {
                this.mDivider.setBounds(left, top, right, bottom);
                this.mDivider.draw(c);
            }
            if (this.mPaint != null) {
                c.drawRect(left, top, right, bottom, this.mPaint);
            }
        }
    }

    private boolean isLastColum(RecyclerView parent, int pos, int spanCount, int childCount) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            if ((pos + 1) % spanCount == 0 && pos >= spanCount - 1) {
                return true;
            }
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            int orientation = ((StaggeredGridLayoutManager) layoutManager).getOrientation();
            if (orientation == 1) {
                if ((pos + 1) % spanCount == 0) {
                    return true;
                }
            } else if (pos >= childCount - (childCount % spanCount)) {
                return true;
            }
        }
        return false;
    }

    private boolean isLastRaw(RecyclerView parent, int pos, int spanCount, int childCount) {
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            if (pos >= childCount - (childCount % spanCount)) {
                return true;
            }
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            int orientation = ((StaggeredGridLayoutManager) layoutManager).getOrientation();
            if (orientation == 1) {
                if (pos >= childCount - (childCount % spanCount)) {
                    return true;
                }
            } else if ((pos + 1) % spanCount == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.p004v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, int itemPosition, RecyclerView parent) {
        int spanCount = getSpanCount(parent);
        int childCount = parent.getAdapter().getItemCount();
        if (isLastRaw(parent, itemPosition, spanCount, childCount)) {
            outRect.set(0, 0, this.mDividerHeight, this.mDividerHeight);
        } else if (isLastColum(parent, itemPosition, spanCount, childCount)) {
            outRect.set(0, 0, 0, this.mDividerHeight);
        } else {
            outRect.set(0, 0, this.mDividerHeight, this.mDividerHeight);
        }
    }
}
