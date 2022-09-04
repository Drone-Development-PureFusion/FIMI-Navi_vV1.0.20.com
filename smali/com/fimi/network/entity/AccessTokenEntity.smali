.class public Lcom/fimi/network/entity/AccessTokenEntity;
.super Ljava/lang/Object;
.source "AccessTokenEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private access_token:Ljava/lang/String;

.field private expires_in:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/network/entity/AccessTokenEntity;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/fimi/network/entity/AccessTokenEntity;->expires_in:J

    return-wide v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fimi/network/entity/AccessTokenEntity;->access_token:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setExpires_in(J)V
    .locals 1
    .param p1, "expires_in"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/fimi/network/entity/AccessTokenEntity;->expires_in:J

    .line 29
    return-void
.end method
