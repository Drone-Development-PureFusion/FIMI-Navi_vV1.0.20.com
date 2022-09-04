package com.fimi.album.adapter;

import android.content.Context;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.example.album.C0522R;
import com.fimi.album.entity.MediaModel;
import com.fimi.album.iview.INodataTip;
import com.fimi.album.iview.IRecycleAdapter;
/* loaded from: classes.dex */
public class PanelRecycleAdapter<T extends MediaModel> extends BaseRecycleAdapter {
    public static final String TAG = PanelRecycleAdapter.class.getName();
    private IRecycleAdapter mIRecycleAdapter;

    public PanelRecycleAdapter(Context context, INodataTip mINodataTip) {
        super(context, mINodataTip);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    /* renamed from: onCreateViewHolder */
    public RecyclerView.ViewHolder mo1873onCreateViewHolder(ViewGroup parent, int viewType) {
        if (viewType == 16) {
            View view = LayoutInflater.from(this.context).inflate(C0522R.layout.album_panel_view_holder, parent, false);
            RecyclerView.ViewHolder viewHolder = new PanelRecycleViewHolder(view);
            return viewHolder;
        }
        View view2 = LayoutInflater.from(this.context).inflate(C0522R.layout.album_body_view_holder, parent, false);
        RecyclerView.ViewHolder viewHolder2 = new BodyRecycleViewHolder(view2);
        return viewHolder2;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        if (this.mIRecycleAdapter != null) {
            this.mIRecycleAdapter.onBindViewHolder(holder, position);
        }
    }

    public void setmIRecycleAdapter(IRecycleAdapter mIRecycleAdapter) {
        this.mIRecycleAdapter = mIRecycleAdapter;
    }
}
