.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$1;
.super Ljava/lang/Object;
.source "X8AiScrewNextUi.java"

# interfaces
.implements Lcom/fimi/widget/SwitchButton$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitch(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/fimi/widget/SwitchButton;->setSwitchState(Z)V

    .line 81
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
