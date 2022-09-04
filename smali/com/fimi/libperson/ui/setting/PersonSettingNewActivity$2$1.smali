.class Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2$1;
.super Ljava/lang/Object;
.source "PersonSettingNewActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2$1;->this$1:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dialogBtnLeftListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 221
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2$1;->this$1:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;

    iget-object v0, v0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->access$000(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V

    .line 216
    return-void
.end method
