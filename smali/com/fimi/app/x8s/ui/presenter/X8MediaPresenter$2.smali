.class Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;
.super Ljava/lang/Object;
.source "X8MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->switchLoadMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .prologue
    .line 236
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$200(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/album/biz/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/album/biz/DataManager;->isX9LocalLoad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LocalMedia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->forEachFile(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->reshAdapter()V

    .line 244
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    goto :goto_0
.end method
