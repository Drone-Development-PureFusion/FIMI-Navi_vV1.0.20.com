package com.umeng.commonsdk.internal.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
/* compiled from: ExecShell.java */
/* renamed from: com.umeng.commonsdk.internal.utils.e */
/* loaded from: classes2.dex */
public class C2301e {

    /* compiled from: ExecShell.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.e$a */
    /* loaded from: classes2.dex */
    public enum EnumC2302a {
        check_su_binary(new String[]{"/system/xbin/which", "su"});
        

        /* renamed from: b */
        String[] f779b;

        EnumC2302a(String[] strArr) {
            this.f779b = strArr;
        }
    }

    /* renamed from: a */
    public ArrayList m879a(EnumC2302a enumC2302a) {
        ArrayList arrayList = new ArrayList();
        try {
            Process exec = Runtime.getRuntime().exec(enumC2302a.f779b);
            new BufferedWriter(new OutputStreamWriter(exec.getOutputStream()));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        arrayList.add(readLine);
                    } else {
                        return arrayList;
                    }
                } catch (Exception e) {
                    return arrayList;
                }
            }
        } catch (Exception e2) {
            return null;
        }
    }
}
