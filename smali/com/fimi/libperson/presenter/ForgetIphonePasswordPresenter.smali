.class public Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;
.super Ljava/lang/Object;
.source "ForgetIphonePasswordPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ForgetIphonePasswordPre"

.field private static final TIMER:I = 0x2

.field private static final sUPDATE_TIME:I = 0x3e8


# instance fields
.field mContext:Landroid/content/Context;

.field private mForgetIphoneHandler:Landroid/os/Handler;

.field private mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

.field private mSeconds:I


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;Landroid/content/Context;)V
    .locals 1
    .param p1, "IForgetPasswordView"    # Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mSeconds:I

    .line 31
    new-instance v0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$1;-><init>(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)V

    iput-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mForgetIphoneHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    .line 51
    iput-object p2, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mSeconds:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mSeconds:I

    return p1
.end method

.method static synthetic access$010(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .prologue
    .line 23
    iget v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mSeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mSeconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mForgetIphoneHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public inputPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "iphone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "confirmPassword"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mIForgetPasswordView:Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/libperson/R$string;->login_input_password_different_hint:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/fimi/libperson/ivew/IForgetIphonePasswordView;->resetPassword(ZLjava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/fimi/network/entity/RestPswDto;

    invoke-direct {v0}, Lcom/fimi/network/entity/RestPswDto;-><init>()V

    .line 125
    .local v0, "restPswDto":Lcom/fimi/network/entity/RestPswDto;
    invoke-virtual {v0, p1}, Lcom/fimi/network/entity/RestPswDto;->setPhone(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p2}, Lcom/fimi/network/entity/RestPswDto;->setCode(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p3}, Lcom/fimi/network/entity/RestPswDto;->setPassword(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p4}, Lcom/fimi/network/entity/RestPswDto;->setConfirmPassword(Ljava/lang/String;)V

    .line 129
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setCheckPsw(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$4;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$4;-><init>(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/network/UserManager;->resetIphonePassword(Lcom/fimi/network/entity/RestPswDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public inputVerficationCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "iphone"    # Ljava/lang/String;
    .param p2, "verficationCode"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/fimi/network/entity/RestPswDto;

    invoke-direct {v0}, Lcom/fimi/network/entity/RestPswDto;-><init>()V

    .line 94
    .local v0, "restPswDto":Lcom/fimi/network/entity/RestPswDto;
    invoke-virtual {v0, p1}, Lcom/fimi/network/entity/RestPswDto;->setPhone(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Lcom/fimi/network/entity/RestPswDto;->setCode(Ljava/lang/String;)V

    .line 96
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setCheckPsw(Ljava/lang/String;)V

    .line 97
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setPassword(Ljava/lang/String;)V

    .line 98
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/RestPswDto;->setConfirmPassword(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$3;

    invoke-direct {v3, p0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$3;-><init>(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/fimi/network/UserManager;->resetIphonePassword(Lcom/fimi/network/entity/RestPswDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 117
    return-void
.end method

.method public sendIphone(Ljava/lang/String;)V
    .locals 5
    .param p1, "iphone"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    const-string v1, "2"

    const-string v2, "0"

    new-instance v3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v4, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter$2;-><init>(Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;)V

    invoke-direct {v3, v4}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/fimi/network/UserManager;->getSecurityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 90
    return-void
.end method

.method public setStopTime()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mForgetIphoneHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/fimi/libperson/presenter/ForgetIphonePasswordPresenter;->mForgetIphoneHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    :cond_0
    return-void
.end method
