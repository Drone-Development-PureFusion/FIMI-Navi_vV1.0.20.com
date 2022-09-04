.class public Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;
.super Ljava/lang/Object;
.source "X8BlackBoxController.java"

# interfaces
.implements Lcom/fimi/kernel/fds/IFdsUiListener;
.implements Lcom/fimi/kernel/fds/IFdsCountListener;


# instance fields
.field private btnUploadToggle:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private fdsCount:Lcom/fimi/kernel/fds/FdsCount;

.field public handler:Landroid/os/Handler;

.field private imgDelete:Landroid/widget/ImageView;

.field private imgReturn:Landroid/widget/ImageView;

.field private listener:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

.field private mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

.field private tvNoFiles:Landroid/widget/TextView;

.field private x8ProgressLoading:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lcom/fimi/kernel/fds/FdsCount;

    invoke-direct {v1}, Lcom/fimi/kernel/fds/FdsCount;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    .line 47
    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->handler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->listener:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .line 81
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_black_box_log_layout:I

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->contentView:Landroid/view/View;

    .line 82
    new-instance v1, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->contentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->initView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->initAction()V

    .line 85
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->seachFile()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->x8ProgressLoading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/kernel/fds/FdsCount;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->tvNoFiles:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->listener:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->contentView:Landroid/view/View;

    return-object v0
.end method

.method private initAction()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/fds/FdsManager;->setFdsCountListener(Lcom/fimi/kernel/fds/IFdsCountListener;)V

    .line 133
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/fds/FdsManager;->setUiListener(Lcom/fimi/kernel/fds/IFdsUiListener;)V

    .line 134
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 137
    sget v1, Lcom/fimi/app/x8s/R$id;->img_return:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgReturn:Landroid/widget/ImageView;

    .line 138
    sget v1, Lcom/fimi/app/x8s/R$id;->img_delete:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgDelete:Landroid/widget/ImageView;

    .line 139
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_upload_toggle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    .line 140
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_no_files:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->tvNoFiles:Landroid/widget/TextView;

    .line 141
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_progress_loading:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->x8ProgressLoading:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    sget v1, Lcom/fimi/app/x8s/R$id;->ryv_black_box:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 146
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 148
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 150
    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;-><init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/os/Handler;Z)V

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->start()V

    .line 159
    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRunningTask()Z
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->hasUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->showUploadingEixtDialog()V

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFailure(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 2
    .param p1, "responseObj"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 176
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/fds/FdsManager;->remove(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    check-cast p1, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .end local p1    # "responseObj":Lcom/fimi/kernel/fds/IFdsFileModel;
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getItemPostion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyItemChanged(I)V

    .line 178
    return-void
.end method

.method public onProgress(Lcom/fimi/kernel/fds/IFdsFileModel;I)V
    .locals 2
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "progrss"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    check-cast p1, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .end local p1    # "model":Lcom/fimi/kernel/fds/IFdsFileModel;
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getItemPostion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyItemChanged(I)V

    .line 165
    return-void
.end method

.method public onStop(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 2
    .param p1, "reasonObj"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 182
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/fds/FdsManager;->remove(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    check-cast p1, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .end local p1    # "reasonObj":Lcom/fimi/kernel/fds/IFdsFileModel;
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getItemPostion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyItemChanged(I)V

    .line 185
    return-void
.end method

.method public onSuccess(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 2
    .param p1, "responseObj"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsCount;->completeIncrease()V

    .line 170
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/fds/FdsManager;->remove(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    check-cast p1, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .end local p1    # "responseObj":Lcom/fimi/kernel/fds/IFdsFileModel;
    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getItemPostion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyItemChanged(I)V

    .line 172
    return-void
.end method

.method public onUploadingCountChange(I)V
    .locals 4
    .param p1, "uploading"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsCount;->getTotal()I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v1}, Lcom/fimi/kernel/fds/FdsCount;->getComplete()I

    move-result v1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_1

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setState(I)V

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_all:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_0
    if-eqz p1, :cond_2

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 233
    :goto_1
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0, v3}, Lcom/fimi/kernel/fds/FdsCount;->setState(I)V

    .line 222
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_stop:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->fdsCount:Lcom/fimi/kernel/fds/FdsCount;

    invoke-virtual {v0, v2}, Lcom/fimi/kernel/fds/FdsCount;->setState(I)V

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->btnUploadToggle:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_start_all:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->imgDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public seachFile()V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;-><init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/os/Handler;Z)V

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->start()V

    .line 154
    return-void
.end method

.method public showDeleteDialog()V
    .locals 7

    .prologue
    .line 188
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_delete_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "t":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_delete_content:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "m":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_cancel:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "l":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_confirm:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "r":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$5;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$5;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 207
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 208
    return-void
.end method

.method public showUploadingEixtDialog()V
    .locals 7

    .prologue
    .line 237
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_exit_title:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "t":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_upload_exit_content:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "m":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_cancel:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "l":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_setting_fc_loastaction_tips_content_confirm:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "r":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$6;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$6;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 257
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 258
    return-void
.end method
