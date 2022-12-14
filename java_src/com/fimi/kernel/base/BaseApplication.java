package com.fimi.kernel.base;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.support.annotation.RequiresApi;
import android.support.multidex.MultiDex;
import com.fimi.kernel.Constants;
import com.fimi.kernel.FimiAppContext;
import com.fimi.kernel.GlobalConfig;
import com.fimi.kernel.language.LanguageModel;
import com.fimi.kernel.store.shared.SPStoreManager;
import com.fimi.kernel.utils.LanguageUtil;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class BaseApplication extends Application {
    private static Context mContext;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        mContext = getApplicationContext();
        initGlobalConfig();
    }

    private void initGlobalConfig() {
        GlobalConfig.Builder builder = new GlobalConfig.Builder();
        LanguageModel model = (LanguageModel) SPStoreManager.getInstance().getObject(Constants.LANGUAGETYPE, LanguageModel.class);
        if (model == null) {
            model = LanguageUtil.getLanguageModel(Locale.getDefault());
        }
        builder.setLanguageModel(model);
        GlobalConfig.getInstance().init(builder);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    @RequiresApi(api = 24)
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    public static Context getContext() {
        return mContext;
    }

    @Override // android.content.ContextWrapper
    @RequiresApi(api = 24)
    protected void attachBaseContext(Context base) {
        FimiAppContext.initKernel(base);
        super.attachBaseContext(base);
        MultiDex.install(base);
    }
}
