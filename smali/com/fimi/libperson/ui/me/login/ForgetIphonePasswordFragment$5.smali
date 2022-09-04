.class Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$5;
.super Ljava/lang/Object;
.source "ForgetIphonePasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$5;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 208
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    const/16 v0, 0x42

    .line 210
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$5;->this$0:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;->access$600(Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/AbAppUtil;->closeSoftInput(Landroid/content/Context;)V

    .line 214
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
