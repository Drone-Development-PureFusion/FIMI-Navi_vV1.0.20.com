.class Lcom/fimi/libdownfw/service/AppInitService$2;
.super Ljava/lang/Object;
.source "AppInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/service/AppInitService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/service/AppInitService;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/service/AppInitService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/service/AppInitService;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/libdownfw/service/AppInitService$2;->this$0:Lcom/fimi/libdownfw/service/AppInitService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/libdownfw/service/AppInitService$2;->this$0:Lcom/fimi/libdownfw/service/AppInitService;

    invoke-static {v0}, Lcom/fimi/libdownfw/service/AppInitService;->access$000(Lcom/fimi/libdownfw/service/AppInitService;)V

    .line 50
    return-void
.end method
