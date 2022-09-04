package com.fimi.app.x8s.p011ui.album.x8s;

import android.view.View;
import com.fimi.app.x8s.C0885R;
/* renamed from: com.fimi.app.x8s.ui.album.x8s.X8LocalMediaLocalFragment */
/* loaded from: classes.dex */
public class X8LocalMediaLocalFragment extends X8MediaBaseFragment {
    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8MediaBaseFragment
    int getContentID() {
        return C0885R.layout.x8_fragment_local_media;
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8MediaBaseFragment
    boolean judgeTypeCurrentFragment() {
        return false;
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8MediaBaseFragment, com.fimi.kernel.base.BaseFragment
    protected void initData(View view) {
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8MediaBaseFragment, com.fimi.kernel.base.BaseFragment
    public int getLayoutId() {
        return 0;
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8MediaBaseFragment, com.fimi.kernel.base.BaseFragment
    protected void doTrans() {
    }

    @Override // com.fimi.app.x8s.p011ui.album.x8s.X8MediaBaseFragment, com.fimi.kernel.base.BaseFragment
    protected void initMVP() {
    }

    public void unRegisterReciver() {
        if (this.mBaseFragmentPresenter != null) {
            this.mBaseFragmentPresenter.unRegisterReciver();
        }
    }
}
