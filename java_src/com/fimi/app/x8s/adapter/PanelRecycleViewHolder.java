package com.fimi.app.x8s.adapter;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.kernel.utils.DensityUtil;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.LanguageUtil;
/* loaded from: classes.dex */
public class PanelRecycleViewHolder extends RecyclerView.ViewHolder {
    public ImageView mBtnAllSelect;
    public TextView tvTitleDescription;

    public PanelRecycleViewHolder(View itemView) {
        super(itemView);
        this.tvTitleDescription = (TextView) itemView.findViewById(C0885R.C0889id.title_description);
        this.mBtnAllSelect = (ImageView) itemView.findViewById(C0885R.C0889id.btn_all_select);
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) this.mBtnAllSelect.getLayoutParams();
        if (LanguageUtil.isZh()) {
            params.width = DensityUtil.dip2px(itemView.getContext(), 54.3f);
        } else {
            params.width = DensityUtil.dip2px(itemView.getContext(), 70.6f);
        }
        this.mBtnAllSelect.setLayoutParams(params);
        FontUtil.changeFontLanTing(itemView.getContext().getAssets(), this.tvTitleDescription, this.mBtnAllSelect);
    }
}
