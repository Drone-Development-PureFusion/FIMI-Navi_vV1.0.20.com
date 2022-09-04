.class public final Lorg/tensorflow/SavedModelBundle$Loader;
.super Ljava/lang/Object;
.source "SavedModelBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/SavedModelBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loader"
.end annotation


# instance fields
.field private configProto:[B

.field private exportDir:Ljava/lang/String;

.field private runOptions:[B

.field private tags:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "exportDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lorg/tensorflow/SavedModelBundle$Loader;->exportDir:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/tensorflow/SavedModelBundle$Loader;->tags:[Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/tensorflow/SavedModelBundle$Loader;->configProto:[B

    .line 76
    iput-object v0, p0, Lorg/tensorflow/SavedModelBundle$Loader;->runOptions:[B

    .line 70
    iput-object p1, p0, Lorg/tensorflow/SavedModelBundle$Loader;->exportDir:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/tensorflow/SavedModelBundle$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/tensorflow/SavedModelBundle$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/tensorflow/SavedModelBundle$Loader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public load()Lorg/tensorflow/SavedModelBundle;
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lorg/tensorflow/SavedModelBundle$Loader;->exportDir:Ljava/lang/String;

    iget-object v1, p0, Lorg/tensorflow/SavedModelBundle$Loader;->tags:[Ljava/lang/String;

    iget-object v2, p0, Lorg/tensorflow/SavedModelBundle$Loader;->configProto:[B

    iget-object v3, p0, Lorg/tensorflow/SavedModelBundle$Loader;->runOptions:[B

    invoke-static {v0, v1, v2, v3}, Lorg/tensorflow/SavedModelBundle;->access$000(Ljava/lang/String;[Ljava/lang/String;[B[B)Lorg/tensorflow/SavedModelBundle;

    move-result-object v0

    return-object v0
.end method

.method public withConfigProto([B)Lorg/tensorflow/SavedModelBundle$Loader;
    .locals 0
    .param p1, "configProto"    # [B

    .prologue
    .line 55
    iput-object p1, p0, Lorg/tensorflow/SavedModelBundle$Loader;->configProto:[B

    .line 56
    return-object p0
.end method

.method public withRunOptions([B)Lorg/tensorflow/SavedModelBundle$Loader;
    .locals 0
    .param p1, "options"    # [B

    .prologue
    .line 43
    iput-object p1, p0, Lorg/tensorflow/SavedModelBundle$Loader;->runOptions:[B

    .line 44
    return-object p0
.end method

.method public varargs withTags([Ljava/lang/String;)Lorg/tensorflow/SavedModelBundle$Loader;
    .locals 0
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/tensorflow/SavedModelBundle$Loader;->tags:[Ljava/lang/String;

    .line 66
    return-object p0
.end method
