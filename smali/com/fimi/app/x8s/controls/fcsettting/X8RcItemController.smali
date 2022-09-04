.class public Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8RcItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final FIVE_KEY_CENTER:I = 0x4

.field public static FIVE_KEY_DATA_ARRAY:[Ljava/lang/String; = null

.field public static final FIVE_KEY_DOWN:I = 0x1

.field public static final FIVE_KEY_LEFT:I = 0x2

.field public static final FIVE_KEY_RIGHT:I = 0x3

.field public static final FIVE_KEY_UP:I


# instance fields
.field private btnFiveKeyCenter:Landroid/widget/Button;

.field private btnFiveKeyDown:Landroid/widget/Button;

.field private btnFiveKeyLeft:Landroid/widget/Button;

.field private btnFiveKeyRight:Landroid/widget/Button;

.field private btnFiveKeyUp:Landroid/widget/Button;

.field private btnRcCalibration:Landroid/widget/Button;

.field private btnRcCode:Landroid/widget/Button;

.field private btnRockerMode:Landroid/widget/Button;

.field currAPModel:I

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

.field private mConext:Landroid/content/Context;

.field rcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

.field private rlFcItem:Landroid/view/View;

.field private stubFcItem:Landroid/view/ViewStub;

.field private thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

.field private x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private x8RcBtnRestParams:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    .line 157
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->mConext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Lcom/fimi/app/x8s/widget/X8TabItem;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->restRcSystemParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->setDefaultFiveKey()V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->requestRcCtrlModeValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->mConext:Landroid/content/Context;

    return-object v0
.end method

.method private requestRcCtrlModeValue()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 179
    :cond_0
    return-void
.end method

.method private resetFiveKey()V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyUp:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyDown:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyLeft:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyRight:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyCenter:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method private restRcSystemParams()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;B)V

    .line 404
    return-void
.end method

.method private setDefaultFiveKey()V
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 411
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 412
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 413
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 414
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 415
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->resetFiveKey()V

    .line 416
    return-void
.end method

.method private setViewEnabled(Z)V
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 287
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRcCode:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyUp:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyDown:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyCenter:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 296
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRcCode:Landroid/widget/Button;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 297
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyUp:Landroid/widget/Button;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 298
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyDown:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 299
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyLeft:Landroid/widget/Button;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 300
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyRight:Landroid/widget/Button;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyCenter:Landroid/widget/Button;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 302
    return-void

    :cond_0
    move v0, v2

    .line 295
    goto :goto_0

    :cond_1
    move v0, v2

    .line 296
    goto :goto_1

    :cond_2
    move v0, v2

    .line 297
    goto :goto_2

    :cond_3
    move v0, v2

    .line 298
    goto :goto_3

    :cond_4
    move v0, v2

    .line 299
    goto :goto_4

    :cond_5
    move v0, v2

    .line 300
    goto :goto_5

    :cond_6
    move v1, v2

    .line 301
    goto :goto_6
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->isShow:Z

    goto :goto_0
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setOnSelectListener(Lcom/fimi/app/x8s/widget/X8TabItem$OnSelectListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 64
    sget v0, Lcom/fimi/app/x8s/R$id;->stub_rc_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->stubFcItem:Landroid/view/ViewStub;

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$array;->x8_five_key_define_option:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 320
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rocker_mode:I

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    invoke-interface {v1, v2}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onRockerModeClicked(Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_five_key_up:I

    if-ne v0, v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    const/4 v2, 0x0

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_UP_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onFiveKeyClicked(II)V

    goto :goto_0

    .line 330
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_five_key_down:I

    if-ne v0, v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_DOWN_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onFiveKeyClicked(II)V

    goto :goto_0

    .line 335
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_five_key_left:I

    if-ne v0, v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_LEFT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v5, v2}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onFiveKeyClicked(II)V

    goto :goto_0

    .line 340
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_five_key_right:I

    if-ne v0, v1, :cond_5

    .line 341
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_RIGHT_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v6, v2}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onFiveKeyClicked(II)V

    goto :goto_0

    .line 345
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_five_key_center:I

    if-ne v0, v1, :cond_6

    .line 346
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    sget-object v3, Lcom/fimi/x8sdk/common/Constants;->FIVE_KEY_CENTRE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v1, v7, v2}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onFiveKeyClicked(II)V

    goto :goto_0

    .line 350
    :cond_6
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rc_code:I

    if-ne v0, v1, :cond_7

    .line 351
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onRcMatchCode()V

    .line 353
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->closeUi()V

    goto/16 :goto_0

    .line 356
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rc_calibration:I

    if-ne v0, v1, :cond_8

    .line 357
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;->onRcCalibration()V

    .line 359
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->closeUi()V

    goto/16 :goto_0

    .line 361
    :cond_8
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rc_btn_rest_params:I

    if-ne v0, v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->showRestParamDialog()V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 10
    .param p1, "b"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 256
    iget-boolean v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->isShow:Z

    if-nez v6, :cond_0

    .line 282
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    if-eqz v6, :cond_1

    .line 261
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 262
    .local v1, "canSet":Z
    :goto_1
    iget-object v9, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    if-eqz v1, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/fimi/app/x8s/widget/X8TabItem;->setAlpha(F)V

    .line 263
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    invoke-virtual {v6, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setEnabled(Z)V

    .line 265
    .end local v1    # "canSet":Z
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    move v3, v4

    .line 266
    .local v3, "isOpenRockerModer":Z
    :goto_3
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    if-eqz v6, :cond_3

    .line 267
    iget-object v9, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    if-eqz v3, :cond_7

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/widget/Button;->setAlpha(F)V

    .line 268
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 271
    :cond_3
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getRelayState()Lcom/fimi/x8sdk/modulestate/RelayState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/RelayState;->getApModel()I

    move-result v0

    .line 272
    .local v0, "appModle":I
    if-nez v0, :cond_8

    .line 273
    iput v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    .line 277
    :goto_5
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    iget v9, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    invoke-virtual {v6, v9}, Lcom/fimi/app/x8s/widget/X8TabItem;->setSelect(I)V

    .line 279
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v2

    .line 280
    .local v2, "isOngroud":Z
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8RcBtnRestParams:Landroid/widget/Button;

    if-eqz v2, :cond_9

    if-eqz p1, :cond_9

    :goto_6
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8RcBtnRestParams:Landroid/widget/Button;

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    :goto_7
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .end local v0    # "appModle":I
    .end local v2    # "isOngroud":Z
    .end local v3    # "isOpenRockerModer":Z
    :cond_4
    move v1, v5

    .line 261
    goto :goto_1

    .restart local v1    # "canSet":Z
    :cond_5
    move v6, v8

    .line 262
    goto :goto_2

    .end local v1    # "canSet":Z
    :cond_6
    move v3, v5

    .line 265
    goto :goto_3

    .restart local v3    # "isOpenRockerModer":Z
    :cond_7
    move v6, v8

    .line 267
    goto :goto_4

    .line 275
    .restart local v0    # "appModle":I
    :cond_8
    iput v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    goto :goto_5

    .restart local v2    # "isOngroud":Z
    :cond_9
    move v4, v5

    .line 280
    goto :goto_6

    :cond_a
    move v7, v8

    .line 281
    goto :goto_7
.end method

.method public onRcConnected(Z)V
    .locals 0
    .param p1, "isConnect"    # Z

    .prologue
    .line 207
    return-void
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 315
    return-void
.end method

.method public setFiveKeyValue(II)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "position"    # I

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 445
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyUp:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 429
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyDown:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyLeft:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 437
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyRight:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 441
    :pswitch_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyCenter:Landroid/widget/Button;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->FIVE_KEY_DATA_ARRAY:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8RcItemControllerListener;

    .line 420
    return-void
.end method

.method public showApDialog(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_ap_dialog_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_ap_dialog_content:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    invoke-direct {v4, p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 102
    .local v0, "apDialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 103
    return-void
.end method

.method public showItem()V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->stubFcItem:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_rc_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    .line 213
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->th_ap_module:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8TabItem;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->thApModule:Lcom/fimi/app/x8s/widget/X8TabItem;

    .line 214
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_rc_calibration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRcCalibration:Landroid/widget/Button;

    .line 215
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_rocker_mode:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    .line 216
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_rc_code:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRcCode:Landroid/widget/Button;

    .line 217
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_five_key_up:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyUp:Landroid/widget/Button;

    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_five_key_down:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyDown:Landroid/widget/Button;

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_five_key_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyLeft:Landroid/widget/Button;

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_five_key_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyRight:Landroid/widget/Button;

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_five_key_center:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyCenter:Landroid/widget/Button;

    .line 222
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_rc_btn_rest_params:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8RcBtnRestParams:Landroid/widget/Button;

    .line 224
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRcCalibration:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRcCode:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyUp:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyDown:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyLeft:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyRight:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnFiveKeyCenter:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8RcBtnRestParams:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->resetFiveKey()V

    .line 236
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->initActions()V

    .line 239
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rlFcItem:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->requestRcCtrlModeValue()V

    .line 241
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->isShow:Z

    .line 242
    return-void
.end method

.method public showRcCtrlModel(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_america_rocker:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_japanese_rocker:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->btnRockerMode:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_chinese_rocker:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showRestParamDialog()V
    .locals 6

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rootView:Landroid/view/View;

    .line 372
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_rc_reset_params:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rootView:Landroid/view/View;

    .line 373
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_rc_reset_params_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_general_rest:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$5;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 385
    return-void
.end method
