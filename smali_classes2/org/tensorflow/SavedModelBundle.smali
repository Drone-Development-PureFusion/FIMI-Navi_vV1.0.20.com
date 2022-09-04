.class public Lorg/tensorflow/SavedModelBundle;
.super Ljava/lang/Object;
.source "SavedModelBundle.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/SavedModelBundle$Loader;
    }
.end annotation


# instance fields
.field private final graph:Lorg/tensorflow/Graph;

.field private final metaGraphDef:[B

.field private final session:Lorg/tensorflow/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 170
    invoke-static {}, Lorg/tensorflow/TensorFlow;->init()V

    .line 171
    return-void
.end method

.method private constructor <init>(Lorg/tensorflow/Graph;Lorg/tensorflow/Session;[B)V
    .locals 0
    .param p1, "graph"    # Lorg/tensorflow/Graph;
    .param p2, "session"    # Lorg/tensorflow/Session;
    .param p3, "metaGraphDef"    # [B

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/tensorflow/SavedModelBundle;->graph:Lorg/tensorflow/Graph;

    .line 149
    iput-object p2, p0, Lorg/tensorflow/SavedModelBundle;->session:Lorg/tensorflow/Session;

    .line 150
    iput-object p3, p0, Lorg/tensorflow/SavedModelBundle;->metaGraphDef:[B

    .line 151
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/String;[B[B)Lorg/tensorflow/SavedModelBundle;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lorg/tensorflow/SavedModelBundle;->load(Ljava/lang/String;[Ljava/lang/String;[B[B)Lorg/tensorflow/SavedModelBundle;

    move-result-object v0

    return-object v0
.end method

.method private static fromHandle(JJ[B)Lorg/tensorflow/SavedModelBundle;
    .locals 4
    .param p0, "graphHandle"    # J
    .param p2, "sessionHandle"    # J
    .param p4, "metaGraphDef"    # [B

    .prologue
    .line 161
    new-instance v0, Lorg/tensorflow/Graph;

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/Graph;-><init>(J)V

    .line 162
    .local v0, "graph":Lorg/tensorflow/Graph;
    new-instance v1, Lorg/tensorflow/Session;

    invoke-direct {v1, v0, p2, p3}, Lorg/tensorflow/Session;-><init>(Lorg/tensorflow/Graph;J)V

    .line 163
    .local v1, "session":Lorg/tensorflow/Session;
    new-instance v2, Lorg/tensorflow/SavedModelBundle;

    invoke-direct {v2, v0, v1, p4}, Lorg/tensorflow/SavedModelBundle;-><init>(Lorg/tensorflow/Graph;Lorg/tensorflow/Session;[B)V

    return-object v2
.end method

.method public static varargs load(Ljava/lang/String;[Ljava/lang/String;)Lorg/tensorflow/SavedModelBundle;
    .locals 1
    .param p0, "exportDir"    # Ljava/lang/String;
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Lorg/tensorflow/SavedModelBundle;->loader(Ljava/lang/String;)Lorg/tensorflow/SavedModelBundle$Loader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/tensorflow/SavedModelBundle$Loader;->withTags([Ljava/lang/String;)Lorg/tensorflow/SavedModelBundle$Loader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/tensorflow/SavedModelBundle$Loader;->load()Lorg/tensorflow/SavedModelBundle;

    move-result-object v0

    return-object v0
.end method

.method private static native load(Ljava/lang/String;[Ljava/lang/String;[B[B)Lorg/tensorflow/SavedModelBundle;
.end method

.method public static loader(Ljava/lang/String;)Lorg/tensorflow/SavedModelBundle$Loader;
    .locals 2
    .param p0, "exportDir"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Lorg/tensorflow/SavedModelBundle$Loader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tensorflow/SavedModelBundle$Loader;-><init>(Ljava/lang/String;Lorg/tensorflow/SavedModelBundle$1;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->session:Lorg/tensorflow/Session;

    invoke-virtual {v0}, Lorg/tensorflow/Session;->close()V

    .line 140
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->graph:Lorg/tensorflow/Graph;

    invoke-virtual {v0}, Lorg/tensorflow/Graph;->close()V

    .line 141
    return-void
.end method

.method public graph()Lorg/tensorflow/Graph;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->graph:Lorg/tensorflow/Graph;

    return-object v0
.end method

.method public metaGraphDef()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->metaGraphDef:[B

    return-object v0
.end method

.method public session()Lorg/tensorflow/Session;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle;->session:Lorg/tensorflow/Session;

    return-object v0
.end method
