.class Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$2;
.super Ljava/lang/Object;
.source "X8SingleCustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

.field final synthetic val$x8CbSingDialog:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$2;->this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$2;->val$x8CbSingDialog:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$2;->val$x8CbSingDialog:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_not_tips"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_not_tips"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
