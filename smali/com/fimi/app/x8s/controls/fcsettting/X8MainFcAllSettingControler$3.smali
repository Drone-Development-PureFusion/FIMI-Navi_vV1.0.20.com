.class Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8MainFcAllSettingControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeFcSettingUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

.field final synthetic val$needResponse:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->val$needResponse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 358
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeSecondUi()V

    .line 360
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->closeRootUi()V

    .line 362
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->val$needResponse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;)Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8FcAllSettingListener;->closeAllSetting()V

    .line 365
    :cond_0
    return-void
.end method
