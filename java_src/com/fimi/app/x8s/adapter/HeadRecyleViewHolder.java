package com.fimi.app.x8s.adapter;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class HeadRecyleViewHolder extends RecyclerView.ViewHolder {
    public TextView mTvHeard;

    public HeadRecyleViewHolder(View itemView) {
        super(itemView);
        this.mTvHeard = (TextView) itemView.findViewById(C0885R.C0889id.tv_head);
        this.mTvHeard.setText("视频多少");
    }
}
