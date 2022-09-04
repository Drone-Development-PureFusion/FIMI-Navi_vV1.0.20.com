.class public Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
.super Ljava/lang/Object;
.source "FirmwareUpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/FirmwareUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private clickOutIsCancle:Z

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private delcare:Ljava/lang/String;

.field private isSingle:Z

.field private leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private leftButtonText:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private rightButtonText:Ljava/lang/String;

.field private singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private singleButtonText:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->isSingle:Z

    .line 43
    iput-boolean v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->clickOutIsCancle:Z

    .line 46
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/FirmwareUpdateDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/FirmwareUpdateDialog$Builder;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/widget/FirmwareUpdateDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/FirmwareUpdateDialog$Builder;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private setBoldText(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 240
    .local v0, "tp":Landroid/text/TextPaint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 241
    return-void
.end method


# virtual methods
.method public create()Lcom/fimi/widget/FirmwareUpdateDialog;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 171
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 173
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/fimi/widget/FirmwareUpdateDialog;

    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    sget v4, Lcom/fimi/sdk/R$style;->fimisdk_custom_dialog:I

    invoke-direct {v0, v3, v4}, Lcom/fimi/widget/FirmwareUpdateDialog;-><init>(Landroid/content/Context;I)V

    .line 174
    .local v0, "dialog":Lcom/fimi/widget/FirmwareUpdateDialog;
    sget v3, Lcom/fimi/sdk/R$layout;->fimisdk_dialog_fimware_update:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, "layout":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/fimi/widget/FirmwareUpdateDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 179
    sget v3, Lcom/fimi/sdk/R$id;->btn_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonText:Ljava/lang/String;

    .line 180
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    .line 182
    sget v3, Lcom/fimi/sdk/R$id;->btn_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$1;-><init>(Lcom/fimi/widget/FirmwareUpdateDialog$Builder;Lcom/fimi/widget/FirmwareUpdateDialog;)V

    .line 183
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 193
    sget v3, Lcom/fimi/sdk/R$id;->btn_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonText:Ljava/lang/String;

    .line 194
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 196
    sget v3, Lcom/fimi/sdk/R$id;->btn_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;-><init>(Lcom/fimi/widget/FirmwareUpdateDialog$Builder;Lcom/fimi/widget/FirmwareUpdateDialog;)V

    .line 197
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->message:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 206
    sget v3, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    sget v3, Lcom/fimi/sdk/R$id;->tv_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 209
    :cond_2
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 210
    sget v3, Lcom/fimi/sdk/R$id;->tv_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    sget v3, Lcom/fimi/sdk/R$id;->tv_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->setBoldText(Landroid/widget/TextView;)V

    .line 213
    :cond_3
    iget-boolean v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->isSingle:Z

    if-eqz v3, :cond_6

    .line 214
    sget v3, Lcom/fimi/sdk/R$id;->rl_double:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 215
    sget v3, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->subTitle:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 221
    sget v3, Lcom/fimi/sdk/R$id;->tv_sub_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->subTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_4
    iget-object v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->delcare:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 224
    sget v3, Lcom/fimi/sdk/R$id;->tv_delcare:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->delcare:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_5
    iget-boolean v3, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->clickOutIsCancle:Z

    if-eqz v3, :cond_7

    .line 228
    invoke-virtual {v0, v6}, Lcom/fimi/widget/FirmwareUpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 229
    invoke-virtual {v0, v6}, Lcom/fimi/widget/FirmwareUpdateDialog;->setCancelable(Z)V

    .line 234
    :goto_1
    invoke-virtual {v0, v2}, Lcom/fimi/widget/FirmwareUpdateDialog;->setContentView(Landroid/view/View;)V

    .line 235
    return-object v0

    .line 217
    :cond_6
    sget v3, Lcom/fimi/sdk/R$id;->rl_double:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 218
    sget v3, Lcom/fimi/sdk/R$id;->btn_single:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 231
    :cond_7
    invoke-virtual {v0, v7}, Lcom/fimi/widget/FirmwareUpdateDialog;->setCanceledOnTouchOutside(Z)V

    .line 232
    invoke-virtual {v0, v7}, Lcom/fimi/widget/FirmwareUpdateDialog;->setCancelable(Z)V

    goto :goto_1
.end method

.method public setClickOutIsCancle(Z)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "clickOutIsCancle"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->clickOutIsCancle:Z

    .line 166
    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->contentView:Landroid/view/View;

    .line 106
    return-object p0
.end method

.method public setDelcare(Ljava/lang/String;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "delcare"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->delcare:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setLeftButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    .line 148
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonText:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 150
    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "leftButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonText:Ljava/lang/String;

    .line 156
    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->leftButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 157
    return-object p0
.end method

.method public setMessage(I)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->message:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->message:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public setRightButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 1
    .param p1, "rightButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonText:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    return-object p0
.end method

.method public setRightButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "rightButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonText:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->rightButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    return-object p0
.end method

.method public setSingle(Z)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "single"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->isSingle:Z

    .line 77
    return-object p0
.end method

.method public setSingleButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 1
    .param p1, "singleButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->singleButtonText:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    return-object p0
.end method

.method public setSingleButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "singleButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->singleButtonText:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->singleButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    return-object p0
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->subTitle:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setTitle(I)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->title:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/fimi/widget/FirmwareUpdateDialog$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->title:Ljava/lang/String;

    .line 101
    return-object p0
.end method
