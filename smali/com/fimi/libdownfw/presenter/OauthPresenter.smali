.class public Lcom/fimi/libdownfw/presenter/OauthPresenter;
.super Ljava/lang/Object;
.source "OauthPresenter.java"


# instance fields
.field verificationTask:Lcom/fimi/network/oauth2/OuthVerificationTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/fimi/network/oauth2/OuthVerificationTask;

    invoke-direct {v0}, Lcom/fimi/network/oauth2/OuthVerificationTask;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/presenter/OauthPresenter;->verificationTask:Lcom/fimi/network/oauth2/OuthVerificationTask;

    .line 16
    return-void
.end method


# virtual methods
.method public getAccessToken()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/libdownfw/presenter/OauthPresenter;->verificationTask:Lcom/fimi/network/oauth2/OuthVerificationTask;

    new-instance v1, Lcom/fimi/libdownfw/presenter/OauthPresenter$1;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/presenter/OauthPresenter$1;-><init>(Lcom/fimi/libdownfw/presenter/OauthPresenter;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/oauth2/OuthVerificationTask;->getAuthorizationCode(Lcom/fimi/network/oauth2/CallBackListner;)V

    .line 28
    return-void
.end method
