.class Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;
.super Landroid/webkit/WebChromeClient;
.source "AuthorizeActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/AuthorizeActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xiaomi/account/openauth/AuthorizeActivityBase$1;->this$0:Lcom/xiaomi/account/openauth/AuthorizeActivityBase;

    invoke-virtual {v0, p2}, Lcom/xiaomi/account/openauth/AuthorizeActivityBase;->onUpdateProgress(I)V

    .line 111
    return-void
.end method
