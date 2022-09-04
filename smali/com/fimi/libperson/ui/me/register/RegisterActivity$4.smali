.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 278
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$400(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 282
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v0, v0, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->registerPrenster:Lcom/fimi/libperson/presenter/RegisterPrenster;

    iget-object v1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$4;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->mEtAccount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/libperson/presenter/RegisterPrenster;->getVerificationCode(Ljava/lang/String;)V

    .line 283
    return-void
.end method
