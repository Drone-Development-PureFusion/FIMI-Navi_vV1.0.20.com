package com.fimi.app.x8s.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.fimi.album.widget.DownloadStateView;
import com.fimi.album.widget.MediaStrokeTextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.kernel.utils.SizeTool;
/* loaded from: classes.dex */
public class BodyRecycleViewHolder extends RecyclerView.ViewHolder {
    public ImageView ivSelect;
    public DownloadStateView mDownloadStateView;
    public TextView mFileSize;
    public ImageView mIvDownloadMask;
    public ImageView mIvDownloaded;
    public ImageView mIvSelectMask;
    public ImageView mIvVideoFlag;
    public TextView mTvDownloadState;
    public SimpleDraweeView sdvImageView;
    public MediaStrokeTextView tvDuringdate;

    public BodyRecycleViewHolder(View itemView) {
        super(itemView);
        this.sdvImageView = (SimpleDraweeView) itemView.findViewById(C0885R.C0889id.simpledraweeview);
        this.ivSelect = (ImageView) itemView.findViewById(C0885R.C0889id.selected_iv);
        this.tvDuringdate = (MediaStrokeTextView) itemView.findViewById(C0885R.C0889id.duringdate_tv);
        this.tvDuringdate.getPaint().setFakeBoldText(true);
        this.mIvDownloadMask = (ImageView) itemView.findViewById(C0885R.C0889id.iv_download_mask);
        this.mIvSelectMask = (ImageView) itemView.findViewById(C0885R.C0889id.iv_select_mask);
        this.mIvVideoFlag = (ImageView) itemView.findViewById(C0885R.C0889id.iv_video_flag);
        this.mFileSize = (TextView) itemView.findViewById(C0885R.C0889id.tv_filesize);
        this.mFileSize.getPaint().setFakeBoldText(true);
        this.mIvDownloaded = (ImageView) itemView.findViewById(C0885R.C0889id.iv_downloaded);
        this.mDownloadStateView = (DownloadStateView) itemView.findViewById(C0885R.C0889id.download_state_view);
        this.mTvDownloadState = (TextView) itemView.findViewById(C0885R.C0889id.tv_download_state);
    }

    private void initSimpleDraweeViewParams(Context context, View view) {
        DisplayMetrics mDisplayMetrics = context.getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        int screenWidth = mDisplayMetrics.widthPixels;
        int scteenHeight = mDisplayMetrics.heightPixels;
        if (screenWidth < scteenHeight) {
            screenWidth = scteenHeight;
        }
        layoutParams.width = ((screenWidth - (SizeTool.pixToDp(2.5f, context) * 3)) - (SizeTool.pixToDp(8.0f, context) * 2)) / 4;
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
