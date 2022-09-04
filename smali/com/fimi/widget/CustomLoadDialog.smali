.class public Lcom/fimi/widget/CustomLoadDialog;
.super Landroid/app/Dialog;
.source "CustomLoadDialog.java"


# instance fields
.field private isShowPb:Z

.field private mPbLoad:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/widget/CustomLoadDialog;->isShowPb:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/widget/CustomLoadDialog;->isShowPb:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
    .param p3, "isShowPb"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/widget/CustomLoadDialog;->isShowPb:Z

    .line 34
    iput-boolean p3, p0, Lcom/fimi/widget/CustomLoadDialog;->isShowPb:Z

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/widget/CustomLoadDialog;->isShowPb:Z

    .line 39
    return-void
.end method

.method private static fullScreenImmersive(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 53
    const/16 v0, 0x1706

    .line 59
    .local v0, "uiOptions":I
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 61
    .end local v0    # "uiOptions":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Lcom/fimi/sdk/R$layout;->fimisdk_dialog_loading:I

    invoke-virtual {p0, v0}, Lcom/fimi/widget/CustomLoadDialog;->setContentView(I)V

    .line 45
    iget-boolean v0, p0, Lcom/fimi/widget/CustomLoadDialog;->isShowPb:Z

    if-eqz v0, :cond_0

    .line 46
    sget v0, Lcom/fimi/sdk/R$id;->pb_load:I

    invoke-virtual {p0, v0}, Lcom/fimi/widget/CustomLoadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fimi/widget/CustomLoadDialog;->mPbLoad:Landroid/widget/ProgressBar;

    .line 47
    iget-object v0, p0, Lcom/fimi/widget/CustomLoadDialog;->mPbLoad:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public x8Show()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 64
    invoke-virtual {p0}, Lcom/fimi/widget/CustomLoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 65
    invoke-virtual {p0}, Lcom/fimi/widget/CustomLoadDialog;->show()V

    .line 66
    invoke-virtual {p0}, Lcom/fimi/widget/CustomLoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/widget/CustomLoadDialog;->fullScreenImmersive(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/fimi/widget/CustomLoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 68
    return-void
.end method
