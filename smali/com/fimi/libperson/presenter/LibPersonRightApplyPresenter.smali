.class public Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;
.super Ljava/lang/Object;
.source "LibPersonRightApplyPresenter.java"


# instance fields
.field context:Landroid/content/Context;

.field iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;


# direct methods
.method public constructor <init>(Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;Landroid/content/Context;)V
    .locals 0
    .param p1, "iLibpersonRightApplyView"    # Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;

    .line 25
    iput-object p2, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "whatApp"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_email_not_null:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;->sendFailure(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->iLibpersonRightApplyView:Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;

    iget-object v1, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    sget v2, Lcom/fimi/libperson/R$string;->register_input_right_email:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fimi/libperson/ivew/ILibpersonRightApplyView;->sendFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/fimi/network/UserManager;->getIntance(Landroid/content/Context;)Lcom/fimi/network/UserManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;

    invoke-direct {v2, p0}, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter$1;-><init>(Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fimi/network/UserManager;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    goto :goto_0
.end method
