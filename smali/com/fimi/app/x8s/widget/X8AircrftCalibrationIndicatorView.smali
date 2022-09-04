.class public Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;
.super Landroid/widget/LinearLayout;
.source "X8AircrftCalibrationIndicatorView.java"


# instance fields
.field private container:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private selected:I

.field private stepStatus:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->selected:I

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stepStatus:[Z

    .line 30
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->context:Landroid/content/Context;

    .line 31
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->init(Landroid/content/Context;)V

    .line 32
    return-void

    .line 26
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->selected:I

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stepStatus:[Z

    .line 37
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->context:Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->init(Landroid/content/Context;)V

    .line 39
    return-void

    .line 26
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_aircraft_calibration_indcator_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setOrientation(I)V

    .line 45
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setGravity(I)V

    .line 46
    sget v0, Lcom/fimi/app/x8s/R$id;->ll_aircrft_calibration_indicator:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->draw()V

    .line 48
    return-void
.end method

.method private startFlick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 108
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 109
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 111
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public draw()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stepStatus:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 87
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, "imageview":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 90
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stepStatus:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_aircraft_calibration_indcator_focus:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$drawable;->x8_aircraft_calibration_indcator_normal:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 97
    .end local v1    # "imageview":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .param p1, "selected"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->selected:I

    .line 57
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 58
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->startFlick(Landroid/view/View;)V

    .line 63
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->startFlick(Landroid/view/View;)V

    .line 68
    :cond_1
    return-void
.end method

.method public setStepStatus([ZI)V
    .locals 2
    .param p1, "stepStatus"    # [Z
    .param p2, "status"    # I

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stepStatus:[Z

    .line 77
    if-ltz p2, :cond_0

    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stepStatus:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 82
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->draw()V

    .line 83
    return-void
.end method

.method public stopFlick()V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
