.class public Lcom/fimi/libperson/presenter/LoginPresenter;
.super Ljava/lang/Object;
.source "LoginPresenter.java"


# static fields
.field private static final TIMER:I = 0x1

.field private static final sUPDATE_TIME:I = 0x3e8


# instance fields
.field mContext:Landroid/content/Context;

.field private mSeconds:I

.field mView:Lcom/fimi/libperson/ivew/ILoginView;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ivew/ILoginView;)V
    .locals 1
    .param p1, "mView"    # Lcom/fimi/libperson/ivew/ILoginView;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mSeconds:I

    .line 53
    iput-object p1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    .line 54
    check-cast p1, Landroid/content/Context;

    .end local p1    # "mView":Lcom/fimi/libperson/ivew/ILoginView;
    iput-object p1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/libperson/presenter/LoginPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/LoginPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mSeconds:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/libperson/presenter/LoginPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/LoginPresenter;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fimi/libperson/presenter/LoginPresenter;->getFwDetail()V

    return-void
.end method

.method private getFwDetail()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    .line 170
    .local v0, "x9FwManager":Lcom/fimi/network/FwManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V

    .line 171
    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/libperson/presenter/LoginPresenter$4;

    invoke-direct {v2, p0}, Lcom/fimi/libperson/presenter/LoginPresenter$4;-><init>(Lcom/fimi/libperson/presenter/LoginPresenter;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/FwManager;->getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getVerificationCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->register_input_right_phone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/ILoginView;->getCodeResult(ZLjava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "0"

    new-instance v3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v4, Lcom/fimi/libperson/presenter/LoginPresenter$1;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/presenter/LoginPresenter$1;-><init>(Lcom/fimi/libperson/presenter/LoginPresenter;)V

    invoke-direct {v3, v4}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/fimi/network/UserManager;->getSecurityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public loginByEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_email_not_null:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/ILoginView;->emailLoginResult(ZLjava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_input_right_email:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/ILoginView;->emailLoginResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    const-string v1, "1"

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/presenter/LoginPresenter$3;

    invoke-direct {v3, p0, p1}, Lcom/fimi/libperson/presenter/LoginPresenter$3;-><init>(Lcom/fimi/libperson/presenter/LoginPresenter;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/fimi/network/UserManager;->loginFmUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public loginByPhone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->login_hint_iphone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/ILoginView;->iphoneLoginResult(ZLjava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mView:Lcom/fimi/libperson/ivew/ILoginView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_input_right_phone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/ILoginView;->iphoneLoginResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LoginPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    const-string v1, "0"

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/presenter/LoginPresenter$2;

    invoke-direct {v3, p0, p1}, Lcom/fimi/libperson/presenter/LoginPresenter$2;-><init>(Lcom/fimi/libperson/presenter/LoginPresenter;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/fimi/network/UserManager;->loginFmUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method
