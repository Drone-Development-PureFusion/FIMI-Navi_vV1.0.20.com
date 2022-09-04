.class Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$2;
.super Ljava/lang/Object;
.source "X8ShowErrorCodeTask.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8ErrorTextIsFinishShow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->showText(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$2;->this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFinish()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask$2;->this$0:Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;

    invoke-static {v0}, Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;->access$200(Lcom/fimi/app/x8s/entity/X8ShowErrorCodeTask;)Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/manager/X8ErrerCodeSpeakFlashManager;->setStart(Z)V

    .line 80
    return-void
.end method
