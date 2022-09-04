.class Lcom/fimi/x8sdk/presenter/X8TestPresenter$1;
.super Ljava/lang/Object;
.source "X8TestPresenter.java"

# interfaces
.implements Lcom/fimi/kernel/connect/session/VideodDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8TestPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8TestPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRawdataCallBack([B)V
    .locals 1
    .param p1, "str"    # [B

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8TestPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8TestPresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8TestPresenter;->iaoaTestView:Lcom/fimi/x8sdk/ivew/IAOATestView;

    if-eqz v0, :cond_0

    .line 45
    :cond_0
    return-void
.end method
