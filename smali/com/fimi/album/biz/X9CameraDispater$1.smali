.class Lcom/fimi/album/biz/X9CameraDispater$1;
.super Ljava/lang/Object;
.source "X9CameraDispater.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/biz/X9CameraDispater;->test()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/biz/X9CameraDispater;


# direct methods
.method constructor <init>(Lcom/fimi/album/biz/X9CameraDispater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/biz/X9CameraDispater;

    .prologue
    .line 108
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater$1;, "Lcom/fimi/album/biz/X9CameraDispater$1;"
    iput-object p1, p0, Lcom/fimi/album/biz/X9CameraDispater$1;->this$0:Lcom/fimi/album/biz/X9CameraDispater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 0
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 125
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater$1;, "Lcom/fimi/album/biz/X9CameraDispater$1;"
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 112
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater$1;, "Lcom/fimi/album/biz/X9CameraDispater$1;"
    const-wide/16 v2, 0x64

    div-long v2, p4, v2

    div-long v2, p2, v2

    long-to-int v0, v2

    .line 115
    .local v0, "pos":I
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 130
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater$1;, "Lcom/fimi/album/biz/X9CameraDispater$1;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 120
    .local p0, "this":Lcom/fimi/album/biz/X9CameraDispater$1;, "Lcom/fimi/album/biz/X9CameraDispater$1;"
    return-void
.end method
