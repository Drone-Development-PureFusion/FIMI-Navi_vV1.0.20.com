.class Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;
.super Ljava/lang/Object;
.source "ProductShowWidget.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/ui/main/ProductShowWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/ProductShowWidget;


# direct methods
.method private constructor <init>(Lcom/fimi/app/ui/main/ProductShowWidget;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;->this$0:Lcom/fimi/app/ui/main/ProductShowWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/ui/main/ProductShowWidget;Lcom/fimi/app/ui/main/ProductShowWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/ui/main/ProductShowWidget;
    .param p2, "x1"    # Lcom/fimi/app/ui/main/ProductShowWidget$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;-><init>(Lcom/fimi/app/ui/main/ProductShowWidget;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 129
    :pswitch_0
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 110
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;->this$0:Lcom/fimi/app/ui/main/ProductShowWidget;

    iget-object v0, v0, Lcom/fimi/app/ui/main/ProductShowWidget;->positionListener:Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/fimi/app/ui/main/ProductShowWidget$PageChangeListener;->this$0:Lcom/fimi/app/ui/main/ProductShowWidget;

    iget-object v0, v0, Lcom/fimi/app/ui/main/ProductShowWidget;->positionListener:Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;->changePosition(I)V

    .line 117
    :cond_0
    return-void
.end method
