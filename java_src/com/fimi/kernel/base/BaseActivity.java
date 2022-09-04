package com.fimi.kernel.base;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.p004v7.app.AppCompatActivity;
import android.util.DisplayMetrics;
import com.fimi.kernel.utils.LanguageUtil;
import com.fimi.kernel.utils.StatusBarUtil;
/* loaded from: classes.dex */
public abstract class BaseActivity extends AppCompatActivity {
    protected Context mContext;
    protected int marginStatus;
    public Bundle savedInstanceState;
    protected int statusBarHeight;

    public abstract void doTrans();

    protected abstract int getContentViewLayoutID();

    public abstract void initData();

    protected abstract void setStatusBarColor();

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LanguageUtil.attachBaseContext(newBase));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mContext = this;
        this.savedInstanceState = savedInstanceState;
        BaseAppManager.getInstance().addActivity(this);
        setStatusBarColor();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            getBundleExtras(extras);
        }
        if (getContentViewLayoutID() != 0) {
            setContentView(getContentViewLayoutID());
            DisplayMetrics dm = getResources().getDisplayMetrics();
            int height = dm.heightPixels;
            this.statusBarHeight = StatusBarUtil.getStatusBarHeight(this);
            this.marginStatus = (height * 18) / 1920;
            initData();
            doTrans();
            return;
        }
        throw new IllegalArgumentException("You must return a right contentView layout resource Id");
    }

    public Bundle getSavedInstanceState() {
        return this.savedInstanceState;
    }

    protected void getBundleExtras(Bundle extras) {
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        BaseAppManager.getInstance().removeActivity(this);
    }

    protected void readyService(Class<?> clazz) {
        Intent intent = new Intent(this, clazz);
        startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readyGo(Class<?> clazz) {
        Intent intent = new Intent(this, clazz);
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
    }

    protected void readyGo(Class<?> clazz, String target, boolean b) {
        Intent intent = new Intent(this, clazz);
        intent.putExtra(target, b);
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
    }

    protected void readyGo(Class<?> clazz, Bundle bundle) {
        Intent intent = new Intent(this, clazz);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readyGoThenKill(Class<?> clazz) {
        Intent intent = new Intent(this, clazz);
        startActivity(intent);
        finish();
        overridePendingTransition(17432576, 17432577);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readyGoThenKill(Class<?> clazz, Bundle bundle) {
        Intent intent = new Intent(this, clazz);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readyGoThenKillAllActivity(Class<?> clazz) {
        Intent intent = new Intent(this, clazz);
        intent.setFlags(268468224);
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readyGoThenKillAllActivity(Intent intent) {
        intent.setFlags(268468224);
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
        finish();
    }

    protected void readyGoThenKillAllActivity(Class<?> clazz, Bundle bundle) {
        Intent intent = new Intent(this, clazz);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        intent.setFlags(268468224);
        startActivity(intent);
        overridePendingTransition(17432576, 17432577);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readyGoForResult(Class<?> clazz, int requestCode) {
        Intent intent = new Intent(this, clazz);
        startActivityForResult(intent, requestCode);
    }

    protected void readyGoForResult(Class<?> clazz, int requestCode, Bundle bundle) {
        Intent intent = new Intent(this, clazz);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startActivityForResult(intent, requestCode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    @RequiresApi(api = 24)
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }
}
