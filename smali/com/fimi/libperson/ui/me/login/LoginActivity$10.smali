.class Lcom/fimi/libperson/ui/me/login/LoginActivity$10;
.super Landroid/text/style/ClickableSpan;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/LoginActivity;->getSpannableStringSecurity()Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/LoginActivity;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$10;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$10;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {}, Lcom/fimi/host/ComonStaticURL;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$10;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    sget v3, Lcom/fimi/libperson/R$string;->person_setting_user_privacy:I

    invoke-virtual {v2, v3}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->goWebActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 406
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$10;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$color;->libperson_ecurity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 408
    return-void
.end method
