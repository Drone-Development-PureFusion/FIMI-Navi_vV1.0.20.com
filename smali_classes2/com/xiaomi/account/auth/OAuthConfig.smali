.class public Lcom/xiaomi/account/auth/OAuthConfig;
.super Ljava/lang/Object;
.source "OAuthConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    }
.end annotation


# static fields
.field private static final SCOPE_SPLITTOR:C = ' '


# instance fields
.field final accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

.field final appId:Ljava/lang/String;

.field final authorizeActivityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field final deviceID:Ljava/lang/String;

.field final keepCookies:Z

.field final notUseMiui:Z

.field final platform:I

.field final redirectUrl:Ljava/lang/String;

.field final responseType:Ljava/lang/String;

.field final scopes:Ljava/lang/String;

.field final skipConfirm:Ljava/lang/Boolean;

.field final state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$000(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/auth/OAuthConfig;->makeScopeString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->scopes:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$100(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->notUseMiui:Z

    .line 33
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$200(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$300(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$400(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    .line 37
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$500(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->state:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$600(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->keepCookies:Z

    .line 39
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$700(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->authorizeActivityClazz:Ljava/lang/Class;

    .line 40
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$800(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Lcom/xiaomi/account/openauth/AccountAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    .line 41
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$900(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    .line 42
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$1000(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->deviceID:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->access$1100(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig;->responseType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private static makeScopeString([I)Ljava/lang/String;
    .locals 7
    .param p0, "scopes"    # [I

    .prologue
    .line 65
    if-eqz p0, :cond_2

    array-length v4, p0

    if-lez v4, :cond_2

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 68
    .local v0, "i":I
    array-length v5, p0

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v3, p0, v4

    .line 69
    .local v3, "scope":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 70
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 74
    .end local v3    # "scope":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public makeOptions()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "extra_response_type"

    iget-object v2, p0, Lcom/xiaomi/account/auth/OAuthConfig;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "extra_skip_confirm"

    iget-object v2, p0, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig;->state:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string v1, "extra_state"

    iget-object v2, p0, Lcom/xiaomi/account/auth/OAuthConfig;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig;->scopes:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    const-string v1, "extra_scope"

    iget-object v2, p0, Lcom/xiaomi/account/auth/OAuthConfig;->scopes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_2
    return-object v0
.end method
