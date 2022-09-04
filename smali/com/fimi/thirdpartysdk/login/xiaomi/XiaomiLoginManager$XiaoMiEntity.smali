.class Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;
.super Ljava/lang/Object;
.source "XiaomiLoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XiaoMiEntity"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public redirectUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager$XiaoMiEntity;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/XiaomiLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
