.class public Lcom/fimi/x8sdk/update/fwpack/PkgDetl;
.super Ljava/lang/Object;
.source "PkgDetl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;"
        }
    .end annotation
.end field

.field private id1:I

.field private mainVer:S

.field private suberVer:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->fws:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFws()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->fws:Ljava/util/List;

    return-object v0
.end method

.method public getId1()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->id1:I

    return v0
.end method

.method public getMainVer()S
    .locals 1

    .prologue
    .line 27
    iget-short v0, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->mainVer:S

    return v0
.end method

.method public getSuberVer()S
    .locals 1

    .prologue
    .line 43
    iget-short v0, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->suberVer:S

    return v0
.end method

.method public setFws(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/update/fwpack/FwInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "fws":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/update/fwpack/FwInfo;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->fws:Ljava/util/List;

    .line 25
    return-void
.end method

.method public setId1(I)V
    .locals 0
    .param p1, "id1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->id1:I

    .line 38
    return-void
.end method

.method public setMainVer(S)V
    .locals 0
    .param p1, "mainVer"    # S

    .prologue
    .line 30
    iput-short p1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->mainVer:S

    .line 31
    return-void
.end method

.method public setSuberVer(S)V
    .locals 0
    .param p1, "suberVer"    # S

    .prologue
    .line 46
    iput-short p1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->suberVer:S

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PkgDetl [mainVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->mainVer:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", suberVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->suberVer:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->id1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fws="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/update/fwpack/PkgDetl;->fws:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
