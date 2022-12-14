package com.fimi.app.x8s.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.fimi.app.x8s.C0885R;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class FiveKeyDefineAdapter extends RecyclerView.Adapter<FiveKeyViewHolder> {
    private String[] arr;
    private int colorBlue;
    private int colorWhite;
    private Context context;
    private LayoutInflater inflater;
    private OnItemClickListener listener;
    private int selectIndex;

    /* loaded from: classes.dex */
    public interface OnItemClickListener {
        void onItemClicked(int i);
    }

    public FiveKeyDefineAdapter(Context context, String[] arr) {
        this.arr = arr;
        this.context = context;
        this.inflater = LayoutInflater.from(context);
        this.colorWhite = context.getResources().getColor(C0885R.C0887color.white_100);
        this.colorBlue = context.getResources().getColor(C0885R.C0887color.x8_fc_all_setting_blue);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    /* renamed from: onCreateViewHolder  reason: collision with other method in class */
    public FiveKeyViewHolder mo1873onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = this.inflater.inflate(C0885R.layout.x8_main_rc_five_key_define_item, parent, false);
        FiveKeyViewHolder holder = new FiveKeyViewHolder(view);
        return holder;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(final FiveKeyViewHolder holder, final int position) {
        if (this.arr.length - 1 == position) {
            holder.btn.setVisibility(8);
        } else {
            holder.btn.setVisibility(0);
        }
        holder.btn.setText(this.arr[position]);
        if (position == this.selectIndex && StateManager.getInstance().getX8Drone().isConnect()) {
            holder.btn.setTextColor(this.colorBlue);
            holder.btn.setAlpha(1.0f);
            holder.btn.setEnabled(true);
        } else if (!StateManager.getInstance().getX8Drone().isConnect()) {
            holder.btn.setTextColor(this.colorWhite);
            holder.btn.setAlpha(0.6f);
            holder.btn.setEnabled(false);
        } else {
            holder.btn.setTextColor(this.colorWhite);
            holder.btn.setAlpha(1.0f);
            holder.btn.setEnabled(true);
        }
        if (this.listener != null && this.selectIndex != position) {
            holder.btn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.adapter.FiveKeyDefineAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    if (!FiveKeyDefineAdapter.this.arr[FiveKeyDefineAdapter.this.selectIndex].equalsIgnoreCase(holder.btn.getText().toString())) {
                        FiveKeyDefineAdapter.this.listener.onItemClicked(position);
                    }
                }
            });
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.arr.length;
    }

    public void setItemSelect(int index) {
        if (index >= 0 && index <= this.arr.length - 1) {
            this.selectIndex = index;
            notifyDataSetChanged();
        }
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.listener = listener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class FiveKeyViewHolder extends RecyclerView.ViewHolder {
        Button btn;

        public FiveKeyViewHolder(View itemView) {
            super(itemView);
            this.btn = (Button) itemView.findViewById(C0885R.C0889id.btn_item);
        }
    }
}
