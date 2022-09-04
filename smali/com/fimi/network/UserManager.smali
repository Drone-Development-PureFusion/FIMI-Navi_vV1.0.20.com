.class public Lcom/fimi/network/UserManager;
.super Lcom/fimi/network/BaseManager;
.source "UserManager.java"


# static fields
.field private static mUserManager:Lcom/fimi/network/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    .line 25
    return-void
.end method

.method public static getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/network/UserManager;->mUserManager:Lcom/fimi/network/UserManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/fimi/network/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/network/UserManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fimi/network/UserManager;->mUserManager:Lcom/fimi/network/UserManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/fimi/network/UserManager;->mUserManager:Lcom/fimi/network/UserManager;

    return-object v0
.end method


# virtual methods
.method public getSecurityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "codeFun"    # Ljava/lang/String;
    .param p3, "codeType"    # Ljava/lang/String;
    .param p4, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 51
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 52
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "account"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "codeFunc"

    invoke-virtual {v0, v2, p2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "codeType"

    invoke-virtual {v0, v2, p3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL_V2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getSecurityCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 57
    return-void
.end method

.method public loginFmUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .param p4, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 63
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 64
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "account"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "loginType"

    invoke-virtual {v0, v2, p3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL_V2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "loginUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 69
    return-void
.end method

.method public registerByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "confirmPwd"    # Ljava/lang/String;
    .param p4, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 87
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 88
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "email"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "password"

    invoke-virtual {v0, v2, p2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "confirmPwd"

    invoke-virtual {v0, v2, p3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "registerFmAcountByEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 93
    return-void
.end method

.method public registerFmUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 72
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 73
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "phone"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v2, "code"

    invoke-virtual {v0, v2, p2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v2, "password"

    invoke-virtual {v0, v2, p3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "registerFmAcountByPhone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 78
    return-void
.end method

.method public resetIphonePassword(Lcom/fimi/network/entity/RestPswDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "restPswDto"    # Lcom/fimi/network/entity/RestPswDto;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 133
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 134
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "restPasswordByPhone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 137
    return-void
.end method

.method public resetPassword(Lcom/fimi/network/entity/RestPswDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "restPswDto"    # Lcom/fimi/network/entity/RestPswDto;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 123
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 124
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "restAccountPwdByEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 127
    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "whatApp"    # Ljava/lang/String;
    .param p4, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 100
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 101
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "email"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "language"

    invoke-virtual {v0, v2, p2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v2, "whatApp"

    invoke-virtual {v0, v2, p3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->RIGHT_APPLY_V1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reqPersonalData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 106
    return-void
.end method

.method public sendRepealAccredit(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "whatApp"    # Ljava/lang/String;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 113
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 114
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string/jumbo v2, "whatApp"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->RIGHT_APPLY_V1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "revokeAuthorization"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 117
    return-void
.end method

.method public thirdUserLogin(Lcom/fimi/network/entity/ThirdAcountDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "dto"    # Lcom/fimi/network/entity/ThirdAcountDto;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 39
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 40
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->USER_LOGIN_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "loginByThirdAccount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/UserManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 43
    return-void
.end method
