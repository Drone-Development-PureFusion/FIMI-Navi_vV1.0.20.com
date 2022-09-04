.class Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;
.super Ljava/lang/Object;
.source "UserProtocolWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    iput-object p2, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;->this$0:Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;->access$100(Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/libperson/ui/web/UserProtocolWebViewActivity$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 139
    return-void
.end method
