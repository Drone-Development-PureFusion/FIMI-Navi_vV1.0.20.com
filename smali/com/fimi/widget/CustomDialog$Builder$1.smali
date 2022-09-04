.class Lcom/fimi/widget/CustomDialog$Builder$1;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/CustomDialog$Builder;->create()Lcom/fimi/widget/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/CustomDialog$Builder;

.field final synthetic val$dialog:Lcom/fimi/widget/CustomDialog;


# direct methods
.method constructor <init>(Lcom/fimi/widget/CustomDialog$Builder;Lcom/fimi/widget/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/CustomDialog$Builder;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/fimi/widget/CustomDialog$Builder$1;->this$0:Lcom/fimi/widget/CustomDialog$Builder;

    iput-object p2, p0, Lcom/fimi/widget/CustomDialog$Builder$1;->val$dialog:Lcom/fimi/widget/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/fimi/widget/CustomDialog$Builder$1;->this$0:Lcom/fimi/widget/CustomDialog$Builder;

    invoke-static {v0}, Lcom/fimi/widget/CustomDialog$Builder;->access$100(Lcom/fimi/widget/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/widget/CustomDialog$Builder$1;->val$dialog:Lcom/fimi/widget/CustomDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 246
    return-void
.end method
