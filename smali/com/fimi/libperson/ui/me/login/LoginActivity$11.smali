.class Lcom/fimi/libperson/ui/me/login/LoginActivity$11;
.super Landroid/text/style/ClickableSpan;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/login/LoginActivity;->getSpannableString()Landroid/text/SpannableString;
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
    .line 437
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$11;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 448
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 441
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 442
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/LoginActivity$11;->this$0:Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/LoginActivity;->access$800(Lcom/fimi/libperson/ui/me/login/LoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/libperson/R$color;->libperson_region:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 443
    return-void
.end method
