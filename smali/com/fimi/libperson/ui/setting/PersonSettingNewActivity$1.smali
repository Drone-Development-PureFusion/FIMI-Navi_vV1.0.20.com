.class Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;
.super Ljava/lang/Object;
.source "PersonSettingNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

.field final synthetic val$fimiId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    iput-object p2, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;->val$fimiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;->val$fimiId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;->access$000(Lcom/fimi/libperson/ui/setting/PersonSettingNewActivity;)V

    goto :goto_0
.end method
