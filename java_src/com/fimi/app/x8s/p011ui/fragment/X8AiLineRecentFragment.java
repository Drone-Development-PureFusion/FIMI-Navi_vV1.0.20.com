package com.fimi.app.x8s.p011ui.fragment;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.SimpleItemAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.adapter.X8AiLineHistoryAdapter2;
import com.fimi.app.x8s.interfaces.IX8AiLineHistoryListener;
import com.fimi.kernel.store.sqlite.entity.X8AiLinePointInfo;
import com.fimi.kernel.store.sqlite.helper.X8AiLinePointInfoHelper;
import com.fimi.x8sdk.common.GlobalConfig;
import com.fimi.x8sdk.map.MapType;
import java.util.List;
/* renamed from: com.fimi.app.x8s.ui.fragment.X8AiLineRecentFragment */
/* loaded from: classes.dex */
public class X8AiLineRecentFragment extends Fragment {
    public static final String ARGS_PAGE = "X8AiLineRecentFragment";
    private List<X8AiLinePointInfo> list;
    private int mPage;
    private RecyclerView mRecyclerView;
    private X8AiLineHistoryAdapter2 mX8AiLineHistoryAdapter2;
    private IX8AiLineHistoryListener mX8AiLineSelectListener;
    private View rootView;

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, Bundle savedInstanceState) {
        if (this.rootView == null) {
            this.rootView = inflater.inflate(C0885R.layout.x8_fragment_ai_line_history, container, false);
            this.mRecyclerView = (RecyclerView) this.rootView.findViewById(C0885R.C0889id.recycleview);
            this.list = X8AiLinePointInfoHelper.getIntance().getLastItem(GlobalConfig.getInstance().getMapType() == MapType.AMap ? 1 : 0);
            LinearLayoutManager layoutManager = new LinearLayoutManager(getContext());
            this.mRecyclerView.setLayoutManager(layoutManager);
            ((SimpleItemAnimator) this.mRecyclerView.getItemAnimator()).setSupportsChangeAnimations(false);
            this.mX8AiLineHistoryAdapter2 = new X8AiLineHistoryAdapter2(getContext(), this.list, 0);
            this.mX8AiLineHistoryAdapter2.setOnX8AiLineSelectListener(this.mX8AiLineSelectListener);
            this.mRecyclerView.setAdapter(this.mX8AiLineHistoryAdapter2);
        }
        return this.rootView;
    }

    public void setOnX8AiLineSelectListener(IX8AiLineHistoryListener listener) {
        this.mX8AiLineSelectListener = listener;
    }

    public void notityItemChange(long lineId) {
        if (this.rootView != null) {
            for (int i = 0; i < this.list.size(); i++) {
                if (lineId == this.list.get(i).getId().longValue()) {
                    this.list.get(i).setSaveFlag(0);
                    this.mX8AiLineHistoryAdapter2.notifyItemChanged(i);
                    return;
                }
            }
        }
    }
}
