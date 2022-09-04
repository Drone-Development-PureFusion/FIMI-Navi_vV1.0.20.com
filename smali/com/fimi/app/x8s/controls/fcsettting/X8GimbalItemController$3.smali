.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$3;
.super Ljava/lang/Object;
.source "X8GimbalItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->showRestParamDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V

    .line 218
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_not_tips"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-void
.end method
