.class Lcom/github/moduth/blockcanary/ui/DisplayActivity$4$1;
.super Ljava/lang/Object;
.source "DisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;


# direct methods
.method constructor <init>(Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4$1;->this$1:Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 258
    invoke-static {}, Lcom/github/moduth/blockcanary/LogWriter;->deleteAll()V

    .line 259
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4$1;->this$1:Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$302(Lcom/github/moduth/blockcanary/ui/DisplayActivity;Ljava/util/List;)Ljava/util/List;

    .line 260
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4$1;->this$1:Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;

    iget-object v0, v0, Lcom/github/moduth/blockcanary/ui/DisplayActivity$4;->this$0:Lcom/github/moduth/blockcanary/ui/DisplayActivity;

    invoke-static {v0}, Lcom/github/moduth/blockcanary/ui/DisplayActivity;->access$400(Lcom/github/moduth/blockcanary/ui/DisplayActivity;)V

    .line 261
    return-void
.end method
