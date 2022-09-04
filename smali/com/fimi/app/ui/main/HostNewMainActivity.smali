.class public Lcom/fimi/app/ui/main/HostNewMainActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "HostNewMainActivity.java"

# interfaces
.implements Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;
.implements Lcom/fimi/libdownfw/ivew/IFirmwareDownView;
.implements Lcom/fimi/apk/iview/IApkVerisonView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;
    }
.end annotation


# static fields
.field public static PRODUCTCLASS:[Ljava/lang/Class;


# instance fields
.field public final REQUEST_CODE_PERMISSIONS:I

.field btnConnect:Landroid/widget/Button;

.field hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

.field private isRecreat:Z

.field private mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

.field private mLocalChangeLanguageReceiver:Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;

.field mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

.field mProductShow:Lcom/fimi/app/ui/main/ProductShowWidget;

.field mSelectButtonView:Lcom/fimi/app/ui/main/SelectButtonView;

.field positon:I

.field productName:[I

.field slogn:[I

.field tvNoconect:Landroid/widget/TextView;

.field tvSafeOpt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 66
    iput v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->positon:I

    .line 231
    iput-boolean v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->isRecreat:Z

    .line 232
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->REQUEST_CODE_PERMISSIONS:I

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/ui/main/HostNewMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getFwDetail()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/ui/main/HostNewMainActivity;)Lcom/fimi/apk/presenter/ApkVersionPrenster;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/ui/main/HostNewMainActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/ui/main/HostNewMainActivity;Ljava/lang/Class;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->readyGo(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/ui/main/HostNewMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/ui/main/HostNewMainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFwDetail()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Lcom/fimi/network/FwManager;

    invoke-direct {v0}, Lcom/fimi/network/FwManager;-><init>()V

    .line 164
    .local v0, "x9FwManager":Lcom/fimi/network/FwManager;
    new-instance v1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v2, Lcom/fimi/app/ui/main/HostNewMainActivity$5;

    invoke-direct {v2, p0}, Lcom/fimi/app/ui/main/HostNewMainActivity$5;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    invoke-direct {v1, v2}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-virtual {v0, v1}, Lcom/fimi/network/FwManager;->getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V

    .line 187
    return-void
.end method

.method private updateBtnConnect()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/presenter/HostMainPresenter;->isForce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->btnConnect:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->btnConnect:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateTipView()V
    .locals 3

    .prologue
    const v2, 0x7f0f005f

    .line 262
    invoke-static {}, Lcom/fimi/app/presenter/HostMainPresenter;->isDownFirmwareTip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    const v1, 0x7f080459

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    const v1, 0x7f080453

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvNoconect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->slogn:[I

    iget v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->positon:I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateView()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateBtnConnect()V

    .line 245
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateTipView()V

    .line 246
    return-void
.end method


# virtual methods
.method public changePosition(I)V
    .locals 2
    .param p1, "positon"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->positon:I

    .line 280
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0, v1}, Lcom/fimi/app/ui/main/HostMainHeader;->setPresenter(Lcom/fimi/app/presenter/HostMainPresenter;)V

    .line 281
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/presenter/HostMainPresenter;->setPosition(I)V

    .line 282
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

    invoke-virtual {v0, p1}, Lcom/fimi/app/ui/main/HostMainHeader;->setPositon(I)V

    .line 283
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->productName:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/fimi/app/ui/main/HostMainHeader;->setDeviceName(I)V

    .line 284
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mSelectButtonView:Lcom/fimi/app/ui/main/SelectButtonView;

    invoke-virtual {v0, p1}, Lcom/fimi/app/ui/main/SelectButtonView;->setProductPositon(I)V

    .line 285
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateBtnConnect()V

    .line 286
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateTipView()V

    .line 288
    return-void
.end method

.method public doTrans()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->btnConnect:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/ui/main/HostNewMainActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/ui/main/HostNewMainActivity$2;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget-boolean v0, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/presenter/HostMainPresenter;->go2DownSelectActivty()V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-virtual {v0}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->getOnlineNewApkFileInfo()V

    .line 135
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    new-instance v1, Lcom/fimi/app/ui/main/HostNewMainActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/ui/main/HostNewMainActivity$3;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/apk/presenter/ApkVersionPrenster;->setOnShowDialogListerner(Lcom/fimi/apk/presenter/ApkVersionPrenster$onShowDialogListerner;)V

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/kernel/Constants;->isRefreshMainView:Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/app/ui/main/HostNewMainActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/ui/main/HostNewMainActivity$4;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 7

    .prologue
    const v6, 0x7f08056a

    const v5, 0x7f080054

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_0

    .line 198
    new-array v0, v3, [I

    aput v6, v0, v2

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->productName:[I

    .line 199
    new-array v0, v3, [I

    aput v5, v0, v2

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->slogn:[I

    .line 200
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/fimi/app/ui/main/HostGh2ProductView;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    .line 214
    :goto_0
    const v0, 0x7f040020

    return v0

    .line 201
    :cond_0
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_1

    .line 202
    new-array v0, v3, [I

    aput v6, v0, v2

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->productName:[I

    .line 203
    new-array v0, v3, [I

    aput v5, v0, v2

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->slogn:[I

    .line 204
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/fimi/app/ui/main/HostX9ProductView;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    goto :goto_0

    .line 205
    :cond_1
    sget-object v0, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v1, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v0, v1, :cond_2

    .line 206
    new-array v0, v3, [I

    const v1, 0x7f0805e2

    aput v1, v0, v2

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->productName:[I

    .line 207
    new-array v0, v3, [I

    const v1, 0x7f0805e3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->slogn:[I

    .line 208
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lcom/fimi/app/ui/main/HostX8sProductView;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    goto :goto_0

    .line 210
    :cond_2
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->productName:[I

    .line 211
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->slogn:[I

    .line 212
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/fimi/app/ui/main/HostX8sProductView;

    aput-object v1, v0, v2

    const-class v1, Lcom/fimi/app/ui/main/HostX9ProductView;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/fimi/app/ui/main/HostGh2ProductView;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/ui/main/HostNewMainActivity;->PRODUCTCLASS:[Ljava/lang/Class;

    goto :goto_0

    .line 210
    nop

    :array_0
    .array-data 4
        0x7f0805e2
        0x7f08056a
        0x7f080569
    .end array-data

    .line 211
    :array_1
    .array-data 4
        0x7f0805e3
        0x7f080054
        0x7f080568
    .end array-data
.end method

.method public initData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v1, Lcom/fimi/app/ui/main/HostNewMainActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/ui/main/HostNewMainActivity$1;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    invoke-static {v1}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 80
    const v1, 0x7f1000cf

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/ui/main/HostMainHeader;

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

    .line 81
    const v1, 0x7f1000d0

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/ui/main/ProductShowWidget;

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mProductShow:Lcom/fimi/app/ui/main/ProductShowWidget;

    .line 82
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mProductShow:Lcom/fimi/app/ui/main/ProductShowWidget;

    invoke-virtual {v1, p0}, Lcom/fimi/app/ui/main/ProductShowWidget;->setPositionListener(Lcom/fimi/app/ui/main/ProductShowWidget$ChangePositionListener;)V

    .line 83
    const v1, 0x7f1000d1

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/ui/main/SelectButtonView;

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mSelectButtonView:Lcom/fimi/app/ui/main/SelectButtonView;

    .line 84
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mSelectButtonView:Lcom/fimi/app/ui/main/SelectButtonView;

    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->productName:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/ui/main/SelectButtonView;->initView(I)V

    .line 85
    sget-object v1, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v2, Lcom/fimi/host/common/ProductEnum;->FIMIAPP:Lcom/fimi/host/common/ProductEnum;

    if-ne v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mSelectButtonView:Lcom/fimi/app/ui/main/SelectButtonView;

    invoke-virtual {v1, v5}, Lcom/fimi/app/ui/main/SelectButtonView;->setVisibility(I)V

    .line 90
    :goto_0
    const v1, 0x7f1000d2

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvNoconect:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f1000d3

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f1000d4

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->btnConnect:Landroid/widget/Button;

    .line 93
    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvNoconect:Landroid/widget/TextView;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 94
    new-instance v1, Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-direct {v1, p0, p0}, Lcom/fimi/app/presenter/HostMainPresenter;-><init>(Landroid/content/Context;Lcom/fimi/libdownfw/ivew/IFirmwareDownView;)V

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    .line 95
    sget-object v1, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v2, Lcom/fimi/host/common/ProductEnum;->X9:Lcom/fimi/host/common/ProductEnum;

    if-ne v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v1, p0}, Lcom/fimi/app/presenter/HostMainPresenter;->requestX9Permissions(Landroid/app/Activity;)V

    .line 110
    :goto_1
    new-instance v1, Lcom/fimi/apk/presenter/ApkVersionPrenster;

    invoke-direct {v1, p0, p0}, Lcom/fimi/apk/presenter/ApkVersionPrenster;-><init>(Landroid/content/Context;Lcom/fimi/apk/iview/IApkVerisonView;)V

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mApkVersionPrenster:Lcom/fimi/apk/presenter/ApkVersionPrenster;

    .line 111
    invoke-virtual {p0, v5}, Lcom/fimi/app/ui/main/HostNewMainActivity;->changePosition(I)V

    .line 113
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mProductShow:Lcom/fimi/app/ui/main/ProductShowWidget;

    invoke-virtual {v1, v2}, Lcom/fimi/app/presenter/HostMainPresenter;->setProductControler(Lcom/fimi/app/interfaces/IProductControllers;)V

    .line 114
    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->registerReciver()V

    .line 116
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

    invoke-virtual {v1}, Lcom/fimi/app/ui/main/HostMainHeader;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    .line 118
    .local v0, "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    iget v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->statusBarHeight:I

    iget v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->marginStatus:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mMainHeader:Lcom/fimi/app/ui/main/HostMainHeader;

    invoke-virtual {v1, v0}, Lcom/fimi/app/ui/main/HostMainHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void

    .line 88
    .end local v0    # "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mSelectButtonView:Lcom/fimi/app/ui/main/SelectButtonView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/fimi/app/ui/main/SelectButtonView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_1
    sget-object v1, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v2, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v1, v2, :cond_2

    .line 98
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/presenter/HostMainPresenter;->requestPermissions()V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v1, p0}, Lcom/fimi/app/presenter/HostMainPresenter;->requestX9Permissions(Landroid/app/Activity;)V

    .line 101
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/presenter/HostMainPresenter;->requestPermissions()V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/kernel/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    const/16 v0, 0x271a

    if-ne p1, v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    const-string v1, "activity://gh2.teacher"

    invoke-virtual {v0, v1}, Lcom/fimi/app/presenter/HostMainPresenter;->gotoTeacher(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/presenter/HostMainPresenter;->removeNoticDownListener()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->upRegisterReciver()V

    .line 324
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/fimi/kernel/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 192
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/app/presenter/HostMainPresenter;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 227
    invoke-static {}, Lcom/fimi/app/presenter/HostMainPresenter;->checkUpfireList()V

    .line 228
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateView()V

    .line 229
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onStart()V

    .line 353
    iget-boolean v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->isRecreat:Z

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->isRecreat:Z

    .line 355
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mProductShow:Lcom/fimi/app/ui/main/ProductShowWidget;

    invoke-virtual {v0}, Lcom/fimi/app/ui/main/ProductShowWidget;->startAnimation()V

    .line 357
    :cond_0
    return-void
.end method

.method public registerReciver()V
    .locals 3

    .prologue
    .line 367
    new-instance v1, Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;

    invoke-direct {v1, p0}, Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    iput-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mLocalChangeLanguageReceiver:Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.fimi.app.changelanguge"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mLocalChangeLanguageReceiver:Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 371
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->StatusBarLightMode(Landroid/app/Activity;)I

    .line 222
    return-void
.end method

.method public showDownFwProgress(Lcom/fimi/network/DownFwService$DownState;ILjava/lang/String;)V
    .locals 7
    .param p1, "downState"    # Lcom/fimi/network/DownFwService$DownState;
    .param p2, "progress"    # I
    .param p3, "fwName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const v5, 0x7f0f005f

    const/16 v2, 0x64

    .line 292
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_2

    .line 293
    if-ne p2, v2, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateView()V

    .line 296
    :cond_0
    if-ge p2, v2, :cond_1

    .line 297
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080451

    invoke-virtual {p0, v2}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    .end local v0    # "detail":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->DownFail:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    const v2, 0x7f080452

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 304
    :cond_3
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_4

    .line 305
    invoke-direct {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->updateView()V

    .line 306
    invoke-static {}, Lcom/fimi/app/presenter/HostMainPresenter;->checkUpfireList()V

    .line 307
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    const v2, 0x7f080453

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 308
    :cond_4
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    if-ne p1, v1, :cond_1

    .line 309
    if-ge p2, v2, :cond_1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f080451

    invoke-virtual {p0, v2}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0    # "detail":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->tvSafeOpt:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showNewApkVersionDialog(Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V
    .locals 7
    .param p1, "dto"    # Lcom/fimi/network/entity/ApkVersionDto;
    .param p2, "savePath"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v0, Lcom/fimi/widget/DialogManager;

    const v1, 0x7f08043a

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {p1}, Lcom/fimi/network/entity/ApkVersionDto;->getUpdcontents()Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f080447

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f080445

    invoke-virtual {p0, v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    .local v0, "dialogManagerUpdate":Lcom/fimi/widget/DialogManager;
    new-instance v1, Lcom/fimi/app/ui/main/HostNewMainActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/fimi/app/ui/main/HostNewMainActivity$6;-><init>(Lcom/fimi/app/ui/main/HostNewMainActivity;Lcom/fimi/network/entity/ApkVersionDto;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 344
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setClickOutIsCancle(Z)V

    .line 345
    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 347
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mProductShow:Lcom/fimi/app/ui/main/ProductShowWidget;

    invoke-virtual {v0}, Lcom/fimi/app/ui/main/ProductShowWidget;->stopAnimation()V

    .line 363
    return-void
.end method

.method public upRegisterReciver()V
    .locals 2

    .prologue
    .line 374
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity;->mLocalChangeLanguageReceiver:Lcom/fimi/app/ui/main/HostNewMainActivity$LocalChangeLanguageReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    return-void
.end method
