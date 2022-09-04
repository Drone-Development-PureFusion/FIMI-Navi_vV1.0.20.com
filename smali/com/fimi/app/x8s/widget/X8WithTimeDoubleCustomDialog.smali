.class public Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;
.super Lcom/fimi/app/x8s/widget/X8sBaseDialog;
.source "X8WithTimeDoubleCustomDialog.java"


# instance fields
.field private i:I

.field private listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

.field private mHandler:Landroid/os/Handler;

.field private prex:Ljava/lang/String;

.field final tvRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    sget v4, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v4}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const/16 v4, 0xa

    iput v4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->i:I

    .line 68
    new-instance v4, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$3;-><init>(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)V

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->mHandler:Landroid/os/Handler;

    .line 30
    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_whith_time_double_dialog_custom:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->setContentView(I)V

    .line 31
    iput-object p4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    .line 32
    sget v4, Lcom/fimi/app/x8s/R$string;->x8_battery_ok_time_tip:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->prex:Ljava/lang/String;

    .line 33
    if-eqz p2, :cond_0

    .line 34
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_title:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 35
    .local v2, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .end local v2    # "tvTitle":Landroid/widget/TextView;
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_message:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    .local v1, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_left:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, "tvLeft":Landroid/widget/TextView;
    sget v4, Lcom/fimi/app/x8s/R$id;->btn_right:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->tvRight:Landroid/widget/TextView;

    .line 44
    sget v4, Lcom/fimi/app/x8s/R$id;->x8_cb_sing_dialog:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, "viewById":Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    new-instance v4, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;

    invoke-direct {v4, p0, p4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->tvRight:Landroid/widget/TextView;

    new-instance v5, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$2;

    invoke-direct {v5, p0, p4}, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog$2;-><init>(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->tvRight:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->prex:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 19
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->i:I

    return v0
.end method

.method static synthetic access$010(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 19
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->i:I

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->prex:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->listener:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;->dismiss()V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/fimi/app/x8s/widget/X8sBaseDialog;->show()V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8WithTimeDoubleCustomDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    return-void
.end method
