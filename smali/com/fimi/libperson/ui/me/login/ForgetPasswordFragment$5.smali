.class Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$5;
.super Landroid/text/style/ClickableSpan;
.source "ForgetPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getSpannableString()Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$5;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 513
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 507
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$5;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$color;->register_agreement_click:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 509
    return-void
.end method
