package com.fimi.libperson.ivew;
/* loaded from: classes.dex */
public interface ILoginView {
    void emailLoginResult(boolean z, String str);

    void freorgottenPasswords(boolean z);

    void getCodeResult(boolean z, String str);

    void iphoneLoginResult(boolean z, String str);

    void loginSuccess();

    void updateSeconds(boolean z, int i);
}
