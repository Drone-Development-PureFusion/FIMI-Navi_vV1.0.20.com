package com.fimi.app.x8s.viewHolder;

import android.content.Context;
import android.content.res.ColorStateList;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class CameraParamsViewHolder extends RecyclerView.ViewHolder {
    private Context context;
    private TextView paramView;

    public CameraParamsViewHolder(View itemView) {
        super(itemView);
        this.context = itemView.getContext();
        this.paramView = (TextView) itemView.findViewById(C0885R.C0889id.params_item);
    }

    public void initView(String params, boolean enable) {
        this.paramView.setText(params);
        if (enable) {
            this.paramView.setEnabled(true);
            int[][] states = {new int[]{16842919}, new int[]{16842913}, new int[]{16842910}};
            int[] colors = {this.context.getResources().getColor(C0885R.C0887color.x8_value_unselected), this.context.getResources().getColor(C0885R.C0887color.x8_value_select), this.context.getResources().getColor(C0885R.C0887color.x8_value_unselected)};
            ColorStateList colorStateList = new ColorStateList(states, colors);
            this.paramView.setTextColor(colorStateList);
            return;
        }
        this.paramView.setEnabled(false);
        int[][] states2 = {new int[]{16842919}, new int[]{16842913}, new int[]{-16842910}};
        int[] colors2 = {this.context.getResources().getColor(C0885R.C0887color.x8_value_disable), this.context.getResources().getColor(C0885R.C0887color.x8_value_disable_select), this.context.getResources().getColor(C0885R.C0887color.x8_value_disable)};
        ColorStateList colorStateList2 = new ColorStateList(states2, colors2);
        this.paramView.setTextColor(colorStateList2);
    }

    public void upSelected(boolean selected) {
        this.paramView.setSelected(selected);
    }
}
