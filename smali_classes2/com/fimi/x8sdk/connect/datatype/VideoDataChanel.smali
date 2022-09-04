.class public Lcom/fimi/x8sdk/connect/datatype/VideoDataChanel;
.super Ljava/lang/Object;
.source "VideoDataChanel.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/datatype/IDataChanel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forwardData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 12
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/NoticeManager;->onRawDataCallBack([B)V

    .line 13
    return-void
.end method
