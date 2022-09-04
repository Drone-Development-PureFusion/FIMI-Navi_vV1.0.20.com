.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;
.super Ljava/util/TimerTask;
.source "X8UpdatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->checkUpdateOutStatus()V
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
    .line 776
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 789
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateState:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    sget-object v1, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;->updateEnd:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$UpdateState;

    if-ne v0, v1, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-boolean v0, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->startCheckUpdateTimeOut:Z

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->queryCurUpdateStatus(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 793
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1708(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    .line 794
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1700(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v0

    const/16 v1, 0x3c0

    if-le v0, v1, :cond_2

    .line 795
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$702(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z

    .line 796
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_25:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1202(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0, v5, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V

    .line 799
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iput-boolean v3, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->startCheckUpdateTimeOut:Z

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1900(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$2000(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 804
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v1

    iget-object v2, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1900(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$2002(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    .line 805
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$2102(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;I)I

    goto :goto_0

    .line 807
    :cond_3
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$2108(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    .line 808
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$2100(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)I

    move-result v0

    const/16 v1, 0xb4

    if-le v0, v1, :cond_0

    .line 809
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0, v4}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$702(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z

    .line 810
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_error_code_update_25:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1202(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 811
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$4;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0, v5, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V

    goto/16 :goto_0
.end method
