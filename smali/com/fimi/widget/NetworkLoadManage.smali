.class public Lcom/fimi/widget/NetworkLoadManage;
.super Ljava/lang/Object;
.source "NetworkLoadManage.java"


# static fields
.field private static mNetworkDialog:Lcom/fimi/widget/NetworkDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fimi/widget/NetworkLoadManage;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/fimi/widget/NetworkLoadManage;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/NetworkDialog;->dismiss()V

    .line 29
    :cond_0
    return-void
.end method

.method public static outCancel(Z)V
    .locals 2
    .param p0, "cancel"    # Z

    .prologue
    .line 32
    sget-object v0, Lcom/fimi/widget/NetworkLoadManage;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/fimi/widget/NetworkLoadManage;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/NetworkDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    new-instance v1, Lcom/fimi/widget/NetworkDialog;

    sget v2, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/fimi/widget/NetworkDialog;-><init>(Landroid/content/Context;IZ)V

    sput-object v1, Lcom/fimi/widget/NetworkLoadManage;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    .line 19
    :try_start_0
    sget-object v1, Lcom/fimi/widget/NetworkLoadManage;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/NetworkDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
