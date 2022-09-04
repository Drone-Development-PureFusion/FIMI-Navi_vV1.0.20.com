.class Lcom/fimi/app/x8s/controls/X8UpdateHintController$2;
.super Ljava/lang/Object;
.source "X8UpdateHintController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 60
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$2;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
