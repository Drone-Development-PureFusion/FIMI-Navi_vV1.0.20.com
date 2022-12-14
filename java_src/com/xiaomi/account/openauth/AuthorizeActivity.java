package com.xiaomi.account.openauth;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public class AuthorizeActivity extends AuthorizeActivityBase {
    private ProgressBar mProgressBar;
    private MenuItem mRefreshItem;
    @Deprecated
    public static int RESULT_SUCCESS = AuthorizeActivityBase.RESULT_SUCCESS;
    @Deprecated
    public static int RESULT_FAIL = AuthorizeActivityBase.RESULT_FAIL;
    @Deprecated
    public static int RESULT_CANCEL = AuthorizeActivityBase.RESULT_CANCEL;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!isFinishing() && !super.isMiddleActivityMode()) {
            WebView mWebView = super.getWebView();
            RelativeLayout layout = new RelativeLayout(this);
            layout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            layout.addView(mWebView, new ViewGroup.LayoutParams(-1, -1));
            this.mProgressBar = new ProgressBar(this, null, 16842872);
            layout.addView(this.mProgressBar, new ViewGroup.LayoutParams(-1, -2));
            setContentView(layout);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (!isFinishing() && !super.isMiddleActivityMode()) {
            this.mRefreshItem = menu.add("refresh");
            this.mRefreshItem.setIcon(17301629);
            this.mRefreshItem.setShowAsActionFlags(2);
            this.mRefreshItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.xiaomi.account.openauth.AuthorizeActivity.1
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem item) {
                    AuthorizeActivity.this.refreshWebView();
                    return true;
                }
            });
            this.mRefreshItem.setVisible(false);
        }
        return true;
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowErrorUI() {
        if (this.mRefreshItem != null) {
            this.mRefreshItem.setVisible(true);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideErrorUI() {
        if (this.mRefreshItem != null) {
            this.mRefreshItem.setVisible(false);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onUpdateProgress(int newProgress) {
        if (this.mProgressBar != null) {
            this.mProgressBar.setProgress(newProgress);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onHideProgress() {
        if (this.mProgressBar != null) {
            this.mProgressBar.setVisibility(8);
        }
    }

    @Override // com.xiaomi.account.openauth.AuthorizeActivityBase
    protected void onShowProgress() {
        if (this.mProgressBar != null) {
            this.mProgressBar.setVisibility(0);
        }
    }
}
