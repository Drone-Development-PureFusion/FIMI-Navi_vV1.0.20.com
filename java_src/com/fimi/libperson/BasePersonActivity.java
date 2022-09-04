package com.fimi.libperson;

import android.view.View;
import com.fimi.kernel.base.BaseActivity;
/* loaded from: classes.dex */
public abstract class BasePersonActivity extends BaseActivity implements View.OnClickListener {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    protected void initMVP() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fimi.kernel.base.BaseActivity
    public void setStatusBarColor() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }
}
