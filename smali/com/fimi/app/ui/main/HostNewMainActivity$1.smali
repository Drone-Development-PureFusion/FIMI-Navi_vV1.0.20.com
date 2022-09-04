.class Lcom/fimi/app/ui/main/HostNewMainActivity$1;
.super Ljava/lang/Object;
.source "HostNewMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/ui/main/HostNewMainActivity;->initData()V
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
    .line 73
    iput-object p1, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$1;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fimi/app/ui/main/HostNewMainActivity$1;->this$0:Lcom/fimi/app/ui/main/HostNewMainActivity;

    invoke-static {v0}, Lcom/fimi/app/ui/main/HostNewMainActivity;->access$000(Lcom/fimi/app/ui/main/HostNewMainActivity;)V

    .line 77
    return-void
.end method
