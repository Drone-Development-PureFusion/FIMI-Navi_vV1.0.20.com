.class public Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
.super Ljava/lang/Object;
.source "XiaomiOAuthResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;,
        Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XiaomiOAuthResults"


# instance fields
.field private final contentBundle:Landroid/os/Bundle;

.field private final errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

.field private final successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;)V
    .locals 1
    .param p1, "contentBundle"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    .line 14
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;)V
    .locals 1
    .param p1, "contentBundle"    # Landroid/os/Bundle;
    .param p2, "success"    # Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    .line 21
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0, p1, p2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 152
    :goto_0
    return v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "XiaomiOAuthResults"

    const-string v3, "error, return 0 instead:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIntOrStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v2

    const/4 v4, 0x1

    aput-object p2, v3, v4

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 159
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 169
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 170
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .end local v0    # "key":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 172
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 175
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getStringCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 203
    :goto_0
    return-object v1

    .line 199
    :cond_0
    const-string v1, "extra_error_code"

    const-string v2, "error"

    invoke-static {p0, v1, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getIntCompatibly(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "errorCode":I
    if-eqz v0, :cond_1

    .line 201
    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->access$300(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;-><init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;)V

    goto :goto_0

    .line 203
    :cond_1
    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    invoke-static {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->access$400(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;-><init>(Landroid/os/Bundle;Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->accessToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->code:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->contentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    iget v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->errorMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpiresIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->expiresIn:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macAlgorithm:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMacKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->macKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->scopes:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->state:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    iget-object v0, v0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->tokenType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->successResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Success;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->errorResult:Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;

    invoke-virtual {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults$Error;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not be here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
