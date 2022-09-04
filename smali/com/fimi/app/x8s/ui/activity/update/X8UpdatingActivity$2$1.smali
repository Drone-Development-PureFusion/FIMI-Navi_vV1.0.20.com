.class Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;
.super Ljava/lang/Object;
.source "X8UpdatingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->showUpdateProgress(ZILjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

.field final synthetic val$dtos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->val$dtos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-static {}, Lcom/fimi/host/HostConstants;->clearLocalFwEntitys()V

    .line 104
    invoke-static {}, Lcom/fimi/x8sdk/process/RelayProcess;->getRelayProcess()Lcom/fimi/x8sdk/process/RelayProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/process/RelayProcess;->getAllVersion()V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_update_success:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->val$dtos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$300(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2$1;->this$1:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    return-void
.end method
