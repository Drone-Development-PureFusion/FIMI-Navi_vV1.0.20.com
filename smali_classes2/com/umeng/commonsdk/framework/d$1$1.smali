.class Lcom/umeng/commonsdk/framework/d$1$1;
.super Ljava/lang/Object;
.source "UMNetWorkSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/d$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/commonsdk/framework/d$1;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/framework/d$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/umeng/commonsdk/framework/d$1$1;->b:Lcom/umeng/commonsdk/framework/d$1;

    iput-object p2, p0, Lcom/umeng/commonsdk/framework/d$1$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/framework/d$1$1;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/umeng/commonsdk/framework/d$1$1;->a:Landroid/content/Context;

    const v1, 0x8006

    iget-object v2, p0, Lcom/umeng/commonsdk/framework/d$1$1;->a:Landroid/content/Context;

    .line 77
    invoke-static {v2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v2

    const/4 v3, 0x0

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method
