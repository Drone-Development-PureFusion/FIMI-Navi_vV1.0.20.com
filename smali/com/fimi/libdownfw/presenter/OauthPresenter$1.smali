.class Lcom/fimi/libdownfw/presenter/OauthPresenter$1;
.super Lcom/fimi/network/oauth2/CallBackListner;
.source "OauthPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/presenter/OauthPresenter;->getAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/presenter/OauthPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/presenter/OauthPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/presenter/OauthPresenter;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/libdownfw/presenter/OauthPresenter$1;->this$0:Lcom/fimi/libdownfw/presenter/OauthPresenter;

    invoke-direct {p0}, Lcom/fimi/network/oauth2/CallBackListner;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 22
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, "code":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/libdownfw/presenter/OauthPresenter$1;->this$0:Lcom/fimi/libdownfw/presenter/OauthPresenter;

    iget-object v1, v1, Lcom/fimi/libdownfw/presenter/OauthPresenter;->verificationTask:Lcom/fimi/network/oauth2/OuthVerificationTask;

    invoke-virtual {v1, v0}, Lcom/fimi/network/oauth2/OuthVerificationTask;->getAccessToken(Ljava/lang/String;)V

    .line 24
    return-void
.end method
