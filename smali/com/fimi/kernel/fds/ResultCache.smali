.class public Lcom/fimi/kernel/fds/ResultCache;
.super Ljava/lang/Object;
.source "ResultCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessToken(I)Ljava/lang/String;
    .locals 2
    .param p0, "scope"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAlgorithm(I)Ljava/lang/String;
    .locals 2
    .param p0, "scope"    # I

    .prologue
    .line 12
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "macAlgorithm"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "scope"    # I

    .prologue
    .line 20
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "mackey"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAccessToken(ILjava/lang/String;)V
    .locals 2
    .param p0, "scope"    # I
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static setMacAlgorithm(ILjava/lang/String;)V
    .locals 2
    .param p0, "scope"    # I
    .param p1, "macAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "macAlgorithm"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static setMacKey(ILjava/lang/String;)V
    .locals 2
    .param p0, "scope"    # I
    .param p1, "macKey"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "mackey"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
