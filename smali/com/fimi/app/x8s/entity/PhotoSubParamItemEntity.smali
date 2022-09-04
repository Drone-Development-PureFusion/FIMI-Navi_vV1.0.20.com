.class public Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;
.super Ljava/lang/Object;
.source "PhotoSubParamItemEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private iselected:Z

.field private optionMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private paramKey:Ljava/lang/String;

.field private paramValue:Ljava/lang/String;

.field private titleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->optionMap:Ljava/util/LinkedHashMap;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->iselected:Z

    return-void
.end method


# virtual methods
.method public clearOptions()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->options:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    :cond_0
    return-void
.end method

.method public getOptionMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->optionMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

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
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->options:Ljava/util/List;

    return-object v0
.end method

.method public getParamKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->paramKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParamValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->paramValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->titleName:Ljava/lang/String;

    return-object v0
.end method

.method public isIselected()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->iselected:Z

    return v0
.end method

.method public setIselected(Z)V
    .locals 0
    .param p1, "iselected"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->iselected:Z

    .line 68
    return-void
.end method

.method public setOptionMap(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "optionMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->optionMap:Ljava/util/LinkedHashMap;

    .line 60
    return-void
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
    .line 51
    .local p1, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->options:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setParamKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramKey"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->paramKey:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setParamValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->paramValue:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setTitleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->titleName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhotoSubParamItemEntity{paramKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->paramKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paramValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->paramValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", titleName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", optionMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->optionMap:Ljava/util/LinkedHashMap;

    .line 77
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iselected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/entity/PhotoSubParamItemEntity;->iselected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method
