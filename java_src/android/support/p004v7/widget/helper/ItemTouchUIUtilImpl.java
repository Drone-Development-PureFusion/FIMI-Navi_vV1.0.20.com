package android.support.p004v7.widget.helper;

import android.graphics.Canvas;
import android.support.p001v4.view.ViewCompat;
import android.support.p004v7.recyclerview.C0350R;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
/* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl */
/* loaded from: classes.dex */
class ItemTouchUIUtilImpl {
    ItemTouchUIUtilImpl() {
    }

    /* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl$Api21Impl */
    /* loaded from: classes.dex */
    static class Api21Impl extends BaseImpl {
        @Override // android.support.p004v7.widget.helper.ItemTouchUIUtilImpl.BaseImpl, android.support.p004v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            if (isCurrentlyActive) {
                Object originalElevation = view.getTag(C0350R.C0353id.item_touch_helper_previous_elevation);
                if (originalElevation == null) {
                    Object originalElevation2 = Float.valueOf(ViewCompat.getElevation(view));
                    float newElevation = 1.0f + findMaxElevation(recyclerView, view);
                    ViewCompat.setElevation(view, newElevation);
                    view.setTag(C0350R.C0353id.item_touch_helper_previous_elevation, originalElevation2);
                }
            }
            super.onDraw(c, recyclerView, view, dX, dY, actionState, isCurrentlyActive);
        }

        private float findMaxElevation(RecyclerView recyclerView, View itemView) {
            int childCount = recyclerView.getChildCount();
            float max = 0.0f;
            for (int i = 0; i < childCount; i++) {
                View child = recyclerView.getChildAt(i);
                if (child != itemView) {
                    float elevation = ViewCompat.getElevation(child);
                    if (elevation > max) {
                        max = elevation;
                    }
                }
            }
            return max;
        }

        @Override // android.support.p004v7.widget.helper.ItemTouchUIUtilImpl.BaseImpl, android.support.p004v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            Object tag = view.getTag(C0350R.C0353id.item_touch_helper_previous_elevation);
            if (tag != null && (tag instanceof Float)) {
                ViewCompat.setElevation(view, ((Float) tag).floatValue());
            }
            view.setTag(C0350R.C0353id.item_touch_helper_previous_elevation, null);
            super.clearView(view);
        }
    }

    /* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl$BaseImpl */
    /* loaded from: classes.dex */
    static class BaseImpl implements ItemTouchUIUtil {
        @Override // android.support.p004v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        @Override // android.support.p004v7.widget.helper.ItemTouchUIUtil
        public void onSelected(View view) {
        }

        @Override // android.support.p004v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
            view.setTranslationX(dX);
            view.setTranslationY(dY);
        }

        @Override // android.support.p004v7.widget.helper.ItemTouchUIUtil
        public void onDrawOver(Canvas c, RecyclerView recyclerView, View view, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        }
    }
}
