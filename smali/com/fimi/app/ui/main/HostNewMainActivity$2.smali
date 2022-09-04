.class Lcom/fimi/app/ui/main/HostNewMainActivity$2;
.super Ljava/lang/Object;
.source "HostNewMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostNewMainActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/ui/main/HostNewMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/ui/main/HostNewMainActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$2;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$2;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    iget-object v0, v0, Lcom/fimi/app/ui/main/HostNewMainActivity;->hostMainPresenter:Lcom/fimi/app/presenter/HostMainPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/presenter/HostMainPresenter;->onConnectDevice()V

    .line 130
    return-void
.end method
