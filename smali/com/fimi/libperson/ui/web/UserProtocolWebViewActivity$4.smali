.class Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;
.super Ljava/lang/Object;
.source "UserProtocolWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->access$100(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->access$100(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$4;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->finish()V

    goto :goto_0
.end method
