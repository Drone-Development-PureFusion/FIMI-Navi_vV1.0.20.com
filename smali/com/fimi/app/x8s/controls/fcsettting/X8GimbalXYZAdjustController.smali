.class public Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8GimbalXYZAdjustController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field btnCalibrate:Landroid/widget/Button;

.field private btnGet:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field private defaultUnit:Ljava/lang/String;

.field private ix8MainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

.field private mContext:Landroid/content/Context;

.field private mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private maxDefaultAdjustValue:F

.field private minDefaultAdjustValue:F

.field private valueOnFoot:F

.field x8BtnXyzAdjustExit:Landroid/widget/Button;

.field x8BtnXyzAdjustSave:Landroid/widget/Button;

.field private x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private x8GimbalXYZAdiustTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

.field private x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

.field private x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

.field private x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

.field private xyzValue:[F


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->defaultUnit:Ljava/lang/String;

    .line 47
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->valueOnFoot:F

    .line 48
    const/high16 v0, -0x3ee00000    # -10.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->minDefaultAdjustValue:F

    .line 49
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->maxDefaultAdjustValue:F

    .line 54
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->defaultUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->ix8MainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->xyzValue:[F

    return-object v0
.end method

.method static synthetic access$502(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;[F)[F
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;
    .param p1, "x1"    # [F

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->xyzValue:[F

    return-object p1
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)[F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getTxtValue()[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->valueOnFoot:F

    return v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;
    .param p1, "x1"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->gimbalXyzAdjustMaxHint(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    return-object v0
.end method

.method private getTxtValue()[F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 295
    .local v0, "xyzValue":[F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/fimi/kernel/utils/NumberUtil;->convertToFloat(Ljava/lang/String;I)F

    move-result v1

    aput v1, v0, v3

    .line 296
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/NumberUtil;->convertToFloat(Ljava/lang/String;I)F

    move-result v2

    aput v2, v0, v1

    .line 297
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/NumberUtil;->convertToFloat(Ljava/lang/String;I)F

    move-result v2

    aput v2, v0, v1

    .line 298
    return-object v0
.end method

.method private gimbalXyzAdjustMaxHint(F)Z
    .locals 1
    .param p1, "currentValue"    # F

    .prologue
    .line 302
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->maxDefaultAdjustValue:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->minDefaultAdjustValue:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initClickAction()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8BtnXyzAdjustExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8BtnXyzAdjustSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->getGcParamsNew(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getBtnGimbalXyzAdd()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getBtnGimbalXyzSubtract()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getBtnGimbalXyzAdd()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getBtnGimbalXyzSubtract()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getBtnGimbalXyzAdd()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getBtnGimbalXyzSubtract()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$7;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    .line 312
    .local v7, "vid":I
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_btn_xyz_adjust_exit:I

    if-ne v7, v0, :cond_1

    .line 313
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_signout:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_exit_hint:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$8;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 331
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_btn_xyz_adjust_save:I

    if-ne v7, v0, :cond_0

    .line 333
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_not_tips"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    const/4 v1, 0x3

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$9;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$9;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcParamsNew(IFFFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 343
    :cond_2
    new-instance v0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_save:I

    .line 344
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_save_hint:I

    .line 345
    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_promptly:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$10;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$10;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .line 361
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8SingleCustomDialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    goto :goto_0
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->isShow:Z

    .line 78
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_gimbal_xyz_adjust_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_gimbal_xyz_adiust_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8GimbalXYZAdiustTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 82
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8GimbalXYZAdiustTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_hint:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_btn_xyz_adjust_exit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8BtnXyzAdjustExit:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_btn_xyz_adjust_save:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8BtnXyzAdjustSave:Landroid/widget/Button;

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_view_gimbal_p:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_view_gimbal_r:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    .line 87
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_view_gimbal_y:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalR:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzName()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_r:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalP:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzName()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_p:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->x8ViewGimbalY:Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzName()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbal_xyz_adjust_y:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->initClickAction()V

    .line 93
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->openUi()V

    .line 94
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;
    .param p2, "ix8MainTopBarListener"    # Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;

    .line 98
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->ix8MainTopBarListener:Lcom/fimi/app/x8s/interfaces/IX8MainTopBarListener;

    .line 99
    return-void
.end method

.method public setX8GimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "mX8GimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->mX8GimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 276
    return-void
.end method
