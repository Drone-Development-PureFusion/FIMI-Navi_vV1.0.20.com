.class public Lcom/fimi/widget/CustomLoadManage;
.super Ljava/lang/Object;
.source "CustomLoadManage.java"


# static fields
.field private static sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/CustomLoadDialog;->dismiss()V

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    .line 61
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/fimi/widget/CustomLoadDialog;

    sget v1, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    invoke-direct {v0, p0, v1}, Lcom/fimi/widget/CustomLoadDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    .line 21
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/CustomLoadDialog;->show()V

    .line 24
    :cond_0
    return-void
.end method

.method public static showNoClick(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 27
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/fimi/widget/CustomLoadDialog;

    sget v1, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    invoke-direct {v0, p0, v1}, Lcom/fimi/widget/CustomLoadDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    .line 29
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomLoadDialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomLoadDialog;->setCancelable(Z)V

    .line 31
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/CustomLoadDialog;->show()V

    .line 33
    :cond_0
    return-void
.end method

.method public static showNoClickWithOutProgressBar(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isShowPb"    # Z

    .prologue
    const/4 v2, 0x0

    .line 48
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/fimi/widget/CustomLoadDialog;

    sget v1, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    invoke-direct {v0, p0, v1, p1}, Lcom/fimi/widget/CustomLoadDialog;-><init>(Landroid/content/Context;IZ)V

    sput-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    .line 50
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomLoadDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomLoadDialog;->setCancelable(Z)V

    .line 52
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/CustomLoadDialog;->x8Show()V

    .line 54
    :cond_0
    return-void
.end method

.method public static x8ShowNoClick(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/fimi/widget/CustomLoadDialog;

    sget v1, Lcom/fimi/sdk/R$style;->network_load_progress_dialog:I

    invoke-direct {v0, p0, v1}, Lcom/fimi/widget/CustomLoadDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    .line 39
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomLoadDialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomLoadDialog;->setCancelable(Z)V

    .line 41
    sget-object v0, Lcom/fimi/widget/CustomLoadManage;->sCustomLoadDialog:Lcom/fimi/widget/CustomLoadDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/CustomLoadDialog;->x8Show()V

    .line 43
    :cond_0
    return-void
.end method
