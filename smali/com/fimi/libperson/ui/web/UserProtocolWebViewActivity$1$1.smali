.class Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$1;
.super Ljava/lang/Object;
.source "UserProtocolWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$1;->this$1:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;

    iput-object p2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 87
    return-void
.end method
