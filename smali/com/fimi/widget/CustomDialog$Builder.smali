.class public Lcom/fimi/widget/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private clickOutIsCancle:Z

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private gravity:I

.field private isShowVirtKey:Z

.field private isSingle:Z

.field private isSpan:Z

.field private isVerticalScreen:Z

.field private leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private leftButtonColor:I

.field private leftButtonText:Ljava/lang/String;

.field private message:Ljava/lang/CharSequence;

.field private rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private rightButtonColor:I

.field private rightButtonText:Ljava/lang/String;

.field private singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private singleButtonColor:I

.field private singleButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v1, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonColor:I

    .line 52
    iput v1, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonColor:I

    .line 53
    iput v1, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonColor:I

    .line 54
    iput v1, p0, Lcom/fimi/widget/CustomDialog$Builder;->titleColor:I

    .line 59
    iput-boolean v2, p0, Lcom/fimi/widget/CustomDialog$Builder;->isSingle:Z

    .line 61
    iput-boolean v2, p0, Lcom/fimi/widget/CustomDialog$Builder;->clickOutIsCancle:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->isShowVirtKey:Z

    .line 63
    iput-boolean v2, p0, Lcom/fimi/widget/CustomDialog$Builder;->isVerticalScreen:Z

    .line 64
    iput v1, p0, Lcom/fimi/widget/CustomDialog$Builder;->gravity:I

    .line 65
    iput-boolean v2, p0, Lcom/fimi/widget/CustomDialog$Builder;->isSpan:Z

    .line 68
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/widget/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/CustomDialog$Builder;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/widget/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/CustomDialog$Builder;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/widget/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/CustomDialog$Builder;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private setBoldText(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 368
    .local v0, "tp":Landroid/text/TextPaint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 369
    return-void
.end method


# virtual methods
.method public create()Lcom/fimi/widget/CustomDialog;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 224
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    .line 225
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 227
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/fimi/widget/CustomDialog;

    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    sget v7, Lcom/fimi/sdk/R$style;->fimisdk_custom_dialog:I

    invoke-direct {v0, v6, v7}, Lcom/fimi/widget/CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 229
    .local v0, "dialog":Lcom/fimi/widget/CustomDialog;
    iget-boolean v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->isVerticalScreen:Z

    if-eqz v6, :cond_c

    .line 230
    sget v6, Lcom/fimi/sdk/R$layout;->fimisdk_vertical_dialog_custom:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "layout":Landroid/view/View;
    :goto_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v6}, Lcom/fimi/widget/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonText:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 238
    sget v6, Lcom/fimi/sdk/R$id;->btn_right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonText:Ljava/lang/String;

    .line 239
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_0

    .line 241
    sget v6, Lcom/fimi/sdk/R$id;->btn_right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/fimi/widget/CustomDialog$Builder$1;

    invoke-direct {v7, p0, v0}, Lcom/fimi/widget/CustomDialog$Builder$1;-><init>(Lcom/fimi/widget/CustomDialog$Builder;Lcom/fimi/widget/CustomDialog;)V

    .line 242
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :cond_0
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonText:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 252
    sget v6, Lcom/fimi/sdk/R$id;->btn_left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonText:Ljava/lang/String;

    .line 253
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_1

    .line 255
    sget v6, Lcom/fimi/sdk/R$id;->btn_left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/fimi/widget/CustomDialog$Builder$2;

    invoke-direct {v7, p0, v0}, Lcom/fimi/widget/CustomDialog$Builder$2;-><init>(Lcom/fimi/widget/CustomDialog$Builder;Lcom/fimi/widget/CustomDialog;)V

    .line 256
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_1
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonText:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 265
    sget v6, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonText:Ljava/lang/String;

    .line 266
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_2

    .line 268
    sget v6, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v7, Lcom/fimi/widget/CustomDialog$Builder$3;

    invoke-direct {v7, p0, v0}, Lcom/fimi/widget/CustomDialog$Builder$3;-><init>(Lcom/fimi/widget/CustomDialog$Builder;Lcom/fimi/widget/CustomDialog;)V

    .line 269
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_2
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->message:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 278
    sget v6, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v6, Lcom/fimi/sdk/R$id;->tv_content_sigle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->message:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_3
    iget v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->titleColor:I

    if-eq v6, v10, :cond_4

    .line 282
    sget v6, Lcom/fimi/sdk/R$id;->tv_title:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->titleColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    :cond_4
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->title:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->title:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 285
    sget v6, Lcom/fimi/sdk/R$id;->tv_title:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 286
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 287
    .local v4, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 288
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .end local v4    # "textPaint":Landroid/text/TextPaint;
    .end local v5    # "textView":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {v0, v2}, Lcom/fimi/widget/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 298
    iget-boolean v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->isSingle:Z

    if-eqz v6, :cond_e

    .line 299
    sget v6, Lcom/fimi/sdk/R$id;->rl_double:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 300
    sget v6, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_2
    iget-boolean v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->clickOutIsCancle:Z

    if-eqz v6, :cond_f

    .line 306
    invoke-virtual {v0, v9}, Lcom/fimi/widget/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 307
    invoke-virtual {v0, v9}, Lcom/fimi/widget/CustomDialog;->setCancelable(Z)V

    .line 313
    :goto_3
    iget-boolean v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->isSpan:Z

    if-eqz v6, :cond_5

    .line 314
    sget v6, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 315
    sget v6, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 317
    :cond_5
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/view/View;

    sget v8, Lcom/fimi/sdk/R$id;->btn_right:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v9

    sget v8, Lcom/fimi/sdk/R$id;->btn_left:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v11

    sget v8, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x3

    sget v9, Lcom/fimi/sdk/R$id;->tv_title:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    sget v8, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x5

    sget v9, Lcom/fimi/sdk/R$id;->tv_content_sigle:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 319
    iget v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonColor:I

    if-eq v6, v10, :cond_6

    .line 320
    sget v6, Lcom/fimi/sdk/R$id;->btn_right:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 322
    :cond_6
    iget v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonColor:I

    if-eq v6, v10, :cond_7

    .line 323
    sget v6, Lcom/fimi/sdk/R$id;->btn_left:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 325
    :cond_7
    iget v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonColor:I

    if-eq v6, v10, :cond_8

    .line 326
    sget v6, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 328
    :cond_8
    iget v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->gravity:I

    if-eq v6, v10, :cond_9

    .line 329
    sget v6, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget v7, p0, Lcom/fimi/widget/CustomDialog$Builder;->gravity:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    :cond_9
    iget-boolean v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->isVerticalScreen:Z

    if-eqz v6, :cond_a

    .line 332
    invoke-virtual {v0}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 333
    invoke-virtual {v0}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 334
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v6, 0x14

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 335
    iget-object v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f733333    # 0.95f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 337
    invoke-virtual {v0}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 340
    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    iget-boolean v6, p0, Lcom/fimi/widget/CustomDialog$Builder;->isShowVirtKey:Z

    if-nez v6, :cond_b

    .line 341
    invoke-virtual {v0}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 342
    invoke-virtual {v0}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/fimi/widget/CustomDialog$Builder$4;

    invoke-direct {v7, p0, v0}, Lcom/fimi/widget/CustomDialog$Builder$4;-><init>(Lcom/fimi/widget/CustomDialog$Builder;Lcom/fimi/widget/CustomDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 363
    :cond_b
    return-object v0

    .line 232
    .end local v2    # "layout":Landroid/view/View;
    :cond_c
    sget v6, Lcom/fimi/sdk/R$layout;->fimisdk_dialog_custom:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "layout":Landroid/view/View;
    goto/16 :goto_0

    .line 292
    :cond_d
    sget v6, Lcom/fimi/sdk/R$id;->tv_title:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    sget v6, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    sget v6, Lcom/fimi/sdk/R$id;->tv_content_sigle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 302
    :cond_e
    sget v6, Lcom/fimi/sdk/R$id;->rl_double:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 303
    sget v6, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 309
    :cond_f
    invoke-virtual {v0, v11}, Lcom/fimi/widget/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 310
    invoke-virtual {v0, v11}, Lcom/fimi/widget/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_3
.end method

.method public setClickOutIsCancle(Z)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "clickOutIsCancle"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->clickOutIsCancle:Z

    .line 200
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->contentView:Landroid/view/View;

    .line 112
    return-object p0
.end method

.method public setDissmssListener(Lcom/fimi/widget/DialogManager$OnDismissListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "dissmssListener"    # Lcom/fimi/widget/DialogManager$OnDismissListener;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/fimi/widget/CustomDialog;->access$002(Lcom/fimi/widget/DialogManager$OnDismissListener;)Lcom/fimi/widget/DialogManager$OnDismissListener;

    .line 144
    return-object p0
.end method

.method public setGravity(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->gravity:I

    .line 131
    return-object p0
.end method

.method public setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 151
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonText:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 153
    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "leftButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonText:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 160
    return-object p0
.end method

.method public setLeftButtonColor(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "leftButtonColor"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->leftButtonColor:I

    .line 170
    return-object p0
.end method

.method public setMessage(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 84
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->message:Ljava/lang/CharSequence;

    .line 73
    return-object p0
.end method

.method public setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 1
    .param p1, "rightButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 124
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonText:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "rightButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonText:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    return-object p0
.end method

.method public setRightButtonColor(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "rightButtonColor"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->rightButtonColor:I

    .line 165
    return-object p0
.end method

.method public setShowVirtKey(Z)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "isShowVirtKey"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->isShowVirtKey:Z

    .line 205
    return-object p0
.end method

.method public setSingle(Z)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "single"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->isSingle:Z

    .line 180
    return-object p0
.end method

.method public setSingleButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 1
    .param p1, "singleButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 186
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonText:Ljava/lang/String;

    .line 187
    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 188
    return-object p0
.end method

.method public setSingleButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "singleButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonText:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 195
    return-object p0
.end method

.method public setSingleButtonColor(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "singleButtonColor"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->singleButtonColor:I

    .line 175
    return-object p0
.end method

.method public setSpan(Z)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "span"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->isSpan:Z

    .line 220
    return-object p0
.end method

.method public setTitle(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder;->title:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->title:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public setTitleColor(I)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "titleColor"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->titleColor:I

    .line 210
    return-object p0
.end method

.method public setVerticalScreen(Z)Lcom/fimi/widget/CustomDialog$Builder;
    .locals 0
    .param p1, "verticalScreen"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/fimi/widget/CustomDialog$Builder;->isVerticalScreen:Z

    .line 215
    return-object p0
.end method
