.class Lcom/fimi/network/oauth2/OuthVerificationTask$1;
.super Ljava/lang/Object;
.source "OuthVerificationTask.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/network/oauth2/OuthVerificationTask;->getAuthorizationCode(Lcom/fimi/network/oauth2/CallBackListner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/network/oauth2/OuthVerificationTask;

.field final synthetic val$backListner:Lcom/fimi/network/oauth2/CallBackListner;


# direct methods
.method constructor <init>(Lcom/fimi/network/oauth2/OuthVerificationTask;Lcom/fimi/network/oauth2/CallBackListner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/network/oauth2/OuthVerificationTask;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/network/oauth2/OuthVerificationTask$1;->this$0:Lcom/fimi/network/oauth2/OuthVerificationTask;

    iput-object p2, p0, Lcom/fimi/network/oauth2/OuthVerificationTask$1;->val$backListner:Lcom/fimi/network/oauth2/CallBackListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 0
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 52
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 42
    move-object v1, p1

    check-cast v1, Lokhttp3/HttpUrl;

    .line 43
    .local v1, "httpUrl":Lokhttp3/HttpUrl;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl;->queryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    iget-object v2, p0, Lcom/fimi/network/oauth2/OuthVerificationTask$1;->val$backListner:Lcom/fimi/network/oauth2/CallBackListner;

    invoke-virtual {v2, v0}, Lcom/fimi/network/oauth2/CallBackListner;->onSuccess(Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-void
.end method
