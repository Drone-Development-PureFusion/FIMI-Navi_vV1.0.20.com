package com.fimi.album.p007ui.albumfragment;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.content.LocalBroadcastManager;
import android.support.p004v7.widget.GridLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.example.album.C0522R;
import com.fimi.album.adapter.PanelRecycleAdapter;
import com.fimi.album.biz.AlbumConstant;
import com.fimi.album.broadcast.DeleteItemReceiver;
import com.fimi.album.iview.INodataTip;
import com.fimi.album.iview.ISelectData;
import com.fimi.album.p007ui.MediaActivity;
import com.fimi.album.presenter.BaseFragmentPresenter;
import com.fimi.album.presenter.LocalFragmentPresenter;
import com.fimi.album.widget.RBaseItemDecoration;
import com.fimi.kernel.utils.FontUtil;
import com.fimi.kernel.utils.SizeTool;
import java.lang.ref.WeakReference;
/* renamed from: com.fimi.album.ui.albumfragment.BaseFragment */
/* loaded from: classes.dex */
public abstract class BaseFragment extends Fragment implements INodataTip {
    protected WeakReference<Context> contextWeakReference;
    private DeleteItemReceiver deleteItemReceiver;
    private ImageButton lbBottomDelect;
    protected BaseFragmentPresenter mBaseFragmentPresenter;
    protected ISelectData mISelectData;
    protected RecyclerView mRecyclerView;
    protected PanelRecycleAdapter panelRecycleAdapter;
    private RelativeLayout rlMediaNoDataTip;
    private RelativeLayout rlMediaSelectBottom;

    abstract int getContentID();

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.deleteItemReceiver = new DeleteItemReceiver();
        IntentFilter intentFilter = new IntentFilter(AlbumConstant.DELETEITEMACTION);
        LocalBroadcastManager.getInstance(this.contextWeakReference.get().getApplicationContext()).registerReceiver(this.deleteItemReceiver, intentFilter);
    }

    @Override // android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        int layoutID = getContentID();
        View view = inflater.inflate(layoutID, (ViewGroup) null);
        initView(view);
        initData();
        initTrans();
        return view;
    }

    private void initTrans() {
        this.lbBottomDelect.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.album.ui.albumfragment.BaseFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BaseFragment.this.mBaseFragmentPresenter != null) {
                    if (BaseFragment.this.mBaseFragmentPresenter.querySelectSize() > 0) {
                        BaseFragment.this.mBaseFragmentPresenter.deleteSelectFile();
                    } else {
                        Toast.makeText(BaseFragment.this.contextWeakReference.get(), C0522R.string.no_select_file, 0).show();
                    }
                }
            }
        });
    }

    void initView(View view) {
        this.rlMediaNoDataTip = (RelativeLayout) view.findViewById(C0522R.C0526id.media_no_data_tip);
        this.lbBottomDelect = (ImageButton) view.findViewById(C0522R.C0526id.bottom_delete_ibtn);
        this.rlMediaSelectBottom = (RelativeLayout) view.findViewById(C0522R.C0526id.media_select_bottom_rl);
        this.mRecyclerView = (RecyclerView) view.findViewById(C0522R.C0526id.recycleview);
        FontUtil.changeFontLanTing(this.contextWeakReference.get().getAssets(), this.lbBottomDelect);
    }

    protected void initData() {
        this.panelRecycleAdapter = new PanelRecycleAdapter(this.contextWeakReference.get(), this);
        if (this.contextWeakReference.get() != null) {
            this.mRecyclerView.setLayoutManager(new GridLayoutManager(this.contextWeakReference.get(), 4));
        }
        this.mRecyclerView.setAdapter(this.panelRecycleAdapter);
        this.mRecyclerView.setOverScrollMode(2);
        RBaseItemDecoration mRBaseItemDecoration = new RBaseItemDecoration(this.contextWeakReference.get(), SizeTool.pixToDp(2.5f, this.contextWeakReference.get()), 17170445);
        this.mRecyclerView.addItemDecoration(mRBaseItemDecoration);
        this.mRecyclerView.getItemAnimator().setChangeDuration(0L);
        initPresenter();
    }

    private void initPresenter() {
        this.mBaseFragmentPresenter = new LocalFragmentPresenter(this.mRecyclerView, this.panelRecycleAdapter, this.mISelectData, this.contextWeakReference.get());
        this.panelRecycleAdapter.setmIRecycleAdapter(this.mBaseFragmentPresenter);
        if (this.deleteItemReceiver != null) {
            this.deleteItemReceiver.setIReceiver(this.mBaseFragmentPresenter);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.contextWeakReference = new WeakReference<>(context);
        if (context instanceof MediaActivity) {
            this.mISelectData = (ISelectData) context;
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mISelectData = null;
        if (this.mBaseFragmentPresenter != null) {
            this.mBaseFragmentPresenter.canCalAsyncTask();
        }
        if (this.contextWeakReference.get() != null && this.deleteItemReceiver != null) {
            LocalBroadcastManager.getInstance(this.contextWeakReference.get().getApplicationContext()).unregisterReceiver(this.deleteItemReceiver);
        }
        if (this.panelRecycleAdapter != null) {
            this.panelRecycleAdapter.removeCallBack();
        }
    }

    public void reshAdapter() {
        if (this.panelRecycleAdapter != null) {
            this.panelRecycleAdapter.refresh();
            if (this.mBaseFragmentPresenter != null) {
                this.mBaseFragmentPresenter.refreshData();
            }
        }
    }

    public void enterSelectAllMode() {
        this.mBaseFragmentPresenter.enterSelectAllMode();
    }

    public void cancalSelectAllMode() {
        this.mBaseFragmentPresenter.cancalSelectAllMode();
    }

    public void enterSelectMode(boolean state, boolean isNeedPreform) {
        showBottomDeleteView(state);
        if (isNeedPreform) {
            this.mBaseFragmentPresenter.enterSelectMode(state);
        }
    }

    public void showBottomDeleteView(boolean state) {
        if (state) {
            this.rlMediaSelectBottom.setVisibility(0);
        } else {
            this.rlMediaSelectBottom.setVisibility(8);
        }
    }

    @Override // com.fimi.album.iview.INodataTip
    public void noDataTipCallback(boolean isNodata) {
        if (isNodata) {
            this.rlMediaNoDataTip.setVisibility(0);
        } else {
            this.rlMediaNoDataTip.setVisibility(8);
        }
    }
}
