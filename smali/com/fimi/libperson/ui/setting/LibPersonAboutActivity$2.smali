.class Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;
.super Ljava/lang/Object;
.source "LibPersonAboutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;
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
    .line 167
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->access$300(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v1}, Lcom/fimi/libperson/entity/PersonSetting;->getThirdAdapt()Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    move-result-object v0

    .line 171
    .local v0, "positionIndex":Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;
    sget-object v1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_PRIVACY:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {}, Lcom/fimi/host/ComonStaticURL;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_user_privacy:I

    invoke-virtual {v3, v4}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->goWebActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_AGREEMENT:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    if-ne v0, v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {}, Lcom/fimi/host/ComonStaticURL;->getPolicyUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    sget v4, Lcom/fimi/libperson/R$string;->person_setting_user_agreement:I

    invoke-virtual {v3, v4}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->goWebActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    sget-object v1, Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;->USER_RIGHT:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity$2;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    const-class v2, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-static {v1, v2}, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;->access$400(Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;Ljava/lang/Class;)V

    goto :goto_0
.end method
