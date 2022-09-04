.class Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;
.super Ljava/lang/Object;
.source "ComposerScribeClientImpl.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClient;


# instance fields
.field private final scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;)V
    .locals 2
    .param p1, "scribeClient"    # Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scribeClient must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    .line 35
    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v1, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    const-string v2, ""

    .line 50
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, "click"

    .line 52
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 54
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 55
    return-void
.end method

.method public impression()V
    .locals 3

    .prologue
    .line 39
    sget-object v1, Lcom/twitter/sdk/android/tweetcomposer/ScribeConstants;->ComposerEventBuilder:Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    const-string v2, ""

    .line 40
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setComponent(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, ""

    .line 41
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setElement(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    const-string v2, "impression"

    .line 42
    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->setAction(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace$Builder;->builder()Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    .line 44
    .local v0, "ns":Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerScribeClientImpl;->scribeClient:Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lcom/twitter/sdk/android/tweetcomposer/ScribeClient;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    .line 45
    return-void
.end method
