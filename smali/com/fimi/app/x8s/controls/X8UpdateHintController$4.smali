.class Lcom/fimi/app/x8s/controls/X8UpdateHintController$4;
.super Ljava/lang/Object;
.source "X8UpdateHintController.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/X8UpdateHintController;
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
    .line 96
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$4;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUpdate()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8UpdateHintController$4;->this$0:Lcom/fimi/app/x8s/controls/X8UpdateHintController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8UpdateHintController;->showUpdateDialog()V

    .line 104
    return-void
.end method

.method public showIsUpdate(ZI)V
    .locals 0
    .param p1, "isUpdate"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 99
    return-void
.end method
