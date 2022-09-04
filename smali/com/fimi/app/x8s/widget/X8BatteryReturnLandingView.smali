.class public Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;
.super Landroid/view/View;
.source "X8BatteryReturnLandingView.java"


# instance fields
.field private dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

.field private dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

.field private h:I

.field private hasSHowLanding:Z

.field private hasShowReturn:Z

.field private imgLanding:Landroid/graphics/Bitmap;

.field private imgReturn:Landroid/graphics/Bitmap;

.field private landingCapacity:I

.field private paint:Landroid/graphics/Paint;

.field private power:I

.field private rhtCapacity:I

.field private w:I

.field private x8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->initSurface(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    return-object v0
.end method

.method private createBitMap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initBitmap()V
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_top_return_home_battery:I

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->createBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgReturn:Landroid/graphics/Bitmap;

    .line 54
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_top_landing_battery:I

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->createBitMap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgLanding:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgLanding:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->h:I

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgLanding:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->w:I

    .line 57
    return-void
.end method

.method private initSurface(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->paint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->initBitmap()V

    .line 50
    return-void
.end method

.method private measureHeight(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "height"    # I

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 122
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 124
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 125
    move v1, v2

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    move v1, p2

    .line 129
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private recyleBitMap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgReturn:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->recyleBitMap(Landroid/graphics/Bitmap;)V

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgLanding:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->recyleBitMap(Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v9, 0x32

    const/high16 v8, 0x3f000000    # 0.5f

    const v7, 0x3d4ccccd    # 0.05f

    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x658

    int-to-float v2, v2

    const/high16 v3, 0x44f00000    # 1920.0f

    div-float v1, v2, v3

    .line 79
    .local v1, "x":F
    const/4 v0, 0x0

    .line 80
    .local v0, "start":I
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    if-lez v2, :cond_2

    .line 81
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    if-gt v2, v9, :cond_3

    .line 82
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 87
    :goto_1
    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->w:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 88
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgReturn:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    :cond_2
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    if-lez v2, :cond_0

    .line 93
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    if-gt v2, v9, :cond_4

    .line 94
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 99
    :goto_2
    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->w:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 100
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->imgLanding:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v8, v1

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 85
    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v8, v1

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 97
    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    add-int/lit8 v3, v3, -0x32

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_2
.end method

.method public onLandingClick()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->x8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$4;-><init>(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->land(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 268
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->h:I

    invoke-direct {p0, p2, v1}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->measureHeight(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public onRetureHomeClick()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->x8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$3;-><init>(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiRetureHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 253
    return-void
.end method

.method public resetByDidconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 177
    :cond_0
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    .line 178
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->dismiss()V

    .line 181
    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->dismiss()V

    .line 185
    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->postInvalidate()V

    goto :goto_0
.end method

.method public setPercent(IIII)V
    .locals 8
    .param p1, "landing"    # I
    .param p2, "rht"    # I
    .param p3, "total"    # I
    .param p4, "power"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 139
    if-ge p1, p2, :cond_0

    .line 140
    const/4 p1, 0x0

    .line 142
    :cond_0
    int-to-float v1, p1

    mul-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    .line 143
    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    .line 144
    iput p4, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->power:I

    .line 145
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasShowReturn:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iput-boolean v5, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasShowReturn:Z

    .line 148
    :cond_1
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasSHowLanding:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iput-boolean v5, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasSHowLanding:Z

    .line 152
    :cond_2
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->rhtCapacity:I

    if-gt p4, v1, :cond_3

    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasShowReturn:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowReturn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    .line 154
    .local v0, "mode":I
    if-eq v0, v7, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    if-ne v0, v6, :cond_5

    .line 162
    .end local v0    # "mode":I
    :cond_3
    :goto_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->landingCapacity:I

    if-gt p4, v1, :cond_4

    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasSHowLanding:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isLowLanding()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    .line 164
    .restart local v0    # "mode":I
    if-eq v0, v7, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    if-ne v0, v6, :cond_6

    .line 170
    .end local v0    # "mode":I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->postInvalidate()V

    .line 171
    return-void

    .line 157
    .restart local v0    # "mode":I
    :cond_5
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->showReturn()V

    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->showLanding()V

    goto :goto_1
.end method

.method public setX8sMainActivity(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "x8sMainActivity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->x8sMainActivity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 240
    return-void
.end method

.method public showLanding()V
    .locals 5

    .prologue
    .line 193
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_battery_low_landing_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$1;-><init>(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasSHowLanding:Z

    .line 210
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 211
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogLanding:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->show()V

    goto :goto_0
.end method

.method public showReturn()V
    .locals 5

    .prologue
    .line 215
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_battery_low_return_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$2;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$2;-><init>(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->hasShowReturn:Z

    .line 234
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 235
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->dialogReturn:Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->show()V

    goto :goto_0
.end method
