.class public Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
.super Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;
.source "CameraParamsJson.java"


# instance fields
.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permission:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->options:Ljava/util/List;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->options:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->permission:Ljava/lang/String;

    .line 20
    return-void
.end method
