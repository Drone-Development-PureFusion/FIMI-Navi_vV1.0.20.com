.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity;->renderBlockList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    new-instance v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4$1;

    invoke-direct {v0, p0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4$1;-><init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;)V

    .line 263
    .local v0, "okListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    sget v3, Lcom/github/moduth/blockcanary/R$string;->block_canary_delete:I

    .line 264
    invoke-virtual {v2, v3}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    sget v3, Lcom/github/moduth/blockcanary/R$string;->block_canary_delete_all_dialog_content:I

    .line 265
    invoke-virtual {v2, v3}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    sget v3, Lcom/github/moduth/blockcanary/R$string;->block_canary_yes:I

    .line 266
    invoke-virtual {v2, v3}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    sget v3, Lcom/github/moduth/blockcanary/R$string;->block_canary_no:I

    .line 267
    invoke-virtual {v2, v3}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    return-void
.end method
