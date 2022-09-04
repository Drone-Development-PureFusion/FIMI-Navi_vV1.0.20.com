.class public Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleButtonBuilder"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private dialog:Lcom/fimi/widget/DialogUtil;

.field private downLoadFirmware:Z

.field private ensureColor:I

.field private leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private leftButtonText:Ljava/lang/String;

.field private leftTextButtonColor:I

.field public mContext:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private rightButtonText:Ljava/lang/String;

.field private rightTextButtonColor:I

.field private righteButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private singleButtonClickListern:Landroid/content/DialogInterface$OnClickListener;

.field private singleButtonText:Ljava/lang/String;

.field private singleDrawable:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightTextButtonColor:I

    .line 49
    iput v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftTextButtonColor:I

    .line 60
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/fimi/widget/DialogUtil;

    iget-object v1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/sdk/R$style;->DropDialog1:I

    invoke-direct {v0, v1, v2}, Lcom/fimi/widget/DialogUtil;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Lcom/fimi/widget/DialogUtil;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->righteButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonClickListern:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/fimi/widget/DialogUtil;
    .locals 15

    .prologue
    .line 138
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 139
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 140
    .local v5, "layout":Landroid/view/View;
    iget-boolean v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->downLoadFirmware:Z

    if-eqz v12, :cond_b

    .line 141
    sget v12, Lcom/fimi/sdk/R$layout;->down_firmware_dialog_content_double_button:I

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 151
    :goto_0
    sget v12, Lcom/fimi/sdk/R$id;->left_btn:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 152
    .local v6, "leftBtn":Landroid/widget/Button;
    sget v12, Lcom/fimi/sdk/R$id;->right_btn:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 153
    .local v9, "rightBtn":Landroid/widget/Button;
    sget v12, Lcom/fimi/sdk/R$id;->msg_tv:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 154
    .local v8, "msgTv":Landroid/widget/TextView;
    sget v12, Lcom/fimi/sdk/R$id;->single_btn:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 155
    .local v10, "singleBtn":Landroid/widget/Button;
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightButtonText:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 156
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightButtonText:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonText:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 160
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonText:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_1
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->message:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 163
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->message:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_2
    iget v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightTextButtonColor:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 166
    iget v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightTextButtonColor:I

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 168
    :cond_3
    iget v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftTextButtonColor:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    .line 169
    iget v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftTextButtonColor:I

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 171
    :cond_4
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->righteButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v12, :cond_5

    .line 172
    new-instance v12, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;

    invoke-direct {v12, p0}, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$1;-><init>(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)V

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_5
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v12, :cond_6

    .line 183
    new-instance v12, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$2;

    invoke-direct {v12, p0}, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$2;-><init>(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)V

    invoke-virtual {v6, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_6
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonText:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 193
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonText:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_7
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonClickListern:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v12, :cond_8

    .line 196
    new-instance v12, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$3;

    invoke-direct {v12, p0}, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder$3;-><init>(Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;)V

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_8
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->content:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 206
    sget v12, Lcom/fimi/sdk/R$id;->content_tv:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    .local v1, "contentTv":Landroid/widget/TextView;
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->content:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v1    # "contentTv":Landroid/widget/TextView;
    :cond_9
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_a

    .line 210
    sget v12, Lcom/fimi/sdk/R$id;->content_iv:I

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 211
    .local v0, "contentIv":Landroid/widget/ImageView;
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    .end local v0    # "contentIv":Landroid/widget/ImageView;
    :cond_a
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v12, v5}, Lcom/fimi/widget/DialogUtil;->setContentView(Landroid/view/View;)V

    .line 214
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v12}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/view/Window;->setGravity(I)V

    .line 215
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v12}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 216
    .local v11, "window":Landroid/view/Window;
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/fimi/sdk/R$dimen;->dialog_width:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, -0x2

    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setLayout(II)V

    .line 217
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v12}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v12

    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v12, v13}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v12}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 219
    .local v3, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 220
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    const v12, 0x3f666666    # 0.9f

    iput v12, v7, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 221
    invoke-virtual {v11, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 222
    invoke-virtual {v3, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 224
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    invoke-virtual {v12}, Lcom/fimi/widget/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 225
    .local v2, "decorView":Landroid/view/View;
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    return-object v12

    .line 143
    .end local v2    # "decorView":Landroid/view/View;
    .end local v3    # "dialogWindow":Landroid/view/Window;
    .end local v6    # "leftBtn":Landroid/widget/Button;
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "msgTv":Landroid/widget/TextView;
    .end local v9    # "rightBtn":Landroid/widget/Button;
    .end local v10    # "singleBtn":Landroid/widget/Button;
    .end local v11    # "window":Landroid/view/Window;
    :cond_b
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->content:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 144
    sget v12, Lcom/fimi/sdk/R$layout;->vertical_screen_dialog_content_double_button:I

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0

    .line 145
    :cond_c
    iget-object v12, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_d

    .line 146
    sget v12, Lcom/fimi/sdk/R$layout;->vertical_screen_single_dialog_double_button:I

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0

    .line 148
    :cond_d
    sget v12, Lcom/fimi/sdk/R$layout;->x9_screen_dialog_double_button:I

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getDialog()Lcom/fimi/widget/DialogUtil;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->dialog:Lcom/fimi/widget/DialogUtil;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->content:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public setDownLoadFirmware(Z)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "downLoadFirmware"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->downLoadFirmware:Z

    .line 134
    return-object p0
.end method

.method public setEnsureColor(I)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->ensureColor:I

    .line 129
    return-object p0
.end method

.method public setLeftButtonText(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "leftButtonText"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonText:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public setLeftButtonText(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "leftButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonText:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    return-object p0
.end method

.method public setLeftTextButtonColor(I)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "leftTextButtonColor"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->leftTextButtonColor:I

    .line 96
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->message:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public setRightButtonText(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "rightButtonText"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightButtonText:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setRightButtonText(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "rightButtonText"    # Ljava/lang/String;
    .param p2, "listern"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightButtonText:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->righteButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    return-object p0
.end method

.method public setRightTextButtonColor(I)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "rightTextButtonColor"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->rightTextButtonColor:I

    .line 91
    return-object p0
.end method

.method public setSingleButtonText(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "singleButtonText"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonText:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setSingleButtonText(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "singleButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonText:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleButtonClickListern:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    return-object p0
.end method

.method public setSingleDrawable(Landroid/graphics/drawable/Drawable;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "singleDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->singleDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/widget/DialogUtil$DoubleButtonBuilder;->title:Ljava/lang/String;

    .line 66
    return-object p0
.end method
