.class public Lcom/fimi/thirdpartysdk/login/LoginResultCache;
.super Ljava/lang/Object;
.source "LoginResultCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessToken(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scope"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAlgorithm(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scope"    # I

    .prologue
    .line 13
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "macAlgorithm"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scope"    # I

    .prologue
    .line 21
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "mackey"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAccessToken(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scope"    # I
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-virtual {v0, v1, p2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static setMacAlgorithm(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scope"    # I
    .param p2, "macAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "macAlgorithm"

    invoke-virtual {v0, v1, p2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static setMacKey(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scope"    # I
    .param p2, "macKey"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "mackey"

    invoke-virtual {v0, v1, p2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
