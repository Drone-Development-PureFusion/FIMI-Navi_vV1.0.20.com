.class public Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;
.super Landroid/widget/ImageButton;
.source "X8ModuleSwitcher.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final DRAW_IDS:[I

.field public static final PHOTO_MODULE_INDEX:I = 0x0

.field public static final PHOTO_MODULE_UNCLICKABLE_INDEX:I = 0x2

.field public static final VIDEO_MODULE_INDEX:I = 0x1

.field public static final VIDEO_MODULE_UNCLICKABLE_INDEX:I = 0x3


# instance fields
.field private moduleIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_photo_switch_record_select:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_record_switch_photo_select:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_photo_switch_record_unclickable:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_btn_record_switch_photo_unclickable:I

    aput v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->DRAW_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->moduleIndex:I

    .line 39
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->moduleIndex:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 57
    sget-object v0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->DRAW_IDS:[I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->moduleIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setBackgroundResource(I)V

    .line 58
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->moduleIndex:I

    .line 48
    sget-object v0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->DRAW_IDS:[I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->moduleIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8ModuleSwitcher;->setBackgroundResource(I)V

    .line 49
    return-void
.end method
