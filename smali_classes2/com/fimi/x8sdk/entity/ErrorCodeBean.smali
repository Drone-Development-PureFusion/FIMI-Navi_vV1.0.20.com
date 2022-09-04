.class public Lcom/fimi/x8sdk/entity/ErrorCodeBean;
.super Ljava/lang/Object;
.source "ErrorCodeBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConditionValuesBean;,
        Lcom/fimi/x8sdk/entity/ErrorCodeBean$CtrlModeBean;,
        Lcom/fimi/x8sdk/entity/ErrorCodeBean$FlightPhase;,
        Lcom/fimi/x8sdk/entity/ErrorCodeBean$ConstraintBitBean;,
        Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;,
        Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;
    }
.end annotation


# instance fields
.field private Configs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation
.end field

.field private Version:Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Configs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Configs:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Version:Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;

    return-object v0
.end method

.method public setConfigs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/ErrorCodeBean$ActionBean;>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Configs:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setVersion(Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;)V
    .locals 0
    .param p1, "version"    # Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Version:Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorCodeBean{Version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Version:Lcom/fimi/x8sdk/entity/ErrorCodeBean$VersionBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/entity/ErrorCodeBean;->Configs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
