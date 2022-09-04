.class Lcom/fimi/album/x9/X9MediaFileLoad$2;
.super Ljava/lang/Object;
.source "X9MediaFileLoad.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/x9/X9MediaFileLoad;->startLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/x9/X9MediaFileLoad;


# direct methods
.method constructor <init>(Lcom/fimi/album/x9/X9MediaFileLoad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/x9/X9MediaFileLoad;

    .prologue
    .line 94
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$2;, "Lcom/fimi/album/x9/X9MediaFileLoad$2;"
    iput-object p1, p0, Lcom/fimi/album/x9/X9MediaFileLoad$2;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 111
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$2;, "Lcom/fimi/album/x9/X9MediaFileLoad$2;"
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad$2;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/album/x9/X9MediaFileLoad;->access$200(Lcom/fimi/album/x9/X9MediaFileLoad;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 0
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 99
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$2;, "Lcom/fimi/album/x9/X9MediaFileLoad$2;"
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 118
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$2;, "Lcom/fimi/album/x9/X9MediaFileLoad$2;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 104
    .local p0, "this":Lcom/fimi/album/x9/X9MediaFileLoad$2;, "Lcom/fimi/album/x9/X9MediaFileLoad$2;"
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad$2;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    iget-object v1, p0, Lcom/fimi/album/x9/X9MediaFileLoad$2;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-static {v1}, Lcom/fimi/album/x9/X9MediaFileLoad;->access$100(Lcom/fimi/album/x9/X9MediaFileLoad;)Lcom/fimi/album/download/entity/FileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/album/x9/X9MediaFileLoad;->parseXml(Lcom/fimi/album/download/entity/FileInfo;)V

    .line 105
    iget-object v0, p0, Lcom/fimi/album/x9/X9MediaFileLoad$2;->this$0:Lcom/fimi/album/x9/X9MediaFileLoad;

    invoke-static {v0}, Lcom/fimi/album/x9/X9MediaFileLoad;->access$200(Lcom/fimi/album/x9/X9MediaFileLoad;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method
