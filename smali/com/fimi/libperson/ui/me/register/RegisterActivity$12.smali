.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;
.super Landroid/text/style/ClickableSpan;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getSpannableString()Landroid/text/SpannableString;
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
    .line 555
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {}, Lcom/fimi/host/ComonStaticURL;->getPolicyUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    sget v3, Lcom/fimi/libperson/R$string;->person_setting_user_agreement:I

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->goWebActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 559
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$12;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$color;->register_agreement_click:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 561
    return-void
.end method
