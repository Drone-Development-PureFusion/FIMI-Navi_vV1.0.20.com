.class public Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogBuilder"
.end annotation


# instance fields
.field private dialog:Lcom/fimi/widget/DialogUtil;

.field isShowImage:Z

.field private mContext:Landroid/content/Context;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->isShowImage:Z

    .line 239
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    .line 240
    new-instance v0, Lcom/fimi/widget/DialogUtil;

    iget-object v1, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/sdk/R$style;->DropDialog1:I

    invoke-direct {v0, v1, v2}, Lcom/fimi/widget/DialogUtil;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    .line 241
    return-void
.end method


# virtual methods
.method public create()Lcom/fimi/widget/DialogUtil;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 259
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 260
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/fimi/sdk/R$layout;->x9_screen_dialog_double_button:I

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 261
    .local v4, "layout":Landroid/view/View;
    sget v10, Lcom/fimi/sdk/R$id;->progress_tv:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 262
    .local v8, "textView":Landroid/widget/TextView;
    sget v10, Lcom/fimi/sdk/R$id;->img_show:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 263
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v10, Lcom/fimi/sdk/R$id;->progressBar:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 264
    .local v6, "progressBar":Landroid/widget/ProgressBar;
    iget-boolean v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->isShowImage:Z

    if-eqz v10, :cond_1

    .line 265
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 272
    :goto_0
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->message:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 273
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->message:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v10, v4}, Lcom/fimi/widget/DialogUtil;->setContentView(Landroid/view/View;)V

    .line 277
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v10}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setGravity(I)V

    .line 278
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v10}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v10

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v10}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 280
    .local v9, "window":Landroid/view/Window;
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/fimi/sdk/R$dimen;->dialog_width:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, -0x2

    invoke-virtual {v9, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 281
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v10}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 282
    .local v1, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 283
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const v10, 0x3f666666    # 0.9f

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 284
    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 285
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v10

    iget-object v11, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v11

    if-le v10, v11, :cond_2

    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    .line 286
    invoke-static {v10}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v10

    int-to-float v7, v10

    .line 287
    .local v7, "screenheight":F
    :goto_1
    const/high16 v10, 0x435a0000    # 218.0f

    mul-float/2addr v10, v7

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 288
    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 290
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v10}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    return-object v10

    .line 268
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "dialogWindow":Landroid/view/Window;
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "screenheight":F
    .end local v9    # "window":Landroid/view/Window;
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    invoke-virtual {v6, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 286
    .restart local v1    # "dialogWindow":Landroid/view/Window;
    .restart local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v9    # "window":Landroid/view/Window;
    :cond_2
    iget-object v10, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    int-to-float v7, v10

    goto :goto_1
.end method

.method public getDialog()Lcom/fimi/widget/DialogUtil;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->message:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;Z)Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isShowImage"    # Z

    .prologue
    .line 252
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->message:Ljava/lang/String;

    .line 253
    iput-boolean p2, p0, Lcom/fimi/widget/DialogUtil$ProgressDialogBuilder;->isShowImage:Z

    .line 254
    return-object p0
.end method
