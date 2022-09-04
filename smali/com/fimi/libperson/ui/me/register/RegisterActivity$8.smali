.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/register/RegisterActivity;->OnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, p2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$102(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)Z

    .line 312
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$100(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtGetVelidationCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    .line 321
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$8;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$200(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)V

    goto :goto_0
.end method
