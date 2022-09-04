package com.fimi.app.x8s.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.entity.X8DroneInfoState;
import java.util.List;
/* loaded from: classes.dex */
public class X8DroneInfoStateAdapter extends RecyclerView.Adapter<AdapterViewHolder> {
    private Context context;
    private List<X8DroneInfoState> list;
    private OnEventClickListener mListener;

    /* loaded from: classes.dex */
    public interface OnEventClickListener {
        void onItemClick(int i, X8DroneInfoState x8DroneInfoState);
    }

    public X8DroneInfoStateAdapter(List<X8DroneInfoState> list) {
        this.list = list;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    /* renamed from: onCreateViewHolder  reason: collision with other method in class */
    public AdapterViewHolder mo1873onCreateViewHolder(ViewGroup parent, int viewType) {
        this.context = parent.getContext();
        View view = LayoutInflater.from(this.context).inflate(C0885R.layout.x8_main_all_setting_drone_info_state_item_normal, parent, false);
        AdapterViewHolder holder = new AdapterViewHolder(view);
        return holder;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(AdapterViewHolder holder, final int position) {
        X8DroneInfoState state = this.list.get(position);
        holder.tvName.setText(state.getName());
        holder.tvNormal.setText(state.getInfo());
        switch (state.getState()) {
            case NA:
                holder.tvName.setTextColor(this.context.getResources().getColor(C0885R.C0887color.white_100));
                holder.tvNormal.setTextColor(this.context.getResources().getColor(C0885R.C0887color.white_100));
                holder.btnEvent.setVisibility(8);
                return;
            case NORMAL:
                holder.tvName.setTextColor(this.context.getResources().getColor(C0885R.C0887color.white_100));
                holder.tvNormal.setTextColor(this.context.getResources().getColor(C0885R.C0887color.white_100));
                holder.btnEvent.setVisibility(8);
                return;
            case MIDDLE:
                holder.tvName.setTextColor(this.context.getResources().getColor(C0885R.C0887color.x8_error_code_type3));
                holder.tvNormal.setTextColor(this.context.getResources().getColor(C0885R.C0887color.x8_error_code_type3));
                holder.btnEvent.setVisibility(8);
                return;
            case ERROR:
                holder.tvName.setTextColor(this.context.getResources().getColor(C0885R.C0887color.x8_error_code_type1));
                holder.tvNormal.setTextColor(this.context.getResources().getColor(C0885R.C0887color.x8_error_code_type1));
                if (state.getErrorEvent() != 0) {
                    holder.btnEvent.setVisibility(8);
                    holder.btnEvent.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.adapter.X8DroneInfoStateAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            X8DroneInfoStateAdapter.this.mListener.onItemClick(position, (X8DroneInfoState) X8DroneInfoStateAdapter.this.list.get(position));
                        }
                    });
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    /* loaded from: classes.dex */
    public class AdapterViewHolder extends RecyclerView.ViewHolder {
        Button btnEvent;
        TextView tvName;
        TextView tvNormal;

        public AdapterViewHolder(View itemView) {
            super(itemView);
            this.tvName = (TextView) itemView.findViewById(C0885R.C0889id.tv_name);
            this.tvNormal = (TextView) itemView.findViewById(C0885R.C0889id.tv_normal);
            this.btnEvent = (Button) itemView.findViewById(C0885R.C0889id.btn_event);
        }
    }

    public void setOnEventClickListener(OnEventClickListener listener) {
        this.mListener = listener;
    }
}
