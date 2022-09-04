.class Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;
.super Ljava/lang/Object;
.source "ServiceSettingActivity.java"

# interfaces
.implements Lcom/fimi/widget/DialogManager$OnDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    iput p2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;->val$position:I

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
    .line 422
    return-void
.end method

.method public dialogBtnRightOrSingleListener(Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "customView"    # Landroid/view/View;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    iget v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;->val$position:I

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->access$002(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;I)I

    .line 416
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->access$200(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v0

    const-string v1, "login_bg.jpg"

    invoke-static {v1}, Lcom/fimi/libperson/entity/ImageSource;->asset(Ljava/lang/String;)Lcom/fimi/libperson/entity/ImageSource;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    invoke-static {v2}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->access$100(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setImage(Lcom/fimi/libperson/entity/ImageSource;Landroid/content/Context;)V

    .line 417
    return-void
.end method
