.class public Lcom/fimi/kernel/connect/session/NoticeManager;
.super Ljava/lang/Object;
.source "NoticeManager.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IDataCallBack;


# static fields
.field private static mNoticeManager:Lcom/fimi/kernel/connect/session/NoticeManager;


# instance fields
.field private jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/kernel/connect/session/JsonListener;",
            ">;"
        }
    .end annotation
.end field

.field private final jsonMsg:I

.field private list:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/kernel/connect/interfaces/IDataCallBack;",
            ">;"
        }
    .end annotation
.end field

.field listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

.field private mDataUiHanler:Lcom/fimi/kernel/connect/DataUiHanler;

.field private mHanlder:Landroid/os/Handler;

.field private mediaDataListener:Lcom/fimi/kernel/connect/session/MediaDataListener;

.field private mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/kernel/connect/session/MediaDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private final outMsg:I

.field private final personMsg:I

.field private final uiCallMsg:I

.field updateDateListener:Lcom/fimi/kernel/connect/session/UpdateDateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/fimi/kernel/connect/session/NoticeManager;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/session/NoticeManager;-><init>()V

    sput-object v0, Lcom/fimi/kernel/connect/session/NoticeManager;->mNoticeManager:Lcom/fimi/kernel/connect/session/NoticeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 212
    new-instance v0, Lcom/fimi/kernel/connect/DataUiHanler;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/DataUiHanler;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mDataUiHanler:Lcom/fimi/kernel/connect/DataUiHanler;

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->personMsg:I

    .line 215
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->outMsg:I

    .line 216
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonMsg:I

    .line 217
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->uiCallMsg:I

    .line 218
    new-instance v0, Lcom/fimi/kernel/connect/session/NoticeManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager$1;-><init>(Lcom/fimi/kernel/connect/session/NoticeManager;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/session/NoticeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/session/NoticeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/connect/session/NoticeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/session/NoticeManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fimi/kernel/connect/session/NoticeManager;->mNoticeManager:Lcom/fimi/kernel/connect/session/NoticeManager;

    return-object v0
.end method

.method public static initInstance()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    .line 34
    return-void
.end method


# virtual methods
.method public add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/kernel/connect/interfaces/IDataCallBack;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;Lcom/fimi/kernel/connect/session/JsonListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    .param p2, "listener"    # Lcom/fimi/kernel/connect/session/JsonListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;Lcom/fimi/kernel/connect/session/UpdateDateListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    .param p2, "updateDateListener"    # Lcom/fimi/kernel/connect/session/UpdateDateListener;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iput-object p2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->updateDateListener:Lcom/fimi/kernel/connect/session/UpdateDateListener;

    .line 91
    return-void
.end method

.method public add2NoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;Lcom/fimi/kernel/connect/session/VideodDataListener;)V
    .locals 1
    .param p1, "callback"    # Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    .param p2, "listener"    # Lcom/fimi/kernel/connect/session/VideodDataListener;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iput-object p2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    .line 86
    return-void
.end method

.method public addJsonListener(Lcom/fimi/kernel/connect/session/JsonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/JsonListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public addMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/MediaDataListener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public onDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "packet"    # Lcom/fimi/kernel/dataparser/ILinkMessage;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public onJsonDataCallBack(ILcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "respJson"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    return-void
.end method

.method public onJsonDataUICallBack(Lcom/fimi/kernel/dataparser/JsonMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/fimi/kernel/dataparser/JsonMessage;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/JsonMessage;->getMsg_id()I

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/JsonMessage;->getMsg_id()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    :cond_0
    return-void
.end method

.method public onMediaDataCallBack([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 142
    iget-object v1, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/session/MediaDataListener;

    .line 144
    .local v0, "listener":Lcom/fimi/kernel/connect/session/MediaDataListener;
    invoke-interface {v0, p1}, Lcom/fimi/kernel/connect/session/MediaDataListener;->mediaDataCallBack([B)V

    goto :goto_0

    .line 147
    .end local v0    # "listener":Lcom/fimi/kernel/connect/session/MediaDataListener;
    :cond_0
    return-void
.end method

.method public onPersonalDataCallBack(IILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "msg"    # Lcom/fimi/kernel/dataparser/ILinkMessage;
    .param p4, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .prologue
    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 190
    .local v1, "message":Landroid/os/Message;
    const-string v2, "target"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 194
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 195
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 196
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mDataUiHanler:Lcom/fimi/kernel/connect/DataUiHanler;

    invoke-virtual {v2, v1}, Lcom/fimi/kernel/connect/DataUiHanler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    return-void
.end method

.method public onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;
    .param p4, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .prologue
    .line 200
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 202
    .local v1, "message":Landroid/os/Message;
    const-string v2, "target"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 203
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 204
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 206
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 207
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 208
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mDataUiHanler:Lcom/fimi/kernel/connect/DataUiHanler;

    invoke-virtual {v2, v1}, Lcom/fimi/kernel/connect/DataUiHanler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method public onRawDataCallBack([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/connect/session/VideodDataListener;->onRawdataCallBack([B)V

    .line 167
    :cond_0
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 185
    return-void
.end method

.method public onUpdateDateCallBack(Lcom/fimi/kernel/connect/model/UpdateDateMessage;)V
    .locals 1
    .param p1, "updateDateMessage"    # Lcom/fimi/kernel/connect/model/UpdateDateMessage;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->updateDateListener:Lcom/fimi/kernel/connect/session/UpdateDateListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->updateDateListener:Lcom/fimi/kernel/connect/session/UpdateDateListener;

    invoke-interface {v0, p1}, Lcom/fimi/kernel/connect/session/UpdateDateListener;->onUpdateDateCallBack(Lcom/fimi/kernel/connect/model/UpdateDateMessage;)V

    .line 174
    :cond_0
    return-void
.end method

.method public removeALLMediaListener()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 64
    return-void
.end method

.method public removeFpvListener()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->listener:Lcom/fimi/kernel/connect/session/VideodDataListener;

    .line 117
    :cond_0
    return-void
.end method

.method public removeJsonListener(Lcom/fimi/kernel/connect/session/JsonListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/JsonListener;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "remove":Lcom/fimi/kernel/connect/session/JsonListener;
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/session/JsonListener;

    .line 129
    .local v0, "ll":Lcom/fimi/kernel/connect/session/JsonListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 130
    move-object v1, v0

    .line 135
    .end local v0    # "ll":Lcom/fimi/kernel/connect/session/JsonListener;
    :cond_1
    if-eqz v1, :cond_2

    .line 136
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->jsonListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    return-void
.end method

.method public removeMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/connect/session/MediaDataListener;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->mediaIist:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public removeNoticeList(Lcom/fimi/kernel/connect/interfaces/IDataCallBack;)V
    .locals 4
    .param p1, "callBack"    # Lcom/fimi/kernel/connect/interfaces/IDataCallBack;

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "remove":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/connect/interfaces/IDataCallBack;

    .line 97
    .local v0, "l":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 98
    move-object v1, v0

    .line 102
    .end local v0    # "l":Lcom/fimi/kernel/connect/interfaces/IDataCallBack;
    :cond_1
    if-eqz v1, :cond_2

    .line 103
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->list:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->updateDateListener:Lcom/fimi/kernel/connect/session/UpdateDateListener;

    if-eqz v2, :cond_3

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fimi/kernel/connect/session/NoticeManager;->updateDateListener:Lcom/fimi/kernel/connect/session/UpdateDateListener;

    .line 111
    :cond_3
    return-void
.end method
