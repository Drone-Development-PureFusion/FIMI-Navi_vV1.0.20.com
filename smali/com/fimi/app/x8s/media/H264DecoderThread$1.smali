.class Lcom/fimi/app/x8s/media/H264DecoderThread$1;
.super Ljava/lang/Object;
.source "H264DecoderThread.java"

# interfaces
.implements Lcom/fimi/app/x8s/media/IH264DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/media/H264DecoderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/media/H264DecoderThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/media/H264DecoderThread;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onH264Frame([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$000(Lcom/fimi/app/x8s/media/H264DecoderThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$002(Lcom/fimi/app/x8s/media/H264DecoderThread;Z)Z

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$102(Lcom/fimi/app/x8s/media/H264DecoderThread;J)J

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$208(Lcom/fimi/app/x8s/media/H264DecoderThread;)I

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    iget-object v0, v0, Lcom/fimi/app/x8s/media/H264DecoderThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 133
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$208(Lcom/fimi/app/x8s/media/H264DecoderThread;)I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v2}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$100(Lcom/fimi/app/x8s/media/H264DecoderThread;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$002(Lcom/fimi/app/x8s/media/H264DecoderThread;Z)Z

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$300(Lcom/fimi/app/x8s/media/H264DecoderThread;)Lcom/fimi/app/x8s/media/IFrameDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$300(Lcom/fimi/app/x8s/media/H264DecoderThread;)Lcom/fimi/app/x8s/media/IFrameDataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v1}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$200(Lcom/fimi/app/x8s/media/H264DecoderThread;)I

    move-result v1

    invoke-interface {v0, v1, v4, v4}, Lcom/fimi/app/x8s/media/IFrameDataListener;->onCountFrame(III)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264DecoderThread$1;->this$0:Lcom/fimi/app/x8s/media/H264DecoderThread;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/media/H264DecoderThread;->access$202(Lcom/fimi/app/x8s/media/H264DecoderThread;I)I

    goto :goto_0
.end method
