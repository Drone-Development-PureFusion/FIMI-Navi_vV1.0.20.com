.class Lcom/facebook/internal/WebDialog$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/internal/WebDialog;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$1;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$1;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 234
    return-void
.end method
