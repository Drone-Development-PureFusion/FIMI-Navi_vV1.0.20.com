.class public Lcom/fimi/widget/NetworkDialog;
.super Landroid/app/Dialog;
.source "NetworkDialog.java"


# instance fields
.field private count:I

.field private isHint:Z

.field private mHandler:Landroid/os/Handler;

.field private mTvLoad:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "isHint"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/widget/NetworkDialog;->count:I

    .line 23
    new-instance v0, Lcom/fimi/widget/NetworkDialog$1;

    invoke-direct {v0, p0}, Lcom/fimi/widget/NetworkDialog$1;-><init>(Lcom/fimi/widget/NetworkDialog;)V

    iput-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mHandler:Landroid/os/Handler;

    .line 45
    iput-boolean p3, p0, Lcom/fimi/widget/NetworkDialog;->isHint:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/NetworkDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/NetworkDialog;

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/widget/NetworkDialog;->count:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/widget/NetworkDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/NetworkDialog;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/fimi/widget/NetworkDialog;->count:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/widget/NetworkDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/NetworkDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mTvLoad:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/widget/NetworkDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/NetworkDialog;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    iget-boolean v0, p0, Lcom/fimi/widget/NetworkDialog;->isHint:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/fimi/sdk/R$layout;->fimisdk_dialog_network_loading:I

    invoke-virtual {p0, v0}, Lcom/fimi/widget/NetworkDialog;->setContentView(I)V

    .line 53
    sget v0, Lcom/fimi/sdk/R$id;->tv_load:I

    invoke-virtual {p0, v0}, Lcom/fimi/widget/NetworkDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mTvLoad:Landroid/widget/TextView;

    .line 54
    iget-boolean v0, p0, Lcom/fimi/widget/NetworkDialog;->isHint:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mTvLoad:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog;->mTvLoad:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
