.class public Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;
.super Ljava/lang/Object;
.source "ForgetPasswordPresenter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetPasswordView;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ivew/IForgetPasswordView;Landroid/content/Context;)V
    .locals 0
    .param p1, "IForgetPasswordView"    # Lcom/fimi/libperson/ivew/IForgetPasswordView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetPasswordView;

    .line 28
    iput-object p2, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetPasswordView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetPasswordView;

    return-object v0
.end method


# virtual methods
.method public inputPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "confirmPassword"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetPasswordView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->login_input_password_different_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/IForgetPasswordView;->resetPassword(ZLjava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/fimi/network/entity/RestPswDto;

    invoke-direct {v0}, Lcom/fimi/network/entity/RestPswDto;-><init>()V

    .line 89
    .local v0, "restPswDto":Lcom/fimi/network/entity/RestPswDto;
    invoke-virtual {v0, p1}, Lcom/fimi/network/entity/RestPswDto;->setEmail(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p2}, Lcom/fimi/network/entity/RestPswDto;->setCode(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p3}, Lcom/fimi/network/entity/RestPswDto;->setPassword(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p4}, Lcom/fimi/network/entity/RestPswDto;->setConfirmPassword(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$3;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$3;-><init>(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/network/UserManager;->resetPassword(Lcom/fimi/network/entity/RestPswDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public inputVerficationCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "verficationCode"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/fimi/network/entity/RestPswDto;

    invoke-direct {v0}, Lcom/fimi/network/entity/RestPswDto;-><init>()V

    .line 58
    .local v0, "restPswDto":Lcom/fimi/network/entity/RestPswDto;
    invoke-virtual {v0, p1}, Lcom/fimi/network/entity/RestPswDto;->setEmail(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p2}, Lcom/fimi/network/entity/RestPswDto;->setCode(Ljava/lang/String;)V

    .line 60
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setCheckPsw(Ljava/lang/String;)V

    .line 61
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setPassword(Ljava/lang/String;)V

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setConfirmPassword(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$2;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$2;-><init>(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/network/UserManager;->resetPassword(Lcom/fimi/network/entity/RestPswDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 81
    return-void
.end method

.method public sendEmail(Ljava/lang/String;)V
    .locals 5
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "1"

    new-instance v3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v4, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/presenter/ForgetPasswordPresenter$1;-><init>(Lcom/fimi/libperson/presenter/ForgetPasswordPresenter;)V

    invoke-direct {v3, v4}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/fimi/network/UserManager;->getSecurityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 54
    return-void
.end method
