package com.fimi.app.x8s.p011ui.activity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.fimi.app.x8s.tools.X8sNavigationBarUtils;
import com.fimi.kernel.utils.LanguageUtil;
/* renamed from: com.fimi.app.x8s.ui.activity.X8BaseActivity */
/* loaded from: classes.dex */
public class X8BaseActivity extends Activity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LanguageUtil.attachBaseContext(newBase));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        X8sNavigationBarUtils.hideBottomUIMenu(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            X8sNavigationBarUtils.hideBottomUIMenu(this);
        }
    }
}
