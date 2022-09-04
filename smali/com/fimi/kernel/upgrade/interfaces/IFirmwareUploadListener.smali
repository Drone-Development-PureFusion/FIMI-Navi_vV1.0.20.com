.class public interface abstract Lcom/fimi/kernel/upgrade/interfaces/IFirmwareUploadListener;
.super Ljava/lang/Object;
.source "IFirmwareUploadListener.java"


# virtual methods
.method public abstract onCurrentUpgrade(I)V
.end method

.method public abstract onDeviceConnectInterrupt(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/upgrade/interfaces/IFirmwareInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProcess(II)V
.end method

.method public abstract onUpgradeErrorInfo(Ljava/lang/String;)V
.end method

.method public abstract onUploaAlldError()V
.end method

.method public abstract onUploadComplete(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/upgrade/interfaces/IFirmwareInfo;",
            ">;)V"
        }
    .end annotation
.end method
