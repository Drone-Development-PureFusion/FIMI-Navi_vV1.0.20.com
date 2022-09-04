.class Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;
.super Ljava/lang/Object;
.source "X8SingleCustomPlaybackSynDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

.field final synthetic val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;->this$0:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->dismiss()V

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$1;->val$listener:Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;->onSingleButtonClick()V

    .line 48
    :cond_0
    return-void
.end method
