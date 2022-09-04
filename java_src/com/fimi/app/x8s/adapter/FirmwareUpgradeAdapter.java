package com.fimi.app.x8s.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.entity.VersionEntity;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class FirmwareUpgradeAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private Context context;
    private ArrayList<VersionEntity> list;
    private OnUpdateItemClickListener listener;
    private final int VIEW_TYPE_NORMAL = 0;
    private final int VIEW_TYPE_END = 1;

    /* loaded from: classes.dex */
    public interface OnUpdateItemClickListener {
        void onUpdateItemClick(int i);
    }

    public FirmwareUpgradeAdapter(ArrayList<VersionEntity> list) {
        this.list = list;
    }

    public void changeDatas(ArrayList<VersionEntity> list) {
        this.list = list;
        notifyDataSetChanged();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    /* renamed from: onCreateViewHolder */
    public RecyclerView.ViewHolder mo1873onCreateViewHolder(ViewGroup parent, int viewType) {
        this.context = parent.getContext();
        View view = LayoutInflater.from(this.context).inflate(viewType == 0 ? C0885R.layout.x8_main_general_fw_upgrade_item_normal : C0885R.layout.x8_main_general_fw_upgrade_item_end, parent, false);
        if (viewType == 0) {
            return new FmNormalViewHolder(view);
        }
        return new FmEndViewHolder(view);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        if (holder instanceof FmNormalViewHolder) {
            VersionEntity item = this.list.get(position);
            FmNormalViewHolder holder1 = (FmNormalViewHolder) holder;
            if (item.getVersionName() != null) {
                holder1.tvVersionName.setText(item.getVersionName());
            }
            if (item.getVersionCode() != null) {
                holder1.tvVersionCode.setText(item.getVersionCode());
            }
            holder1.tvUpdate.setVisibility(item.hasNewVersion() ? 0 : 8);
            holder1.tvVersionName.setTextColor(this.context.getResources().getColor(item.hasNewVersion() ? C0885R.C0887color.x8_fc_all_setting_blue : C0885R.C0887color.white_100));
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size() + 1;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return position == this.list.size() ? 1 : 0;
    }

    public void setOnUpdateItemClickListener(OnUpdateItemClickListener listener) {
        this.listener = listener;
    }

    /* loaded from: classes.dex */
    static class FmNormalViewHolder extends RecyclerView.ViewHolder {
        TextView tvUpdate;
        TextView tvVersionCode;
        TextView tvVersionName;

        public FmNormalViewHolder(View itemView) {
            super(itemView);
            this.tvVersionName = (TextView) itemView.findViewById(C0885R.C0889id.tv_version_name);
            this.tvVersionCode = (TextView) itemView.findViewById(C0885R.C0889id.tv_version_code);
            this.tvUpdate = (TextView) itemView.findViewById(C0885R.C0889id.tv_update);
        }
    }

    /* loaded from: classes.dex */
    static class FmEndViewHolder extends RecyclerView.ViewHolder {
        TextView tvStatementLine1;
        TextView tvStatementLine2;
        TextView tvStatementLine3;

        public FmEndViewHolder(View itemView) {
            super(itemView);
            this.tvStatementLine1 = (TextView) itemView.findViewById(C0885R.C0889id.tv_statement_line1);
            this.tvStatementLine2 = (TextView) itemView.findViewById(C0885R.C0889id.tv_statement_line2);
            this.tvStatementLine3 = (TextView) itemView.findViewById(C0885R.C0889id.tv_statement_line3);
        }
    }
}
