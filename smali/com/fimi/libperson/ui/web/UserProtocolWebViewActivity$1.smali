.class Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "UserProtocolWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->initView()V
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
    .line 66
    iput-object p1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/fimi/libperson/R$string;->notification_error_ssl_cert_invalid:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 83
    const-string v2, "continue"

    new-instance v3, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$1;

    invoke-direct {v3, p0, p2}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$1;-><init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    const-string v2, "cancel"

    new-instance v3, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$2;

    invoke-direct {v3, p0, p2}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1$2;-><init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$1;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 96
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 97
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
