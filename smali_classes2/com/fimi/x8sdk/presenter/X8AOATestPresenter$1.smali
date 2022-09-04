.class Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;
.super Ljava/lang/Object;
.source "X8AOATestPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/connect/session/VideodDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRawdataCallBack([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;)J

    move-result-wide v2

    array-length v1, p1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->access$002(Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;J)J

    .line 32
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8AOATestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IAOATestView;->vedeoData([B)V

    .line 35
    :cond_0
    return-void
.end method
