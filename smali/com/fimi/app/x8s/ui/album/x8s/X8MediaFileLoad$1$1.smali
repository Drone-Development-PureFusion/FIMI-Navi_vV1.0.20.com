.class Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;
.super Ljava/lang/Object;
.source "X8MediaFileLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->onProgress(Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;

    .prologue
    .line 94
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 97
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;

    iget-object v1, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    iget-wide v2, v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->fileLength:J

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;J)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1$1;->this$1:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad$1;->this$0:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileLoad;->isAwait:Z

    .line 99
    return-void
.end method
