.class Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;
.super Ljava/lang/Object;
.source "X8B2oxAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->onBindContentViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IILcom/fimi/app/x8s/adapter/section/X8B2oxSection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

.field final synthetic val$file:Lcom/fimi/app/x8s/entity/X8B2oxFile;

.field final synthetic val$position1:I

.field final synthetic val$positionSection:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Lcom/fimi/app/x8s/entity/X8B2oxFile;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$file:Lcom/fimi/app/x8s/entity/X8B2oxFile;

    iput p3, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$positionSection:I

    iput p4, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$position1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-static {}, Lcom/fimi/kernel/utils/DNSLookupThread;->isDSNSuceess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fds_connect_internet:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$file:Lcom/fimi/app/x8s/entity/X8B2oxFile;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$positionSection:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setSectionPostion(I)V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$file:Lcom/fimi/app/x8s/entity/X8B2oxFile;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$position1:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setItemPostion(I)V

    .line 155
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$file:Lcom/fimi/app/x8s/entity/X8B2oxFile;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsManager;->startDownload(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->val$position1:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v6, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-static {v2}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_login_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-static {v3}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_login_content:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .line 160
    invoke-static {v4}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$200(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_modify_black_box_login_go:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1$1;-><init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 159
    invoke-static {v6, v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$302(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    invoke-static {v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->access$300(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0
.end method
