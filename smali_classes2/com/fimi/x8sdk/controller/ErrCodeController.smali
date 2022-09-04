.class public Lcom/fimi/x8sdk/controller/ErrCodeController;
.super Ljava/lang/Object;
.source "ErrCodeController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrCodeEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcom/fimi/x8sdk/process/FcErrProcess;->getFcErrProcess()Lcom/fimi/x8sdk/process/FcErrProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/process/FcErrProcess;->getErrCodeEntities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerErrCodeListener(Lcom/fimi/x8sdk/listener/ErrcodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/ErrcodeListener;

    .prologue
    .line 23
    invoke-static {}, Lcom/fimi/x8sdk/process/FcErrProcess;->getFcErrProcess()Lcom/fimi/x8sdk/process/FcErrProcess;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/process/FcErrProcess;->registerErrListener(Lcom/fimi/x8sdk/listener/ErrcodeListener;)V

    .line 24
    return-void
.end method

.method public removeAllErrCodeListener()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/fimi/x8sdk/process/FcErrProcess;->getFcErrProcess()Lcom/fimi/x8sdk/process/FcErrProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/process/FcErrProcess;->removeAllErrList()V

    .line 41
    return-void
.end method

.method public removeErrCodeListener(Lcom/fimi/x8sdk/listener/ErrcodeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/ErrcodeListener;

    .prologue
    .line 32
    invoke-static {}, Lcom/fimi/x8sdk/process/FcErrProcess;->getFcErrProcess()Lcom/fimi/x8sdk/process/FcErrProcess;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/process/FcErrProcess;->removeErrListener(Lcom/fimi/x8sdk/listener/ErrcodeListener;)V

    .line 33
    return-void
.end method
