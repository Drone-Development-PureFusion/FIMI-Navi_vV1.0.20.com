.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;
.super Ljava/lang/Object;
.source "X8UpdatePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->reponseCmd(ZIILcom/fimi/kernel/dataparser/ILinkMessage;Lcom/fimi/kernel/connect/BaseCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$702(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z

    .line 441
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V

    .line 442
    return-void
.end method
