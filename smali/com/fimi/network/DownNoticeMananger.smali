.class public Lcom/fimi/network/DownNoticeMananger;
.super Ljava/lang/Object;
.source "DownNoticeMananger.java"


# static fields
.field private static noticeMananger:Lcom/fimi/network/DownNoticeMananger;


# instance fields
.field noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/network/IDownProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fimi/network/DownNoticeMananger;

    invoke-direct {v0}, Lcom/fimi/network/DownNoticeMananger;-><init>()V

    sput-object v0, Lcom/fimi/network/DownNoticeMananger;->noticeMananger:Lcom/fimi/network/DownNoticeMananger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getDownNoticManger()Lcom/fimi/network/DownNoticeMananger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/fimi/network/DownNoticeMananger;->noticeMananger:Lcom/fimi/network/DownNoticeMananger;

    return-object v0
.end method


# virtual methods
.method public addDownNoticeList(Lcom/fimi/network/IDownProgress;)V
    .locals 1
    .param p1, "iDownProgress"    # Lcom/fimi/network/IDownProgress;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public getNoticeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/fimi/network/IDownProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public remioveDownNoticeList(Lcom/fimi/network/IDownProgress;)V
    .locals 4
    .param p1, "iDownProgress"    # Lcom/fimi/network/IDownProgress;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "rm":Lcom/fimi/network/IDownProgress;
    iget-object v2, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/IDownProgress;

    .line 24
    .local v0, "iProgress":Lcom/fimi/network/IDownProgress;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 25
    move-object v1, v0

    .line 32
    .end local v0    # "iProgress":Lcom/fimi/network/IDownProgress;
    :cond_1
    return-void

    .line 28
    .restart local v0    # "iProgress":Lcom/fimi/network/IDownProgress;
    :cond_2
    if-eqz v1, :cond_0

    .line 29
    iget-object v3, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remioveDownNoticeListAll()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/fimi/network/DownNoticeMananger;->noticeList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 38
    :cond_0
    return-void
.end method
