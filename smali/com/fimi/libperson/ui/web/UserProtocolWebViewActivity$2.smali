.class Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 99
    iput-object p1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-static {v1}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->access$000(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-virtual {v1}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/16 v1, 0x64

    if-ne p2, v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/NetworkDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/NetworkDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$2;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->mNetworkDialog:Lcom/fimi/widget/NetworkDialog;

    invoke-virtual {v1}, Lcom/fimi/widget/NetworkDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    .line 119
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
