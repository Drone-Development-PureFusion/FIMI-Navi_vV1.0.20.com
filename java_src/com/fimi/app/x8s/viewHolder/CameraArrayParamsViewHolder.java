package com.fimi.app.x8s.viewHolder;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import java.util.Map;
/* loaded from: classes.dex */
public class CameraArrayParamsViewHolder extends RecyclerView.ViewHolder {
    private TextView paramView;

    public CameraArrayParamsViewHolder(View itemView) {
        super(itemView);
        this.paramView = (TextView) itemView.findViewById(C0885R.C0889id.item_value);
    }

    public void initView(String params, Map<String, String> paramMap) {
        if (paramMap != null && paramMap.get(params) != null) {
            this.paramView.setText(paramMap.get(params));
        } else {
            this.paramView.setText(params);
        }
    }

    public void upSelected(boolean selected) {
        this.paramView.setSelected(selected);
    }
}
