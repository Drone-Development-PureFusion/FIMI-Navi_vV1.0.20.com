package com.fimi.widget;

import android.content.Context;
import com.fimi.sdk.C1787R;
/* loaded from: classes.dex */
public class NetworkLoadManage {
    private static NetworkDialog mNetworkDialog;

    public static void show(Context context) {
        mNetworkDialog = new NetworkDialog(context, C1787R.style.network_load_progress_dialog, false);
        try {
            mNetworkDialog.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void dismiss() {
        if (mNetworkDialog != null) {
            mNetworkDialog.dismiss();
        }
    }

    public static void outCancel(boolean cancel) {
        if (mNetworkDialog != null) {
            mNetworkDialog.setCanceledOnTouchOutside(false);
        }
    }
}
