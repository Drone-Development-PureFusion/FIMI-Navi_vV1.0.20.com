.class final Lcom/fimi/media/TcpServerLaunch$1;
.super Landroid/os/Handler;
.source "TcpServerLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/media/TcpServerLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 27
    sget-object v0, Lcom/fimi/media/TcpServerLaunch;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_0

    .line 28
    sget-object v0, Lcom/fimi/media/TcpServerLaunch;->s:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Lcom/fimi/media/TcpServerLaunch;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 30
    :cond_0
    sget-object v1, Lcom/fimi/media/TcpServerLaunch;->s:Ljava/lang/StringBuffer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-static {}, Lcom/fimi/media/TcpServerLaunch;->access$000()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/fimi/media/TcpServerLaunch;->s:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
