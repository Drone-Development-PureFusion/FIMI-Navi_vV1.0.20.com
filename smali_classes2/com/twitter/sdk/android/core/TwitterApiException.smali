.class public Lcom/twitter/sdk/android/core/TwitterApiException;
.super Lcom/twitter/sdk/android/core/TwitterException;
.source "TwitterApiException.java"


# static fields
.field public static final DEFAULT_ERROR_CODE:I


# instance fields
.field private final apiError:Lcom/twitter/sdk/android/core/models/ApiError;

.field private final code:I

.field private final response:Lretrofit2/Response;

.field private final twitterRateLimit:Lcom/twitter/sdk/android/core/TwitterRateLimit;


# direct methods
.method public constructor <init>(Lretrofit2/Response;)V
    .locals 3
    .param p1, "response"    # Lretrofit2/Response;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterApiException;->readApiError(Lretrofit2/Response;)Lcom/twitter/sdk/android/core/models/ApiError;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterApiException;->readApiRateLimit(Lretrofit2/Response;)Lcom/twitter/sdk/android/core/TwitterRateLimit;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterApiException;-><init>(Lretrofit2/Response;Lcom/twitter/sdk/android/core/models/ApiError;Lcom/twitter/sdk/android/core/TwitterRateLimit;I)V

    .line 44
    return-void
.end method

.method constructor <init>(Lretrofit2/Response;Lcom/twitter/sdk/android/core/models/ApiError;Lcom/twitter/sdk/android/core/TwitterRateLimit;I)V
    .locals 1
    .param p1, "response"    # Lretrofit2/Response;
    .param p2, "apiError"    # Lcom/twitter/sdk/android/core/models/ApiError;
    .param p3, "twitterRateLimit"    # Lcom/twitter/sdk/android/core/TwitterRateLimit;
    .param p4, "code"    # I

    .prologue
    .line 48
    invoke-static {p4}, Lcom/twitter/sdk/android/core/TwitterApiException;->createExceptionMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->apiError:Lcom/twitter/sdk/android/core/models/ApiError;

    .line 50
    iput-object p3, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->twitterRateLimit:Lcom/twitter/sdk/android/core/TwitterRateLimit;

    .line 51
    iput p4, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->code:I

    .line 52
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->response:Lretrofit2/Response;

    .line 53
    return-void
.end method

.method static createExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP request failed, Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static parseApiError(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/ApiError;
    .locals 7
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v4, Lcom/twitter/sdk/android/core/models/SafeListAdapter;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/models/SafeListAdapter;-><init>()V

    .line 106
    invoke-virtual {v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    new-instance v4, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;-><init>()V

    .line 107
    invoke-virtual {v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 110
    .local v2, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v3, Lcom/twitter/sdk/android/core/models/ApiErrors;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/ApiErrors;

    .line 111
    .local v0, "apiErrors":Lcom/twitter/sdk/android/core/models/ApiErrors;
    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    iget-object v3, v0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/sdk/android/core/models/ApiError;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "apiErrors":Lcom/twitter/sdk/android/core/models/ApiErrors;
    :goto_0
    return-object v3

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v3

    const-string v4, "Twitter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid json: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v1    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static readApiError(Lretrofit2/Response;)Lcom/twitter/sdk/android/core/models/ApiError;
    .locals 5
    .param p0, "response"    # Lretrofit2/Response;

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "body":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-static {v0}, Lcom/twitter/sdk/android/core/TwitterApiException;->parseApiError(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/ApiError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    .end local v0    # "body":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v2

    const-string v3, "Twitter"

    const-string v4, "Unexpected response"

    invoke-interface {v2, v3, v4, v1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readApiRateLimit(Lretrofit2/Response;)Lcom/twitter/sdk/android/core/TwitterRateLimit;
    .locals 2
    .param p0, "response"    # Lretrofit2/Response;

    .prologue
    .line 86
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterRateLimit;

    invoke-virtual {p0}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterRateLimit;-><init>(Lokhttp3/Headers;)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->apiError:Lcom/twitter/sdk/android/core/models/ApiError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->apiError:Lcom/twitter/sdk/android/core/models/ApiError;

    iget v0, v0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->apiError:Lcom/twitter/sdk/android/core/models/ApiError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->apiError:Lcom/twitter/sdk/android/core/models/ApiError;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResponse()Lretrofit2/Response;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->response:Lretrofit2/Response;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->code:I

    return v0
.end method

.method public getTwitterRateLimit()Lcom/twitter/sdk/android/core/TwitterRateLimit;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->twitterRateLimit:Lcom/twitter/sdk/android/core/TwitterRateLimit;

    return-object v0
.end method
