.class Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;
.super Ljava/lang/Object;
.source "LibPersonRightApplyActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 64
    iput-object p1, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->access$000(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DataValidatorUtil;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->access$100(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;Z)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity$1;->this$0:Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;->access$100(Lcom/fimi/libperson/ui/setting/LibPersonRightApplyActivity;Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 66
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 69
    return-void
.end method
