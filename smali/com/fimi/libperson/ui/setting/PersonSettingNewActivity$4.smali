.class Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;
.super Ljava/lang/Object;
.source "PersonSettingNewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 259
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->access$502(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Z)Z

    .line 260
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->access$600(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/libperson/entity/PersonSetting;

    invoke-virtual {v1}, Lcom/fimi/libperson/entity/PersonSetting;->getFourAdapt()Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    move-result-object v0

    .line 273
    .local v0, "positionIndex":Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    sget-object v1, Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;->ABOUT:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$4;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    const-class v2, Lcom/fimi/libperson/ui/setting/LibPersonAboutActivity;

    invoke-static {v1, v2}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->access$700(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Ljava/lang/Class;)V

    .line 276
    :cond_0
    return-void
.end method
