.class public Lcom/fimi/app/x8s/widget/X8BatteryView;
.super Landroid/widget/ImageView;
.source "X8BatteryView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static COLOR_ABNORMAL_YELLOW:I = 0x0

.field public static COLOR_NORMAL_WHITE:I = 0x0

.field public static COLOR_SERIOUS_RED:I = 0x0

.field public static final STATE_CORRUPTED:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_OVER_PRESSURE:I = 0x1

.field public static final STATE_OVER_RELEASE:I = 0x3

.field public static final STATE_OVER_RELEASE_SERIOUS:I = 0x4


# instance fields
.field private height:I

.field private mColor:I

.field private mPower:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_NORMAL_WHITE:I

    .line 32
    sput v0, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_ABNORMAL_YELLOW:I

    .line 33
    sput v0, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_SERIOUS_RED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x64

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    .line 47
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_battery_state_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_NORMAL_WHITE:I

    .line 48
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_battery_state_abnormal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_ABNORMAL_YELLOW:I

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_battery_state_serious:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_SERIOUS_RED:I

    .line 50
    sget-object v1, Lcom/fimi/app/x8s/R$styleable;->X8_RulerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8_RulerView_batteryColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mColor:I

    .line 52
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8_RulerView_batteryPower:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    .line 53
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    .line 54
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->height:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .local v0, "paint":Landroid/graphics/Paint;
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->height:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    rsub-int/lit8 v4, v4, 0x64

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v2, v3, v4

    .line 76
    .local v2, "topOffset":F
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    div-int/lit8 v3, v3, 0x7

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    div-int/lit8 v6, v6, 0x7

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->height:I

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    div-int/lit8 v7, v7, 0x7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 77
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 62
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->width:I

    .line 64
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->height:I

    .line 65
    return-void
.end method

.method public setPower(I)V
    .locals 1
    .param p1, "power"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    .line 87
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    if-gez v0, :cond_0

    .line 88
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mPower:I

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->invalidate()V

    .line 91
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->invalidate()V

    .line 117
    return-void

    .line 97
    :pswitch_0
    sget v0, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_NORMAL_WHITE:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mColor:I

    .line 98
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_battery_setting_normal:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->setBackgroundResource(I)V

    goto :goto_0

    .line 104
    :pswitch_1
    sget v0, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_ABNORMAL_YELLOW:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mColor:I

    .line 105
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_battery_setting_abnormal:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->setBackgroundResource(I)V

    goto :goto_0

    .line 111
    :pswitch_2
    sget v0, Lcom/fimi/app/x8s/widget/X8BatteryView;->COLOR_SERIOUS_RED:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryView;->mColor:I

    .line 112
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_battery_setting_serious:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8BatteryView;->setBackgroundResource(I)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
