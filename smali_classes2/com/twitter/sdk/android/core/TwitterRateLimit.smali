.class public Lcom/twitter/sdk/android/core/TwitterRateLimit;
.super Ljava/lang/Object;
.source "TwitterRateLimit.java"


# static fields
.field private static final LIMIT_KEY:Ljava/lang/String; = "x-rate-limit-limit"

.field private static final REMAINING_KEY:Ljava/lang/String; = "x-rate-limit-remaining"

.field private static final RESET_KEY:Ljava/lang/String; = "x-rate-limit-reset"


# instance fields
.field private remainingRequest:I

.field private requestLimit:I

.field private resetSeconds:J


# direct methods
.method constructor <init>(Lokhttp3/Headers;)V
    .locals 4
    .param p1, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "headers must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 42
    const-string v1, "x-rate-limit-limit"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/core/TwitterRateLimit;->requestLimit:I

    .line 41
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    const-string v1, "x-rate-limit-remaining"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/twitter/sdk/android/core/TwitterRateLimit;->remainingRequest:I

    goto :goto_1

    .line 46
    :cond_3
    const-string v1, "x-rate-limit-reset"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/sdk/android/core/TwitterRateLimit;->resetSeconds:J

    goto :goto_1

    .line 50
    :cond_4
    return-void
.end method


# virtual methods
.method public getLimit()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/twitter/sdk/android/core/TwitterRateLimit;->requestLimit:I

    return v0
.end method

.method public getRemaining()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/twitter/sdk/android/core/TwitterRateLimit;->remainingRequest:I

    return v0
.end method

.method public getReset()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/TwitterRateLimit;->resetSeconds:J

    return-wide v0
.end method
