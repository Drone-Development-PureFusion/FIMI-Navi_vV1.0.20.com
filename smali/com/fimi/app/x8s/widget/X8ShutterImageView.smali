.class public Lcom/fimi/app/x8s/widget/X8ShutterImageView;
.super Lcom/fimi/app/x8s/widget/TwoStateImageView;
.source "X8ShutterImageView.java"


# static fields
.field public static final DELAYED_PHOTO_MODULE_INDEX:I = 0x3

.field public static final DELAYED_VIDEO_MODULE_INDEX:I = 0x4

.field private static final DISABLED_ALPHA:I = 0x66

.field private static final DRAW_IDS:[I

.field private static final ENABLED_ALPHA:I = 0xff

.field public static final PANORAMA_PHOTOTAKING_ONE:I = 0x5

.field public static final PANORAMA_PHOTOTAKING_THREE:I = 0x7

.field public static final PANORAMA_PHOTOTAKING_TWO:I = 0x6

.field public static final PHOTO_MODULE_INDEX:I = 0x0

.field public static final STATE_IDEL:I = 0x0

.field public static final STATE_RECORDING:I = 0x1

.field public static final VIDEO_MODULE_INDEX:I = 0x1

.field public static stateIndex:I


# instance fields
.field private moduleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    sput v2, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->stateIndex:I

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_photo_select:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_main_record_state:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_main_recording_state:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_delayed_photo_select:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_delayed_record_select:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_panorama_phototaking_one_select:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_panorama_phototaking_two_select:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_panorama_phototaking_three_select:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->DRAW_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/widget/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->moduleIndex:I

    .line 49
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    return-void
.end method


# virtual methods
.method public getStateIndex()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->stateIndex:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/fimi/app/x8s/widget/TwoStateImageView;->onFinishInflate()V

    .line 82
    sget-object v0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->DRAW_IDS:[I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->moduleIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setImageResource(I)V

    .line 83
    return-void
.end method

.method public setCurrentIndex(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "state"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->moduleIndex:I

    .line 58
    sput p2, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->stateIndex:I

    .line 59
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 60
    sget-object v0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->DRAW_IDS:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setImageResource(I)V

    .line 73
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->DRAW_IDS:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ShutterImageView;->setImageResource(I)V

    goto :goto_0
.end method
