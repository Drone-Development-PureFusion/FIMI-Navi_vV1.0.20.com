.class public Lcom/fimi/widget/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/DialogManager$OnDialogListener;,
        Lcom/fimi/widget/DialogManager$OnDismissListener;
    }
.end annotation


# instance fields
.field private clickOutIsCancle:Z

.field private context:Landroid/content/Context;

.field private customeLayoutId:I

.field private dialogMessage:Ljava/lang/CharSequence;

.field private dialogTitle:Ljava/lang/String;

.field private dialogView:Landroid/view/View;

.field private isShowVirtKey:Z

.field private isSingle:Z

.field private isSpan:Z

.field private isVerticalScreen:Z

.field private leftBtnText:Ljava/lang/String;

.field private leftButtonColor:I

.field private listener:Lcom/fimi/widget/DialogManager$OnDialogListener;

.field private mCustomDialog:Lcom/fimi/widget/CustomDialog;

.field private mGravity:I

.field private onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;

.field private rightBtnText:Ljava/lang/String;

.field private rightButtonColor:I

.field private singleBtnText:Ljava/lang/String;

.field private singleButtonColor:I

.field private titleColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customeLayoutId"    # I
    .param p3, "dialogTitle"    # Ljava/lang/String;
    .param p4, "rightBtnText"    # Ljava/lang/String;
    .param p5, "leftBtnText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/fimi/widget/DialogManager;->rightButtonColor:I

    .line 25
    iput v0, p0, Lcom/fimi/widget/DialogManager;->leftButtonColor:I

    .line 26
    iput v0, p0, Lcom/fimi/widget/DialogManager;->singleButtonColor:I

    .line 27
    iput v0, p0, Lcom/fimi/widget/DialogManager;->titleColor:I

    .line 28
    iput v0, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    .line 29
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSpan:Z

    .line 36
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->clickOutIsCancle:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/widget/DialogManager;->isShowVirtKey:Z

    .line 38
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isVerticalScreen:Z

    .line 51
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->context:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/fimi/widget/DialogManager;->customeLayoutId:I

    .line 53
    iput-object p3, p0, Lcom/fimi/widget/DialogManager;->dialogTitle:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/fimi/widget/DialogManager;->rightBtnText:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/fimi/widget/DialogManager;->leftBtnText:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/widget/DialogManager;->dialogView:Landroid/view/View;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogTitle"    # Ljava/lang/String;
    .param p3, "dialogMessage"    # Ljava/lang/CharSequence;
    .param p4, "singleBtnText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/fimi/widget/DialogManager;->rightButtonColor:I

    .line 25
    iput v0, p0, Lcom/fimi/widget/DialogManager;->leftButtonColor:I

    .line 26
    iput v0, p0, Lcom/fimi/widget/DialogManager;->singleButtonColor:I

    .line 27
    iput v0, p0, Lcom/fimi/widget/DialogManager;->titleColor:I

    .line 28
    iput v0, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    .line 29
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSpan:Z

    .line 36
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->clickOutIsCancle:Z

    .line 37
    iput-boolean v2, p0, Lcom/fimi/widget/DialogManager;->isShowVirtKey:Z

    .line 38
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isVerticalScreen:Z

    .line 94
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->context:Landroid/content/Context;

    .line 95
    iput-boolean v2, p0, Lcom/fimi/widget/DialogManager;->isSingle:Z

    .line 96
    iput-object p2, p0, Lcom/fimi/widget/DialogManager;->dialogTitle:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/fimi/widget/DialogManager;->dialogMessage:Ljava/lang/CharSequence;

    .line 98
    iput-object p4, p0, Lcom/fimi/widget/DialogManager;->singleBtnText:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogTitle"    # Ljava/lang/String;
    .param p3, "dialogMessage"    # Ljava/lang/CharSequence;
    .param p4, "rightBtnText"    # Ljava/lang/String;
    .param p5, "leftBtnText"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/fimi/widget/DialogManager;->rightButtonColor:I

    .line 25
    iput v0, p0, Lcom/fimi/widget/DialogManager;->leftButtonColor:I

    .line 26
    iput v0, p0, Lcom/fimi/widget/DialogManager;->singleButtonColor:I

    .line 27
    iput v0, p0, Lcom/fimi/widget/DialogManager;->titleColor:I

    .line 28
    iput v0, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    .line 29
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSpan:Z

    .line 36
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->clickOutIsCancle:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/widget/DialogManager;->isShowVirtKey:Z

    .line 38
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isVerticalScreen:Z

    .line 68
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->context:Landroid/content/Context;

    .line 69
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSingle:Z

    .line 70
    iput-object p2, p0, Lcom/fimi/widget/DialogManager;->dialogTitle:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/fimi/widget/DialogManager;->dialogMessage:Ljava/lang/CharSequence;

    .line 72
    iput-object p4, p0, Lcom/fimi/widget/DialogManager;->rightBtnText:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/fimi/widget/DialogManager;->leftBtnText:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogTitle"    # Ljava/lang/String;
    .param p3, "dialogMessage"    # Ljava/lang/CharSequence;
    .param p4, "rightBtnText"    # Ljava/lang/String;
    .param p5, "leftBtnText"    # Ljava/lang/String;
    .param p6, "mGravity"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/fimi/widget/DialogManager;->rightButtonColor:I

    .line 25
    iput v0, p0, Lcom/fimi/widget/DialogManager;->leftButtonColor:I

    .line 26
    iput v0, p0, Lcom/fimi/widget/DialogManager;->singleButtonColor:I

    .line 27
    iput v0, p0, Lcom/fimi/widget/DialogManager;->titleColor:I

    .line 28
    iput v0, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    .line 29
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSpan:Z

    .line 36
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->clickOutIsCancle:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/widget/DialogManager;->isShowVirtKey:Z

    .line 38
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isVerticalScreen:Z

    .line 77
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->context:Landroid/content/Context;

    .line 78
    iput-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSingle:Z

    .line 79
    iput-object p2, p0, Lcom/fimi/widget/DialogManager;->dialogTitle:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/fimi/widget/DialogManager;->dialogMessage:Ljava/lang/CharSequence;

    .line 81
    iput-object p4, p0, Lcom/fimi/widget/DialogManager;->rightBtnText:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/fimi/widget/DialogManager;->leftBtnText:Ljava/lang/String;

    .line 83
    iput p6, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/widget/DialogManager;)Lcom/fimi/widget/DialogManager$OnDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/DialogManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fimi/widget/DialogManager;->listener:Lcom/fimi/widget/DialogManager$OnDialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/widget/DialogManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/DialogManager;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fimi/widget/DialogManager;->dialogView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    invoke-virtual {v0}, Lcom/fimi/widget/CustomDialog;->dismiss()V

    .line 240
    :cond_0
    return-void
.end method

.method public getDialog()Lcom/fimi/widget/CustomDialog;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    return-object v0
.end method

.method public getDialogView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/widget/DialogManager;->dialogView:Landroid/view/View;

    return-object v0
.end method

.method public setClickOutIsCancle(Z)V
    .locals 0
    .param p1, "clickOutIsCancle"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/fimi/widget/DialogManager;->clickOutIsCancle:Z

    .line 123
    return-void
.end method

.method public setDialogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->dialogMessage:Ljava/lang/CharSequence;

    .line 103
    return-void
.end method

.method public setDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "dialogView"    # Landroid/view/View;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->dialogView:Landroid/view/View;

    .line 115
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    .line 145
    return-void
.end method

.method public setLeftButtonColor(I)V
    .locals 0
    .param p1, "leftButtonColor"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/fimi/widget/DialogManager;->leftButtonColor:I

    .line 133
    return-void
.end method

.method public setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;
    .locals 0
    .param p1, "listener"    # Lcom/fimi/widget/DialogManager$OnDialogListener;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->listener:Lcom/fimi/widget/DialogManager$OnDialogListener;

    .line 250
    return-object p0
.end method

.method public setOnDissmissListener(Lcom/fimi/widget/DialogManager$OnDismissListener;)Lcom/fimi/widget/DialogManager;
    .locals 0
    .param p1, "listener"    # Lcom/fimi/widget/DialogManager$OnDismissListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fimi/widget/DialogManager;->onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;

    .line 258
    return-object p0
.end method

.method public setRightButtonColor(I)V
    .locals 0
    .param p1, "rightButtonColor"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/fimi/widget/DialogManager;->rightButtonColor:I

    .line 129
    return-void
.end method

.method public setShowVirtKey(Z)V
    .locals 0
    .param p1, "isShowVirtKey"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/fimi/widget/DialogManager;->isShowVirtKey:Z

    .line 126
    return-void
.end method

.method public setSingleButtonColor(I)V
    .locals 0
    .param p1, "singleButtonColor"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/fimi/widget/DialogManager;->singleButtonColor:I

    .line 137
    return-void
.end method

.method public setSpan(Z)V
    .locals 0
    .param p1, "span"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/fimi/widget/DialogManager;->isSpan:Z

    .line 141
    return-void
.end method

.method public setTitleColor(I)V
    .locals 0
    .param p1, "titleColor"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/fimi/widget/DialogManager;->titleColor:I

    .line 149
    return-void
.end method

.method public setVerticalScreen(Z)V
    .locals 0
    .param p1, "verticalScreen"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/fimi/widget/DialogManager;->isVerticalScreen:Z

    .line 107
    return-void
.end method

.method public showDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/fimi/widget/CustomDialog$Builder;

    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fimi/widget/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "dialog":Lcom/fimi/widget/CustomDialog$Builder;
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/fimi/widget/CustomDialog$Builder;

    .line 158
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->dialogMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->dialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/CustomDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/fimi/widget/CustomDialog$Builder;

    .line 163
    :goto_1
    iget-boolean v1, p0, Lcom/fimi/widget/DialogManager;->clickOutIsCancle:Z

    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {v0, v3}, Lcom/fimi/widget/CustomDialog$Builder;->setClickOutIsCancle(Z)Lcom/fimi/widget/CustomDialog$Builder;

    .line 169
    :goto_2
    iget-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isSpan:Z

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v0, v3}, Lcom/fimi/widget/CustomDialog$Builder;->setSpan(Z)Lcom/fimi/widget/CustomDialog$Builder;

    .line 173
    :cond_1
    iget v1, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 174
    iget v1, p0, Lcom/fimi/widget/DialogManager;->mGravity:I

    invoke-virtual {v0, v1}, Lcom/fimi/widget/CustomDialog$Builder;->setGravity(I)Lcom/fimi/widget/CustomDialog$Builder;

    .line 177
    :cond_2
    iget-boolean v1, p0, Lcom/fimi/widget/DialogManager;->isShowVirtKey:Z

    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {v0, v3}, Lcom/fimi/widget/CustomDialog$Builder;->setShowVirtKey(Z)Lcom/fimi/widget/CustomDialog$Builder;

    .line 182
    :goto_3
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->rightBtnText:Ljava/lang/String;

    new-instance v2, Lcom/fimi/widget/DialogManager$3;

    invoke-direct {v2, p0}, Lcom/fimi/widget/DialogManager$3;-><init>(Lcom/fimi/widget/DialogManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setRightButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/widget/DialogManager;->leftBtnText:Ljava/lang/String;

    new-instance v3, Lcom/fimi/widget/DialogManager$2;

    invoke-direct {v3, p0}, Lcom/fimi/widget/DialogManager$2;-><init>(Lcom/fimi/widget/DialogManager;)V

    .line 190
    invoke-virtual {v1, v2, v3}, Lcom/fimi/widget/CustomDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/widget/DialogManager;->singleBtnText:Ljava/lang/String;

    new-instance v3, Lcom/fimi/widget/DialogManager$1;

    invoke-direct {v3, p0}, Lcom/fimi/widget/DialogManager$1;-><init>(Lcom/fimi/widget/DialogManager;)V

    .line 198
    invoke-virtual {v1, v2, v3}, Lcom/fimi/widget/CustomDialog$Builder;->setSingleButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/widget/DialogManager;->rightButtonColor:I

    .line 206
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setRightButtonColor(I)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/widget/DialogManager;->leftButtonColor:I

    .line 207
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setLeftButtonColor(I)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/widget/DialogManager;->singleButtonColor:I

    .line 208
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setSingleButtonColor(I)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/widget/DialogManager;->titleColor:I

    .line 209
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setTitleColor(I)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/widget/DialogManager;->isSingle:Z

    .line 210
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setSingle(Z)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/widget/DialogManager;->onDismissListener:Lcom/fimi/widget/DialogManager$OnDismissListener;

    .line 211
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setDissmssListener(Lcom/fimi/widget/DialogManager$OnDismissListener;)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fimi/widget/DialogManager;->isVerticalScreen:Z

    .line 212
    invoke-virtual {v1, v2}, Lcom/fimi/widget/CustomDialog$Builder;->setVerticalScreen(Z)Lcom/fimi/widget/CustomDialog$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/fimi/widget/CustomDialog$Builder;->create()Lcom/fimi/widget/CustomDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    .line 214
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/CustomDialog;->show()V

    goto/16 :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/fimi/widget/DialogManager;->dialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/fimi/widget/CustomDialog$Builder;

    goto :goto_1

    .line 166
    :cond_4
    invoke-virtual {v0, v4}, Lcom/fimi/widget/CustomDialog$Builder;->setClickOutIsCancle(Z)Lcom/fimi/widget/CustomDialog$Builder;

    goto :goto_2

    .line 180
    :cond_5
    invoke-virtual {v0, v4}, Lcom/fimi/widget/CustomDialog$Builder;->setShowVirtKey(Z)Lcom/fimi/widget/CustomDialog$Builder;

    goto :goto_3
.end method

.method public showPosition(Landroid/content/Context;III)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "d_width"    # I
    .param p3, "d_height"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 218
    iget-object v2, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/fimi/widget/DialogManager;->mCustomDialog:Lcom/fimi/widget/CustomDialog;

    invoke-virtual {v2}, Lcom/fimi/widget/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 220
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 221
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-nez p4, :cond_1

    .line 222
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 231
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 233
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 224
    .restart local v0    # "dialogWindow":Landroid/view/Window;
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v0, p4}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method
