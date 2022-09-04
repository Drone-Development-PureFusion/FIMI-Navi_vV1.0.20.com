package com.fimi.album.adapter;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.example.album.C0522R;
import me.relex.photodraweeview.PhotoDraweeView;
/* loaded from: classes.dex */
public class MediaDetialViewHolder extends RecyclerView.ViewHolder {
    public PhotoDraweeView mPhotoDraweeView;
    public ProgressBar mProgressBar;
    public RelativeLayout mRlItem;

    public MediaDetialViewHolder(View itemView) {
        super(itemView);
        this.mRlItem = (RelativeLayout) itemView.findViewById(C0522R.C0526id.rl_item);
        this.mPhotoDraweeView = (PhotoDraweeView) itemView.findViewById(C0522R.C0526id.photo_drawee_view);
        this.mProgressBar = (ProgressBar) itemView.findViewById(C0522R.C0526id.loading);
    }

    public void setRlItemBg(int color) {
        this.mRlItem.setBackgroundResource(color);
    }
}
