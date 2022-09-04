.class Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$1;
.super Landroid/os/Handler;
.source "X8VerticalSeekBarValueLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout$1;->this$0:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    return-void
.end method
