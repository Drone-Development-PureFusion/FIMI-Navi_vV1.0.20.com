.class public Lcom/fimi/kernel/security/SharePrefernceSec;
.super Ljava/lang/Object;
.source "SharePrefernceSec.java"


# static fields
.field private static final KEY_SP_STORE_MANAGER:Ljava/lang/String; = "SPStoreManager"

.field private static final isEncrypt:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/fimi/kernel/security/SecurePreferences;

    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const-string v3, "SPStoreManager"

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "key_storeName"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/fimi/kernel/security/SecurePreferences;

    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2, p0}, Lcom/fimi/kernel/security/SecurePreferences;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
