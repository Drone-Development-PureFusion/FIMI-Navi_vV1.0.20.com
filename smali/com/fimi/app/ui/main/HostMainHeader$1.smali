.class Lcom/fimi/app/ui/main/HostMainHeader$1;
.super Ljava/lang/Object;
.source "HostMainHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostMainHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostMainHeader;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/main/HostMainHeader;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostMainHeader;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostMainHeader$1;->this$0:Lcom/fimi/app/ui/main/HostMainHeader;

    iput-object p2, p0, Lcom/fimi/app/ui/main/HostMainHeader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostMainHeader$1;->val$context:Landroid/content/Context;

    check-cast v1, Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/ui/main/HostNewMainActivity;->stopAnim()V

    .line 54
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostMainHeader$1;->val$context:Landroid/content/Context;

    const-string v2, "activity://person.setting"

    invoke-static {v1, v2}, Lrouter/Router;->invoke(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 55
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fimi/app/ui/main/HostMainHeader$1;->val$context:Landroid/content/Context;

    check-cast v1, Lcom/fimi/app/ui/main/HostNewMainActivity;

    const/16 v2, 0x271a

    invoke-virtual {v1, v0, v2}, Lcom/fimi/app/ui/main/HostNewMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method
