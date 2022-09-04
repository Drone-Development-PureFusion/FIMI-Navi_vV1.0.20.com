.class public Lcom/fimi/network/oauth2/OAuthClientRequest;
.super Ljava/lang/Object;
.source "OAuthClientRequest.java"


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mClientSecret:Ljava/lang/String;

.field private mCode:Ljava/lang/String;

.field private mGrantType:Ljava/lang/String;

.field private mRedirectURI:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mClientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mGrantType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mRedirectURI:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mClientId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mClientSecret:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mCode:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setGrantType(Ljava/lang/String;)V
    .locals 0
    .param p1, "grantType"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mGrantType:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRedirectURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectURI"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mRedirectURI:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fimi/network/oauth2/OAuthClientRequest;->mResponseType:Ljava/lang/String;

    .line 25
    return-void
.end method
