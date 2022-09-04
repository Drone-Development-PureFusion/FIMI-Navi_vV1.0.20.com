.class Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView$1;
.super Landroid/os/Handler;
.source "X8ErrorTextSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView$1;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView$1;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;->access$000(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView;)V

    .line 40
    return-void
.end method
