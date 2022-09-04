.class Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$1;
.super Landroid/os/Handler;
.source "FirmwareBuildPack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$1;->this$0:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$1;->this$0:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;

    iget-object v0, v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->listener:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$1;->this$0:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;

    iget-object v0, v0, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack;->listener:Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/x8sdk/update/fwpack/FirmwareBuildPack$MergFileListener;->mergResult(I)V

    .line 70
    :cond_0
    return-void
.end method
