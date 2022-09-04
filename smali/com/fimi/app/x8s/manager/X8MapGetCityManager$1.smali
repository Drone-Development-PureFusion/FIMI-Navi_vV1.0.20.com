.class final Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;
.super Ljava/lang/Object;
.source "X8MapGetCityManager.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->onSetHomeEvent(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$type:I

    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget v0, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$type:I

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_person:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_drone:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 51
    :cond_2
    if-nez p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8MapGetCityManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_failed:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
