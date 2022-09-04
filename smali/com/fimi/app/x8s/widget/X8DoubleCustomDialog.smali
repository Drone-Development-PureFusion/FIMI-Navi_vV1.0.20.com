.class public Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8DoubleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
    }
.end annotation


# instance fields
.field public x8CbSingDialog:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 6
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
    .param p4, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_double_dialog_custom:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setContentView(I)V

    .line 24
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    .line 25
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 26
    if-eqz p2, :cond_0

    .line 27
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 28
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "tvLeft":Landroid/widget/TextView;
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    .local v2, "tvRight":Landroid/widget/TextView;
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$1;

    invoke-direct {v4, p0, p4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;

    invoke-direct {v4, p0, p4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 6
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
    .param p4, "btnRight"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_double_dialog_custom:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setContentView(I)V

    .line 62
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    .line 63
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "tvLeft":Landroid/widget/TextView;
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, "tvRight":Landroid/widget/TextView;
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$3;

    invoke-direct {v4, p0, p5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$3;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$4;

    invoke-direct {v4, p0, p5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$4;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 6
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
    .param p4, "btnLeft"    # Ljava/lang/String;
    .param p5, "btnRight"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_double_dialog_custom:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setContentView(I)V

    .line 100
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    .line 101
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    if-eqz p2, :cond_0

    .line 103
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "tvLeft":Landroid/widget/TextView;
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 112
    .local v2, "tvRight":Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$5;

    invoke-direct {v4, p0, p6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$5;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$6;

    invoke-direct {v4, p0, p6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$6;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 6
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
    .param p4, "btnLeft"    # Ljava/lang/String;
    .param p5, "btnRight"    # Ljava/lang/String;
    .param p6, "checkStr"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 138
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_double_dialog_custom:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setContentView(I)V

    .line 140
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    .line 141
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 142
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->x8CbSingDialog:Landroid/widget/CheckBox;

    invoke-virtual {v4, p6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 143
    if-eqz p2, :cond_0

    .line 144
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 145
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, "tvLeft":Landroid/widget/TextView;
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 153
    .local v2, "tvRight":Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$7;

    invoke-direct {v4, p0, p7}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$7;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v4, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$8;

    invoke-direct {v4, p0, p7}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$8;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method
