.class public Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;
.super Ljava/lang/Object;
.source "DisposeDataHandle.java"


# static fields
.field public static isStop:Z


# instance fields
.field public isArray:Z

.field public mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

.field public mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 9
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    .line 16
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;Ljava/lang/Class;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 9
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    .line 21
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 22
    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;Ljava/lang/Class;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;
    .param p3, "isArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 9
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    .line 27
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 28
    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    .line 29
    iput-boolean p3, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 9
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mClass:Ljava/lang/Class;

    .line 10
    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isArray:Z

    .line 34
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    .line 35
    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public isStop()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    return v0
.end method

.method public setStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 43
    sput-boolean p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop:Z

    .line 44
    return-void
.end method
