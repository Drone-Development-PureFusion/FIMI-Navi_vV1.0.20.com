.class Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;
.super Ljava/lang/Object;
.source "X8UpdateHintController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8UpdateHintController;->showUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->access$000(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 78
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->access$000(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->access$100(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/fimi/app/x8s/ui/activity/update/X8UpdateDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$3;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->access$100(Lcom/fimi/app/x8s/controls/X8UpdateHintController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
