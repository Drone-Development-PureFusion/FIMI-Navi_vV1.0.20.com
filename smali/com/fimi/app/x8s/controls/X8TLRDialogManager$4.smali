.class Lcom/fimi/app/x8s/controls/X8TLRDialogManager$4;
.super Ljava/lang/Object;
.source "X8TLRDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->showTakeOffDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$4;->this$0:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$4;->this$0:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->access$102(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;Lcom/fimi/app/x8s/widget/X8TLRDialog;)Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .line 93
    return-void
.end method
