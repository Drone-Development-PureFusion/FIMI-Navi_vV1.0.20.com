.class final Lcom/github/moduth/blockcanary/ui/BlockCanaryUi;
.super Ljava/lang/Object;
.source "BlockCanaryUi.java"


# static fields
.field static final CLEAR_XFER_MODE:Landroid/graphics/PorterDuffXfermode;

.field static final LEAK_COLOR:I = -0x4eaab2

.field static final LIGHT_GREY:I = -0x454546

.field static final ROOT_COLOR:I = -0x7b593b


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/BlockCanaryUi;->CLEAR_XFER_MODE:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static dpToPixel(FLandroid/content/res/Resources;)F
    .locals 2
    .param p0, "dp"    # F
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 49
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p0

    return v1
.end method
