.class public Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
.super Ljava/lang/Object;
.source "PhotoParamItemEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nickName:Ljava/lang/String;

.field private nickParam:Ljava/lang/String;

.field private paramKey:Ljava/lang/String;

.field private paramValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNickParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->nickParam:Ljava/lang/String;

    return-object v0
.end method

.method public getParamKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->paramKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParamValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->paramValue:Ljava/lang/String;

    return-object v0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->nickName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setNickParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickParam"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->nickParam:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setParamKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramKey"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->paramKey:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setParamValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;->paramValue:Ljava/lang/String;

    .line 32
    return-void
.end method
