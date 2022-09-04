package com.fimi.app.x8s.viewHolder;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class CameraParamsTitleViewHolder extends RecyclerView.ViewHolder {
    private ImageView backBtn;
    private TextView paramView;

    public CameraParamsTitleViewHolder(View itemView) {
        super(itemView);
        this.paramView = (TextView) itemView.findViewById(C0885R.C0889id.params_key);
        this.backBtn = (ImageView) itemView.findViewById(C0885R.C0889id.item_back_btn);
    }

    public void initView(String params) {
        this.paramView.setText(params);
    }

    public void upSelected(boolean selected) {
        this.paramView.setSelected(selected);
    }
}
