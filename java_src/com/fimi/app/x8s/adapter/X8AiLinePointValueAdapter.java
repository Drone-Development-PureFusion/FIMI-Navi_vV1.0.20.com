package com.fimi.app.x8s.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.entity.X8AiLinePointEntity;
import java.util.List;
/* loaded from: classes.dex */
public class X8AiLinePointValueAdapter extends RecyclerView.Adapter<X8AiPointValueViewHolder> {
    private LayoutInflater inflater;
    private boolean isAll;
    private List<X8AiLinePointEntity> list;
    private OnItemClickListener listener;
    private int selectIndex = -1;
    private int type;

    /* loaded from: classes.dex */
    public interface OnItemClickListener {
        void onItemClicked(int i, int i2, boolean z);
    }

    public boolean isAll() {
        return this.isAll;
    }

    public void setAll(boolean all) {
        this.isAll = all;
    }

    public X8AiLinePointValueAdapter(Context context, List<X8AiLinePointEntity> list, int type) {
        this.list = list;
        this.type = type;
        this.inflater = LayoutInflater.from(context);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    /* renamed from: onCreateViewHolder  reason: collision with other method in class */
    public X8AiPointValueViewHolder mo1873onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = this.inflater.inflate(C0885R.layout.x8_ai_line_point_value_item, parent, false);
        X8AiPointValueViewHolder holder = new X8AiPointValueViewHolder(view);
        return holder;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(X8AiPointValueViewHolder holder, int position) {
        if (this.type == 0) {
            onSigleSelect(holder, position);
            setSigleListener(holder);
        } else if (this.type == 1) {
            onMulSelect(holder, position);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.listener = listener;
    }

    public void setSelectIndex(int selectIndex) {
        this.selectIndex = selectIndex;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class X8AiPointValueViewHolder extends RecyclerView.ViewHolder {
        Button btn;
        View root;

        public X8AiPointValueViewHolder(View itemView) {
            super(itemView);
            this.btn = (Button) itemView.findViewById(C0885R.C0889id.btn_item);
            this.root = itemView.findViewById(C0885R.C0889id.btn_item);
        }
    }

    public void setSigleListener(X8AiPointValueViewHolder holder) {
        if (this.listener != null) {
            holder.root.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.adapter.X8AiLinePointValueAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    boolean isSelect = true;
                    int pos = ((Integer) v.getTag()).intValue();
                    if (pos == X8AiLinePointValueAdapter.this.selectIndex) {
                        isSelect = false;
                    }
                    X8AiLinePointValueAdapter.this.listener.onItemClicked(pos, X8AiLinePointValueAdapter.this.selectIndex, isSelect);
                    if (isSelect) {
                        X8AiLinePointValueAdapter.this.selectIndex = pos;
                    } else {
                        X8AiLinePointValueAdapter.this.selectIndex = -1;
                    }
                }
            });
        }
    }

    public void onSigleSelect(X8AiPointValueViewHolder holder, int position) {
        holder.root.setTag(Integer.valueOf(position));
        holder.btn.setText("" + this.list.get(position).getnPos());
        int state = this.list.get(position).getState();
        if (state == 0) {
            holder.btn.setSelected(false);
        } else if (state == 1) {
            holder.btn.setSelected(true);
        }
    }

    public void onMulSelect(X8AiPointValueViewHolder holder, int position) {
        holder.root.setTag(Integer.valueOf(position));
        holder.btn.setText("" + this.list.get(position).getnPos());
        int state = this.list.get(position).getState();
        if (state == 0) {
            holder.btn.setEnabled(true);
            holder.btn.setSelected(false);
        } else if (state == 1) {
            holder.btn.setEnabled(true);
            holder.btn.setSelected(true);
        } else if (state == 2) {
            holder.btn.setEnabled(false);
            holder.btn.setSelected(false);
        }
        if (state != 2) {
            setMulListener(holder, state);
        }
    }

    public void setMulListener(X8AiPointValueViewHolder holder, final int state) {
        if (this.listener != null) {
            holder.root.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.adapter.X8AiLinePointValueAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    boolean isSelect = true;
                    int pos = ((Integer) v.getTag()).intValue();
                    if (state == 1) {
                        isSelect = false;
                    }
                    X8AiLinePointValueAdapter.this.listener.onItemClicked(pos, X8AiLinePointValueAdapter.this.selectIndex, isSelect);
                }
            });
        }
    }
}
