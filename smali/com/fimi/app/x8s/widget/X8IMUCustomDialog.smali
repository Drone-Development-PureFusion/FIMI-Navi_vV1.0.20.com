.class public Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8IMUCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;
    }
.end annotation


# instance fields
.field private keyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "messageTwo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "imgSrc"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "listener"    # Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 83
    sget v5, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v5}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 124
    new-instance v5, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$3;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$3;-><init>(Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)V

    iput-object v5, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 84
    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_imu_view_custom_dialog:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->setContentView(I)V

    .line 86
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_message_two:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "tvMessageTwo":Landroid/widget/TextView;
    sget v5, Lcom/fimi/app/x8s/R$id;->x8_imgv_imucheck_state:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 90
    .local v4, "x8ImgvImucheckState":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 91
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    if-eqz p3, :cond_1

    .line 96
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_0
    invoke-virtual {v4, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_sure:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 105
    .local v2, "tvSure":Landroid/widget/Button;
    new-instance v5, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$2;

    invoke-direct {v5, p0, p5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 117
    return-void

    .line 99
    .end local v2    # "tvSure":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V
    .locals 9
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
    .param p4, "messageTwo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "isShowImage"    # Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "listener"    # Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 30
    sget v5, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v5}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 124
    new-instance v5, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$3;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$3;-><init>(Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)V

    iput-object v5, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 31
    invoke-virtual {p0, v7}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_imu_view_custom_dialog:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->setContentView(I)V

    .line 33
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "tvMessage":Landroid/widget/TextView;
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_message_two:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "tvMessageTwo":Landroid/widget/TextView;
    sget v5, Lcom/fimi/app/x8s/R$id;->x8_imgv_imucheck_state:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 36
    .local v4, "x8ImgvImucheckState":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 37
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    .local v3, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    if-eqz p3, :cond_2

    .line 42
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    sget v5, Lcom/fimi/app/x8s/R$string;->x8_fc_item_imu_normal:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$color;->x8_fc_imu_check_namal:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_1
    if-eqz p4, :cond_3

    .line 54
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_2
    if-eqz p5, :cond_4

    .line 61
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :goto_3
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_sure:I

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 68
    .local v2, "tvSure":Landroid/widget/Button;
    new-instance v5, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;

    invoke-direct {v5, p0, p6}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 80
    return-void

    .line 46
    .end local v2    # "tvSure":Landroid/widget/Button;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$color;->x8_fc_imu_check_exception:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 63
    :cond_4
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method
