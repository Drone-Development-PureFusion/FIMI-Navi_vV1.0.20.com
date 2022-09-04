.class public Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8SingleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_view_custom_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->setContentView(I)V

    .line 26
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 27
    .local v3, "x8CbSingDialog":Landroid/widget/CheckBox;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 29
    if-eqz p2, :cond_0

    .line 30
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 31
    .local v2, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .end local v2    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_sure:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 38
    .local v1, "tvSure":Landroid/widget/Button;
    new-instance v4, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$1;

    invoke-direct {v4, p0, p4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "btnTxt"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isShowCheckBox"    # Z
    .param p6, "listener"    # Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 53
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_view_custom_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->setContentView(I)V

    .line 56
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 57
    .local v3, "x8CbSingDialog":Landroid/widget/CheckBox;
    if-eqz p5, :cond_1

    .line 58
    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 59
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v4

    const-string v5, "sp_key_not_tips"

    invoke-virtual {v4, v5, v6}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    new-instance v4, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$2;

    invoke-direct {v4, p0, v3}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :goto_0
    if-eqz p2, :cond_0

    .line 76
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .end local v2    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_sure:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 84
    .local v1, "tvSure":Landroid/widget/Button;
    invoke-virtual {v1, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v4, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;

    invoke-direct {v4, p0, p6}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$3;-><init>(Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 71
    .end local v0    # "tvMessage":Landroid/widget/TextView;
    .end local v1    # "tvSure":Landroid/widget/Button;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method
