.class public Lcom/xiaomi/account/auth/WebViewOauth;
.super Ljava/lang/Object;
.source "WebViewOauth.java"

# interfaces
.implements Lcom/xiaomi/account/auth/XiaomiOAuth;


# static fields
.field private static final AUTHORIZE_PATH:Ljava/lang/String;

.field private static final LOCALE_KEY_IN_URL:Ljava/lang/String; = "_locale"

.field private static final TAG:Ljava/lang/String; = "WebViewOauth"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/auth/WebViewOauth;->AUTHORIZE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mAppId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/auth/WebViewOauth;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/WebViewOauth;
    .param p1, "x1"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/xiaomi/account/auth/WebViewOauth;->quietOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/account/auth/WebViewOauth;Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/WebViewOauth;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .param p3, "x3"    # Lcom/xiaomi/account/IXiaomiAuthResponse;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/auth/WebViewOauth;->getIntent(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private addLocaleIfNeeded(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    const-string v2, "_locale"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 201
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-static {v0}, Lcom/xiaomi/account/auth/WebViewOauth;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "localeString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    const-string v2, "_locale"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntent(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .param p3, "resp"    # Lcom/xiaomi/account/IXiaomiAuthResponse;

    .prologue
    .line 156
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p2, Lcom/xiaomi/account/auth/OAuthConfig;->authorizeActivityClazz:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-direct {p0, p2}, Lcom/xiaomi/account/auth/WebViewOauth;->getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v3, "extra_keep_cookies "

    iget-boolean v4, p2, Lcom/xiaomi/account/auth/OAuthConfig;->keepCookies:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v3, "extra_response"

    new-instance v4, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {v4, p3}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    iget-object v0, p2, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    .line 162
    .local v0, "accountAuth":Lcom/xiaomi/account/openauth/AccountAuth;
    if-eqz v0, :cond_0

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "userId"

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "serviceToken"

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->getServiceToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v3, "userid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v3, "serviceToken"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->getServiceToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method private static getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 208
    if-nez p0, :cond_1

    .line 209
    const/4 v1, 0x0

    .line 219
    :cond_0
    :goto_0
    return-object v1

    .line 213
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 221
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;
    .locals 4
    .param p1, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;

    .prologue
    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "basicBundle":Landroid/os/Bundle;
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "redirect_uri"

    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "response_type"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->responseType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "scope"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->scopes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "state"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "skip_confirm"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string v1, "pt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "device_id"

    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/xiaomi/account/auth/WebViewOauth;->addLocaleIfNeeded(Landroid/os/Bundle;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xiaomi/account/auth/WebViewOauth;->AUTHORIZE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/auth/WebViewOauth;->parseBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "sp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 250
    const/4 v6, 0x0

    .line 266
    :goto_0
    return-object v6

    .line 252
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 254
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 255
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v2, :cond_1

    .line 257
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 260
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 261
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 265
    goto :goto_1

    .line 266
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private parseBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const-string v3, ""

    .line 241
    :goto_0
    return-object v3

    .line 234
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private quietOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 11
    .param p1, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v8, p1, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    if-nez v8, :cond_0

    .line 116
    new-instance v8, Landroid/accounts/AuthenticatorException;

    invoke-direct {v8}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw v8

    .line 118
    :cond_0
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    .line 119
    .local v0, "accountAuth":Lcom/xiaomi/account/openauth/AccountAuth;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v5, v8, :cond_4

    .line 120
    new-instance v8, Lcom/xiaomi/account/http/UrlConnHttpFactory;

    invoke-direct {v8}, Lcom/xiaomi/account/http/UrlConnHttpFactory;-><init>()V

    invoke-virtual {v8}, Lcom/xiaomi/account/http/UrlConnHttpFactory;->createHttpClient()Lcom/xiaomi/account/http/HttpClient;

    move-result-object v4

    .line 121
    .local v4, "httpClient":Lcom/xiaomi/account/http/HttpClient;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v2, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "userId"

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v8, "serviceToken"

    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->getServiceToken()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v8, "Cookie"

    const-string v9, "; "

    invoke-static {v2, v9}, Lcom/xiaomi/account/auth/WebViewOauth;->joinMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v8, Lcom/xiaomi/account/http/Request$Builder;

    invoke-direct {v8}, Lcom/xiaomi/account/http/Request$Builder;-><init>()V

    .line 128
    invoke-direct {p0, p1}, Lcom/xiaomi/account/auth/WebViewOauth;->getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaomi/account/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/account/http/Request$Builder;

    move-result-object v8

    const/4 v9, 0x0

    .line 129
    invoke-virtual {v8, v9}, Lcom/xiaomi/account/http/Request$Builder;->followRedirects(Z)Lcom/xiaomi/account/http/Request$Builder;

    move-result-object v8

    .line 130
    invoke-virtual {v8, v3}, Lcom/xiaomi/account/http/Request$Builder;->headers(Ljava/util/Map;)Lcom/xiaomi/account/http/Request$Builder;

    move-result-object v8

    .line 131
    invoke-virtual {v8}, Lcom/xiaomi/account/http/Request$Builder;->build()Lcom/xiaomi/account/http/Request;

    move-result-object v6

    .line 132
    .local v6, "request":Lcom/xiaomi/account/http/Request;
    invoke-interface {v4, v6}, Lcom/xiaomi/account/http/HttpClient;->excute(Lcom/xiaomi/account/http/Request;)Lcom/xiaomi/account/http/Response;

    move-result-object v7

    .line 133
    .local v7, "response":Lcom/xiaomi/account/http/Response;
    iget-object v8, v7, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 134
    new-instance v8, Landroid/accounts/AuthenticatorException;

    invoke-direct {v8}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw v8

    .line 137
    :cond_1
    iget-object v8, v7, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    iget-object v9, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 138
    iget-object v8, v7, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    invoke-static {v8}, Lcom/xiaomi/account/utils/OAuthUrlPaser;->parse(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 139
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 140
    new-instance v8, Lcom/xiaomi/account/openauth/XMAuthericationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parse url fail:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/xiaomi/account/openauth/XMAuthericationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 142
    :cond_2
    invoke-static {v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v8

    return-object v8

    .line 145
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    invoke-interface {v0}, Lcom/xiaomi/account/openauth/AccountAuth;->invalideServiceToken()V

    .line 119
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 147
    .end local v2    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "httpClient":Lcom/xiaomi/account/http/HttpClient;
    .end local v6    # "request":Lcom/xiaomi/account/http/Request;
    .end local v7    # "response":Lcom/xiaomi/account/http/Response;
    :cond_4
    new-instance v8, Landroid/accounts/AuthenticatorException;

    invoke-direct {v8}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw v8
.end method


# virtual methods
.method public fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/xiaomi/account/auth/WebViewOauth$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/auth/WebViewOauth$1;-><init>(Lcom/xiaomi/account/auth/WebViewOauth;)V

    return-object v0
.end method

.method public getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/xiaomi/account/auth/OAuthConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 76
    .local v1, "mActivityWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    new-instance v0, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    invoke-direct {v0}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;-><init>()V

    .line 78
    .local v0, "future":Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;, "Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl<Lcom/xiaomi/account/openauth/XiaomiOAuthResults;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/xiaomi/account/auth/WebViewOauth$2;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/xiaomi/account/auth/WebViewOauth$2;-><init>(Lcom/xiaomi/account/auth/WebViewOauth;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;Ljava/lang/ref/WeakReference;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-object v0
.end method
