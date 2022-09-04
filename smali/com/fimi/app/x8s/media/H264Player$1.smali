.class Lcom/fimi/app/x8s/media/H264Player$1;
.super Ljava/lang/Object;
.source "H264Player.java"

# interfaces
.implements Lcom/fimi/app/x8s/media/IH264DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/media/H264Player;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/media/H264Player;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/media/H264Player;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/media/H264Player;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264Player$1;->this$0:Lcom/fimi/app/x8s/media/H264Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onH264Frame([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264Player$1;->this$0:Lcom/fimi/app/x8s/media/H264Player;

    invoke-static {v0}, Lcom/fimi/app/x8s/media/H264Player;->access$000(Lcom/fimi/app/x8s/media/H264Player;)Lcom/fimi/media/FimiMediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fimi/media/FimiMediaPlayer;->addBufferData([BII)V

    .line 55
    return-void
.end method
