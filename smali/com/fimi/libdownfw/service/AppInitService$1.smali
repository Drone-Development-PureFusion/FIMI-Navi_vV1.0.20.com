.class Lcom/fimi/libdownfw/service/AppInitService$1;
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
    .line 39
    iput-object p1, p0, Lcom/fimi/libdownfw/service/AppInitService$1;->this$0:Lcom/fimi/libdownfw/service/AppInitService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    .line 44
    return-void
.end method
