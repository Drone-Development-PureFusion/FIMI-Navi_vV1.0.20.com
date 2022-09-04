.class Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;
.super Ljava/lang/Object;
.source "LibPersonAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->access$000(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    sget v3, Lcom/fimi/libperson/R$string;->libperson_repeal_accredit:I

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    sget v4, Lcom/fimi/libperson/R$string;->libperson_repeal_accredit_hint:I

    .line 129
    invoke-virtual {v3, v4}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    sget v5, Lcom/fimi/libperson/R$string;->login_ensure:I

    .line 130
    invoke-virtual {v4, v5}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    sget v6, Lcom/fimi/libperson/R$string;->person_setting_dialog_exit_left_text:I

    .line 131
    invoke-virtual {v5, v6}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, "dialogManager":Lcom/fimi/widget/DialogManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setVerticalScreen(Z)V

    .line 133
    new-instance v1, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;

    invoke-direct {v1, p0}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1$1;-><init>(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 162
    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    .line 163
    return-void
.end method
