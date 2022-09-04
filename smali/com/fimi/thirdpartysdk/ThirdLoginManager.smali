.class public Lcom/fimi/thirdpartysdk/ThirdLoginManager;
.super Ljava/lang/Object;
.source "ThirdLoginManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initThirdLogin(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/thirdpartysdk/R$string;->twitter_CONSUMER_KEY:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "CONSUMER_KEY":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/thirdpartysdk/R$string;->twitter_CONSUMER_SECRET:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "CONSUMER_SECRET":Ljava/lang/String;
    new-instance v3, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    invoke-direct {v3, p0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/twitter/sdk/android/core/DefaultLogger;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>(I)V

    .line 23
    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v4, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 25
    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v2

    .line 27
    .local v2, "config":Lcom/twitter/sdk/android/core/TwitterConfig;
    invoke-static {v2}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    .line 28
    return-void
.end method
