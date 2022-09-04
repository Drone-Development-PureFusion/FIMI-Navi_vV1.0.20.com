package com.fimi.kernel.upgrade.interfaces;
/* loaded from: classes.dex */
public interface IReqFimwareBean {
    int getHardwareVersion();

    byte[] getIdA();

    byte[] getIdB();

    byte[] getIdC();

    byte[] getIdD();

    int getModel();

    int getSoftwareVersion();

    int getSysId();

    byte getType();

    String getVersion();

    void setSysId(int i);

    void setVersion(String str);
}
