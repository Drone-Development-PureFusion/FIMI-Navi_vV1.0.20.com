.class public Lcom/fimi/app/x8s/widget/RemotesimulatorView;
.super Landroid/view/View;
.source "RemotesimulatorView.java"


# instance fields
.field private IndexLeft:F

.field private IndexRight:F

.field private IndexTop:F

.field private RemoteBG:Landroid/graphics/Bitmap;

.field private RemoteCenter:Landroid/graphics/Bitmap;

.field private RemoteOutline:Landroid/graphics/Bitmap;

.field private batteryBG:Landroid/graphics/Bitmap;

.field private batteryBGLeft:F

.field private batteryPressBG:Landroid/graphics/Bitmap;

.field private border:I

.field private centerRidusTop:F

.field private context:Landroid/content/Context;

.field private currentLeftRemoteIndex:I

.field private currentRightRemoteIndex:I

.field private doughnutColors:[I

.field private isBatteryPress:Z

.field private isLandPress:Z

.field private isReturnPress:Z

.field private landBG:Landroid/graphics/Bitmap;

.field private landBGLeft:F

.field private landPressBG:Landroid/graphics/Bitmap;

.field private leftCenterRidus:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private marginLeft:I

.field private marginTop:I

.field private midRemoteCenter:I

.field private paint:Landroid/graphics/Paint;

.field private paint1:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private returnBG:Landroid/graphics/Bitmap;

.field private returnBGLeft:F

.field private returnPressBG:Landroid/graphics/Bitmap;

.field private rf:Landroid/graphics/RectF;

.field private rightCenterRidus:F

.field private rotateLeftAngle:F

.field private rotateRightAngle:F

.field private scale:F

.field private text:Ljava/lang/String;

.field private textLeft:F

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#0000E8FD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#FF00E8FD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->doughnutColors:[I

    .line 43
    const-string v0, "  "

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string v1, "#0000E8FD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string v1, "#FF00E8FD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->doughnutColors:[I

    .line 43
    const-string v0, "  "

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->img_playback_rc_bg:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->img_playback_rc_scale:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    .line 64
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->img_palyback_rc_focus:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_playback_rocker_battery_normal:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBG:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_playback_rocker_land_normal:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landBG:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_playback_rocker_return_normal:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnBG:Landroid/graphics/Bitmap;

    .line 70
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_playback_rocker_battery_pressed:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryPressBG:Landroid/graphics/Bitmap;

    .line 71
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_playback_rocker_land_pressed:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landPressBG:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_playback_rocker_return_pressed:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnPressBG:Landroid/graphics/Bitmap;

    .line 74
    iget v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/fimi/app/x8s/tools/ConvertSize;->dipToPx(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    .line 75
    iget v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexLeft:F

    .line 76
    iget v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexLeft:F

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexTop:F

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexLeft:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexRight:F

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->centerRidusTop:F

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexLeft:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBGLeft:F

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landBGLeft:F

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnBGLeft:F

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textLeft:F

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rect:Landroid/graphics/Rect;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rf:Landroid/graphics/RectF;

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const v1, 0x3f283127    # 0.657f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->scale:F

    .line 112
    iput v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    .line 113
    iput v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->border:I

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string v2, "#0000E8FD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#FF00E8FD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->doughnutColors:[I

    .line 43
    const-string v0, "  "

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static getAngle(FFII)D
    .locals 10
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # I
    .param p3, "y2"    # I

    .prologue
    .line 310
    int-to-float v3, p2

    sub-float v3, p0, v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 311
    .local v1, "x":I
    int-to-float v3, p3

    sub-float v3, p1, v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 312
    .local v2, "y":I
    mul-int v3, v1, v1

    mul-int v6, v2, v2

    add-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 313
    .local v4, "z":D
    int-to-double v6, v2

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 314
    .local v0, "jiaodu":I
    int-to-double v6, v0

    return-wide v6
.end method

.method private varargs recyleBitMap([Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "value"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 198
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 199
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexTop:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteOutline:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexRight:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->IndexTop:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->isReturnPress:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnPressBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnBGLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    :goto_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->isLandPress:Z

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landPressBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landBGLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    :goto_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->isBatteryPress:Z

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryPressBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBGLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    const-string v1, "#FF00E8FD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 155
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    .line 156
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->currentLeftRemoteIndex:I

    int-to-float v5, v5

    iget v7, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->scale:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->doughnutColors:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 154
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 160
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->currentLeftRemoteIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 161
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 160
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rotateLeftAngle:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->centerRidusTop:F

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 165
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 164
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rf:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 172
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 173
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    .line 174
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->currentRightRemoteIndex:I

    int-to-float v5, v5

    iget v7, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->scale:F

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->doughnutColors:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 172
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 178
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->currentRightRemoteIndex:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 179
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 178
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rotateRightAngle:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->centerRidusTop:F

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 180
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rf:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->leftCenterRidus:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->centerRidusTop:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteCenter:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rightCenterRidus:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->centerRidusTop:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 195
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->returnBGLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->landBGLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBG:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->batteryBGLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginLeft:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->marginTop:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 118
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 119
    .local v1, "width":I
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->RemoteBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 120
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->setMeasuredDimension(II)V

    .line 121
    return-void
.end method

.method public setCurrentRemote(IIIIZZZ)V
    .locals 14
    .param p1, "value0"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I
    .param p5, "isBatteryPress"    # Z
    .param p6, "isLandPress"    # Z
    .param p7, "isReturnPress"    # Z

    .prologue
    .line 217
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->isBatteryPress:Z

    .line 218
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->isLandPress:Z

    .line 219
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->isReturnPress:Z

    .line 220
    const-wide/16 v2, 0x0

    .line 221
    .local v2, "angleLeft":D
    const/4 v6, 0x0

    .line 223
    .local v6, "distanceLeft":I
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p2

    if-gt v0, v8, :cond_4

    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p4

    if-lt v0, v8, :cond_4

    .line 224
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v8, p4, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, v10, p2

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 225
    if-eqz v6, :cond_0

    .line 226
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, p4, v10

    iget v11, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v11, v11, p2

    invoke-static {v8, v9, v10, v11}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v2

    .line 249
    :cond_0
    :goto_0
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    if-le v6, v8, :cond_1

    .line 250
    iget v6, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    .line 253
    :cond_1
    iput v6, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->currentLeftRemoteIndex:I

    .line 254
    double-to-float v8, v2

    iput v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rotateLeftAngle:F

    .line 257
    const-wide/16 v4, 0x0

    .line 258
    .local v4, "angleRight":D
    const/4 v7, 0x0

    .line 262
    .local v7, "distanceRight":I
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p3

    if-gt v0, v8, :cond_7

    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    if-lt p1, v8, :cond_7

    .line 263
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v8, p1, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, v10, p3

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 264
    if-eqz v7, :cond_2

    .line 265
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, p1, v10

    iget v11, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v11, v11, p3

    invoke-static {v8, v9, v10, v11}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v4

    .line 289
    :cond_2
    :goto_1
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    if-le v7, v8, :cond_3

    .line 290
    iget v7, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    .line 293
    :cond_3
    iput v7, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->currentRightRemoteIndex:I

    .line 294
    double-to-float v8, v4

    iput v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->rotateRightAngle:F

    .line 296
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->invalidate()V

    .line 297
    return-void

    .line 230
    .end local v4    # "angleRight":D
    .end local v7    # "distanceRight":I
    :cond_4
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p2

    if-gt v0, v8, :cond_5

    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p4

    if-ge v0, v8, :cond_5

    .line 231
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v8, v8, p4

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, v10, p2

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 232
    if-eqz v6, :cond_0

    .line 233
    const-wide v8, 0x4076800000000000L    # 360.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v12, v12, p4

    iget v13, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v13, v13, p2

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v10

    sub-double v2, v8, v10

    goto/16 :goto_0

    .line 237
    :cond_5
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p2

    if-le v0, v8, :cond_6

    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p4

    if-lt v0, v8, :cond_6

    .line 238
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v8, p4, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, p2, v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 239
    if-eqz v6, :cond_0

    .line 240
    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v12, p4, v12

    iget v13, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v13, p2, v13

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v10

    sub-double v2, v8, v10

    goto/16 :goto_0

    .line 243
    :cond_6
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v8, v8, p4

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, p2, v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 244
    if-eqz v6, :cond_0

    .line 245
    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v12, v12, p4

    iget v13, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v13, p2, v13

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v10

    add-double v2, v8, v10

    goto/16 :goto_0

    .line 269
    .restart local v4    # "angleRight":D
    .restart local v7    # "distanceRight":I
    :cond_7
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p3

    if-gt v0, v8, :cond_8

    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    if-ge p1, v8, :cond_8

    .line 270
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int/2addr v8, p1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, v10, p3

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 271
    if-eqz v7, :cond_2

    .line 272
    const-wide v8, 0x4076800000000000L    # 360.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int/2addr v12, p1

    iget v13, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v13, v13, p3

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v10

    sub-double v4, v8, v10

    goto/16 :goto_1

    .line 276
    :cond_8
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    move/from16 v0, p3

    if-le v0, v8, :cond_9

    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    if-lt p1, v8, :cond_9

    .line 277
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v8, p1, v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, p3, v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 278
    if-eqz v7, :cond_2

    .line 279
    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v12, p1, v12

    iget v13, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v13, p3, v13

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v10

    sub-double v4, v8, v10

    goto/16 :goto_1

    .line 282
    :cond_9
    iget v8, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int/2addr v8, p1

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v10, p3, v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    .line 283
    if-eqz v7, :cond_2

    .line 284
    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int/2addr v12, p1

    iget v13, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->midRemoteCenter:I

    sub-int v13, p3, v13

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->getAngle(FFII)D

    move-result-wide v10

    add-double v4, v8, v10

    goto/16 :goto_1
.end method

.method public showDefaultView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x200

    .line 305
    const-string v0, " "

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    move v7, v5

    .line 306
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->setCurrentRemote(IIIIZZZ)V

    .line 307
    return-void
.end method

.method public showGetRcModeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->text:Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RemotesimulatorView;->invalidate()V

    .line 302
    return-void
.end method
