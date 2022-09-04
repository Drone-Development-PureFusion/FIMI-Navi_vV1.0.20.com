.class public interface abstract Lcom/fimi/kernel/upgrade/interfaces/IUpgradeListener;
.super Ljava/lang/Object;
.source "IUpgradeListener.java"


# virtual methods
.method public abstract onConnectFialed(Ljava/lang/String;)V
.end method

.method public abstract onCurrentUpgrade(I)V
.end method

.method public abstract onFileNotFind()V
.end method

.method public abstract onInterrupt(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/upgrade/interfaces/IFirmwareInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onProcess(JJ)V
.end method

.method public abstract onResult(ZLjava/lang/String;)V
.end method

.method public abstract onSendError(Ljava/lang/String;)V
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
