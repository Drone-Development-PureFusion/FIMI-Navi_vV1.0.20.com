.class public Lcom/fimi/x8sdk/appsetting/Describe;
.super Ljava/lang/Object;
.source "Describe.java"


# instance fields
.field private describe:Ljava/lang/String;

.field private idInfo:Lcom/fimi/x8sdk/appsetting/IdInfoJson;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescribe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fimi/x8sdk/appsetting/Describe;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getIdInfo()Lcom/fimi/x8sdk/appsetting/IdInfoJson;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/x8sdk/appsetting/Describe;->idInfo:Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/Describe;->version:I

    return v0
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0
    .param p1, "describe"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fimi/x8sdk/appsetting/Describe;->describe:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setIdInfo(Lcom/fimi/x8sdk/appsetting/IdInfoJson;)V
    .locals 0
    .param p1, "idInfo"    # Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fimi/x8sdk/appsetting/Describe;->idInfo:Lcom/fimi/x8sdk/appsetting/IdInfoJson;

    .line 26
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/Describe;->version:I

    .line 34
    return-void
.end method
