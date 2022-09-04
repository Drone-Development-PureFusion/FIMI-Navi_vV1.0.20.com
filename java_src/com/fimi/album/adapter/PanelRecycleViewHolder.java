package com.fimi.album.adapter;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.example.album.C0522R;
import com.fimi.kernel.utils.FontUtil;
/* loaded from: classes.dex */
public class PanelRecycleViewHolder extends RecyclerView.ViewHolder {
    public ImageView ivIconSelect;
    public RelativeLayout rlRightSelect;
    public TextView tvAllSelect;
    public TextView tvTitleDescription;

    public PanelRecycleViewHolder(View itemView) {
        super(itemView);
        this.tvTitleDescription = (TextView) itemView.findViewById(C0522R.C0526id.title_description);
        this.rlRightSelect = (RelativeLayout) itemView.findViewById(C0522R.C0526id.right_select);
        this.tvAllSelect = (TextView) itemView.findViewById(C0522R.C0526id.all_select);
        this.ivIconSelect = (ImageView) itemView.findViewById(C0522R.C0526id.icon_select);
        FontUtil.changeFontLanTing(itemView.getContext().getAssets(), this.tvTitleDescription, this.tvAllSelect);
    }
}
