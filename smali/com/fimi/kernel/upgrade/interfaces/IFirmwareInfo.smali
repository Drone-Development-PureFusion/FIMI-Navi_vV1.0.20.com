.class public interface abstract Lcom/fimi/kernel/upgrade/interfaces/IFirmwareInfo;
.super Ljava/lang/Object;
.source "IFirmwareInfo.java"


# virtual methods
.method public abstract getErrorInfo()Ljava/lang/String;
.end method

.method public abstract getFb()Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getFirmwareName()Ljava/lang/String;
.end method

.method public abstract getLogicVersion()J
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getSubTargetId()B
.end method

.method public abstract getSysId()I
.end method

.method public abstract getTargetId()B
.end method

.method public abstract getUpdateContent()Ljava/lang/String;
.end method

.method public abstract isForce()Z
.end method

.method public abstract isUpgradeResult()Z
.end method

.method public abstract isVersionError()Z
.end method

.method public abstract setErrorInfo(Ljava/lang/String;)V
.end method

.method public abstract setFb(Lcom/fimi/kernel/upgrade/interfaces/IReqFimwareBean;)V
.end method

.method public abstract setFileSize(J)V
.end method

.method public abstract setFirmwareName(Ljava/lang/String;)V
.end method

.method public abstract setForce(Z)V
.end method

.method public abstract setLogicVersion(J)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setSubTargetId(B)V
.end method

.method public abstract setSysId(I)V
.end method

.method public abstract setTargetId(B)V
.end method

.method public abstract setUpdateContent(Ljava/lang/String;)V
.end method

.method public abstract setUpgradeResult(Z)V
.end method

.method public abstract setVersionError(Z)V
.end method
