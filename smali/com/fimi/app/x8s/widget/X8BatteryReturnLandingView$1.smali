.class Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$1;
.super Ljava/lang/Object;
.source "X8BatteryReturnLandingView.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->showLanding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$1;->this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onRight()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView$1;->this$0:Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8BatteryReturnLandingView;->onLandingClick()V

    .line 207
    return-void
.end method
