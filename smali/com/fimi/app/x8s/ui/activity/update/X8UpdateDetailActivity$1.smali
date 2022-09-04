.class Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$1;
.super Lcom/fimi/widget/impl/NoDoubleClickListener;
.source "X8UpdateDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;
    .param p2, "x0"    # I

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    invoke-direct {p0, p2}, Lcom/fimi/widget/impl/NoDoubleClickListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onNoDoubleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "updating_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity$1;->this$0:Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    const-class v2, Lcom/fimi/app/x8s/ui/activity/update/X8UpdatingActivity;

    invoke-static {v1, v2, v0}, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
