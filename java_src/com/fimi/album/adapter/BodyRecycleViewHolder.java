package com.fimi.album.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.album.C0522R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.SizeTool;
/* loaded from: classes.dex */
public class BodyRecycleViewHolder extends RecyclerView.ViewHolder {
    public ImageView ivSelect;
    public SimpleDraweeView sdvImageView;
    public TextView tvDuringdate;

    public BodyRecycleViewHolder(View itemView) {
        super(itemView);
        this.sdvImageView = (SimpleDraweeView) itemView.findViewById(C0522R.C0526id.simpledraweeview);
        initSimpleDraweeViewParams(itemView.getContext(), this.sdvImageView);
        this.ivSelect = (ImageView) itemView.findViewById(C0522R.C0526id.selected_iv);
        initImageViewParams(itemView.getContext(), itemView, this.ivSelect);
        this.tvDuringdate = (TextView) itemView.findViewById(C0522R.C0526id.duringdate_tv);
        initTextViewParams(itemView.getContext(), itemView, this.tvDuringdate);
        FontUtil.changeViewLanTing(itemView.getContext().getAssets(), this.tvDuringdate);
    }

    private void initSimpleDraweeViewParams(Context context, View view) {
        DisplayMetrics mDisplayMetrics = context.getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        int screenWidth = mDisplayMetrics.widthPixels;
        int scteenHeight = mDisplayMetrics.heightPixels;
        if (screenWidth < scteenHeight) {
            screenWidth = scteenHeight;
        }
        layoutParams.width = ((screenWidth - (SizeTool.pixToDp(5.0f, context) * 3)) - (SizeTool.pixToDp(6.0f, context) * 2)) / 4;
        layoutParams.height = (layoutParams.width * 9) / 16;
        view.setLayoutParams(layoutParams);
    }

    private void initImageViewParams(Context context, View parentView, View view) {
        parentView.measure(0, 0);
        int currentHeight = parentView.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.addRule(11);
        layoutParams.rightMargin = SizeTool.pixToDp(12.0f, context);
        layoutParams.topMargin = currentHeight - SizeTool.pixToDp(25.0f, context);
        view.setLayoutParams(layoutParams);
    }

    private void initTextViewParams(Context context, View parentView, View view) {
        parentView.measure(0, 0);
        int currentHeight = parentView.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        layoutParams.leftMargin = SizeTool.pixToDp(10.0f, context);
        layoutParams.topMargin = currentHeight - SizeTool.pixToDp(24.0f, context);
        view.setLayoutParams(layoutParams);
    }
}
