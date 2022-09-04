.class public Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8EditorCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;
    }
.end annotation


# instance fields
.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private isShowInput:Z

.field private final mEtView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    sget v0, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->isShowInput:Z

    .line 31
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_editor_dialog_custom:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->setContentView(I)V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 35
    .local v7, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .end local v7    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 40
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "tvLeft":Landroid/widget/TextView;
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, "tvRight":Landroid/widget/TextView;
    sget v0, Lcom/fimi/app/x8s/R$id;->img_middle:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 44
    .local v4, "imgMiddle":Landroid/view/View;
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_dialog_editor_name_center_pic:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 45
    .local v5, "editorPic":Landroid/widget/ImageView;
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_dialog_editor_name_center_ok:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 47
    .local v6, "btnCenter":Landroid/widget/Button;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/Button;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$2;

    invoke-direct {v0, p0, p3}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;

    invoke-direct {v0, p0, p3}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$3;-><init>(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$4;

    invoke-direct {v0, p0, p3}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$4;-><init>(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->isShowInput:Z

    return p1
.end method


# virtual methods
.method public hideSoftInputFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->isShowInput:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 113
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->isShowInput:Z

    .line 115
    :cond_0
    return-void
.end method

.method public showSoftInputFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->mEtView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 106
    iput-boolean v3, p0, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->isShowInput:Z

    .line 108
    :cond_0
    return-void
.end method
