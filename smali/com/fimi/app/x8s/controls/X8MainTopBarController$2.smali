.class Lcom/fimi/app/x8s/controls/X8MainTopBarController$2;
.super Ljava/lang/Object;
.source "X8MainTopBarController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainTopBarController;->showDiaLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainTopBarController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainTopBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController$2;->this$0:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainTopBarController$2;->this$0:Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->access$000(Lcom/fimi/app/x8s/controls/X8MainTopBarController;)Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->dismiss()V

    .line 444
    return-void
.end method
