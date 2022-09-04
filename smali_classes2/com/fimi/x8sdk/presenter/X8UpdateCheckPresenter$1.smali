.class Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;
.super Ljava/util/TimerTask;
.source "X8UpdateCheckPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->intCheckUpdateStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    move-result-object v0

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;->updating:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$UpdateCheckState;

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->queryCurSystemStatus()V

    .line 71
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;)V

    .line 73
    :cond_0
    return-void
.end method
