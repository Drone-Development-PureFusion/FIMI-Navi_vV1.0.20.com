.class public Lcom/fimi/libperson/presenter/RegisterPrenster;
.super Ljava/lang/Object;
.source "RegisterPrenster.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterPrenster"

.field private static final TIMER:I = 0x1

.field private static final sUPDATE_TIME:I = 0x3e8


# instance fields
.field iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSeconds:I


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ivew/IRegisterView;Landroid/content/Context;)V
    .locals 1
    .param p1, "iRegisterView"    # Lcom/fimi/libperson/ivew/IRegisterView;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mSeconds:I

    .line 38
    new-instance v0, Lcom/fimi/libperson/presenter/RegisterPrenster$1;

    invoke-direct {v0, p0}, Lcom/fimi/libperson/presenter/RegisterPrenster$1;-><init>(Lcom/fimi/libperson/presenter/RegisterPrenster;)V

    iput-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object p1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    .line 58
    iput-object p2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/libperson/presenter/RegisterPrenster;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 31
    iget v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mSeconds:I

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/libperson/presenter/RegisterPrenster;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mSeconds:I

    return p1
.end method

.method static synthetic access$010(Lcom/fimi/libperson/presenter/RegisterPrenster;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 31
    iget v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mSeconds:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mSeconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/libperson/presenter/RegisterPrenster;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/presenter/RegisterPrenster;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/presenter/RegisterPrenster;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fimi/libperson/presenter/RegisterPrenster;->getFwDetail()V

    return-void
.end method

.method private getFwDetail()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    .line 180
    .local v0, "x9FwManager":Lcom/fimi/network/FwManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/fimi/host/HostConstants;->saveFirmwareDetail(Ljava/util/List;)V

    .line 182
    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/libperson/presenter/RegisterPrenster$5;

    invoke-direct {v2, p0}, Lcom/fimi/libperson/presenter/RegisterPrenster$5;-><init>(Lcom/fimi/libperson/presenter/RegisterPrenster;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/FwManager;->getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 211
    return-void
.end method


# virtual methods
.method public getVerificationCode(Ljava/lang/String;)V
    .locals 5
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/libperson/R$string;->register_input_right_phone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/libperson/ivew/IRegisterView;->getCodeResult(ZLjava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    const-string v1, "0"

    const-string v2, "0"

    new-instance v3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v4, Lcom/fimi/libperson/presenter/RegisterPrenster$2;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/presenter/RegisterPrenster$2;-><init>(Lcom/fimi/libperson/presenter/RegisterPrenster;)V

    invoke-direct {v3, v4}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/fimi/network/UserManager;->getSecurityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public registerByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "comfirmPwd"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_email_not_null:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/IRegisterView;->registerEmailResult(ZLjava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_input_right_email:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/IRegisterView;->registerEmailResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/libperson/presenter/RegisterPrenster$4;

    invoke-direct {v2, p0, p1}, Lcom/fimi/libperson/presenter/RegisterPrenster$4;-><init>(Lcom/fimi/libperson/presenter/RegisterPrenster;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fimi/network/UserManager;->registerByEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method

.method public registerByPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->login_hint_iphone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/IRegisterView;->registerIphoneResult(ZLjava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->iRegisterView:Lcom/fimi/libperson/ivew/IRegisterView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_input_right_phone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/fimi/libperson/ivew/IRegisterView;->registerIphoneResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/RegisterPrenster;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/libperson/presenter/RegisterPrenster$3;

    invoke-direct {v2, p0, p1}, Lcom/fimi/libperson/presenter/RegisterPrenster$3;-><init>(Lcom/fimi/libperson/presenter/RegisterPrenster;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fimi/network/UserManager;->registerFmUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method
