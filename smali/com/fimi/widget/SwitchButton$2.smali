.class Lcom/fimi/widget/SwitchButton$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/SwitchButton;


# direct methods
.method constructor <init>(Lcom/fimi/widget/SwitchButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/SwitchButton;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/fimi/widget/SwitchButton$2;->this$0:Lcom/fimi/widget/SwitchButton;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 3
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    .line 293
    .local v0, "value":D
    iget-object v2, p0, Lcom/fimi/widget/SwitchButton$2;->this$0:Lcom/fimi/widget/SwitchButton;

    invoke-static {v2, v0, v1}, Lcom/fimi/widget/SwitchButton;->access$100(Lcom/fimi/widget/SwitchButton;D)V

    .line 294
    return-void
.end method
