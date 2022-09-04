.class Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;
.super Ljava/lang/Object;
.source "LibPersonRightApplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-static {v0}, Lcom/fimi/widget/NetworkLoadManage;->show(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->access$200(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->access$000(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/fimi/kernel/utils/LanguageUtil;->getCurrentLanguage()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getInternalCoutry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {v3}, Lcom/fimi/host/common/ProductEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/libperson/presenter/LibPersonRightApplyPresenter;->sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
