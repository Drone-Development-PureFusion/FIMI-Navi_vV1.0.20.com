.class Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;
.super Landroid/os/Handler;
.source "X8ErrorTextSwitchView1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1$1;->this$0:Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;->access$000(Lcom/fimi/app/x8s/widget/X8ErrorTextSwitchView1;)V

    .line 36
    return-void
.end method
