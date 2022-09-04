.class Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;
.super Ljava/lang/Object;
.source "FirmwareUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->create()Lcom/fimi/widget/FirmwareUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/FirmwareUpdateDialog$Builder;

.field final synthetic val$dialog:Lcom/fimi/widget/FirmwareUpdateDialog;


# direct methods
.method constructor <init>(Lcom/fimi/widget/FirmwareUpdateDialog$Builder;Lcom/fimi/widget/FirmwareUpdateDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/FirmwareUpdateDialog$Builder;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;->this$0:Lcom/fimi/widget/FirmwareUpdateDialog$Builder;

    iput-object p2, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;->val$dialog:Lcom/fimi/widget/FirmwareUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;->this$0:Lcom/fimi/widget/FirmwareUpdateDialog$Builder;

    invoke-static {v0}, Lcom/fimi/widget/FirmwareUpdateDialog$Builder;->access$100(Lcom/fimi/widget/FirmwareUpdateDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/widget/FirmwareUpdateDialog$Builder$2;->val$dialog:Lcom/fimi/widget/FirmwareUpdateDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 201
    return-void
.end method
