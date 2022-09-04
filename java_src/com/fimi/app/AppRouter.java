package com.fimi.app;

import com.fimi.app.p009ui.SplashActivity;
import com.fimi.app.p009ui.main.HostNewMainActivity;
import router.Router;
/* loaded from: classes.dex */
public class AppRouter {
    public static void register() {
        Router.router("activity://app.main", HostNewMainActivity.class);
        Router.router("activity://app.SplashActivity", SplashActivity.class);
    }
}
