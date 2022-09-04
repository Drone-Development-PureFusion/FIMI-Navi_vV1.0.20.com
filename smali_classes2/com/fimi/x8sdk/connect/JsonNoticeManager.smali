.class public Lcom/fimi/x8sdk/connect/JsonNoticeManager;
.super Ljava/lang/Object;
.source "JsonNoticeManager.java"


# static fields
.field private static noticeManager:Lcom/fimi/x8sdk/connect/JsonNoticeManager;


# instance fields
.field callBackListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/listener/JsonCallBackListener;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final normalMsg:I

.field private final outTimeMsg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/JsonNoticeManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->noticeManager:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->outTimeMsg:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->normalMsg:I

    .line 67
    new-instance v0, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/x8sdk/connect/JsonNoticeManager$1;-><init>(Lcom/fimi/x8sdk/connect/JsonNoticeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method public static getNoticeManager()Lcom/fimi/x8sdk/connect/JsonNoticeManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->noticeManager:Lcom/fimi/x8sdk/connect/JsonNoticeManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/JsonCallBackListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public onProcess(ILcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "ackCamJsonInfo"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method public removeListener(Lcom/fimi/x8sdk/listener/JsonCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/x8sdk/listener/JsonCallBackListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->callBackListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method

.method public sendOutTime()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/JsonNoticeManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method
