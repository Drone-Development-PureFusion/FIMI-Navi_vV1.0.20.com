.class Lcom/fimi/app/x8s/controls/X8RightIconForMapController$1;
.super Ljava/lang/Object;
.source "X8RightIconForMapController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController$1;->this$0:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController$1;->this$0:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->access$000(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->onSetHomeEvent(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;I)V

    .line 131
    return-void
.end method
