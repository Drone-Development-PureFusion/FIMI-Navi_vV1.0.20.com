package com.fimi.libperson;

import com.fimi.libperson.p013ui.setting.PersonSettingNewActivity;
import com.fimi.libperson.p013ui.setting.ServiceSettingActivity;
import router.Router;
/* loaded from: classes.dex */
public class PersonRouter {
    public static void register() {
        Router.router("activity://person.setting", PersonSettingNewActivity.class);
        Router.router("activity://person.service", ServiceSettingActivity.class);
    }
}
