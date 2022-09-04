.class Lcom/fimi/app/ui/main/HostNewMainActivity$4;
.super Ljava/lang/Object;
.source "HostNewMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostNewMainActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$4;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-static {}, Lcom/fimi/app/presenter/HostMainPresenter;->getUpfireList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/fimi/app/presenter/HostMainPresenter;->getUpfireList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    .line 147
    .local v0, "hasDowned":Z
    :goto_0
    sget-object v2, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 148
    .local v1, "isFinish":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    invoke-static {}, Lcom/fimi/app/presenter/HostMainPresenter;->isDownFirmwareTip()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$4;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    const-class v3, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {v2, v3}, Lcom/fimi/app/ui/main/HostNewMainActivity;->access$200(Lcom/fimi/app/ui/main/HostNewMainActivity;Ljava/lang/Class;)V

    .line 155
    :cond_1
    :goto_1
    return-void

    .line 146
    .end local v0    # "hasDowned":Z
    .end local v1    # "isFinish":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 152
    .restart local v0    # "hasDowned":Z
    .restart local v1    # "isFinish":Z
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$4;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    const-class v3, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-static {v2, v3}, Lcom/fimi/app/ui/main/HostNewMainActivity;->access$300(Lcom/fimi/app/ui/main/HostNewMainActivity;Ljava/lang/Class;)V

    goto :goto_1
.end method
