.class Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager$1;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/fimi/thirdpartysdk/login/twitter/TwitterApiManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;->login(Landroid/content/Context;Lcom/fimi/thirdpartysdk/login/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;


# direct methods
.method constructor <init>(Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager$1;->this$0:Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;

    iget-object v0, v0, Lcom/fimi/thirdpartysdk/login/xiaomi/TwitterManager;->loginCallback:Lcom/fimi/thirdpartysdk/login/LoginCallback;

    invoke-interface {v0, p1}, Lcom/fimi/thirdpartysdk/login/LoginCallback;->loginSuccess(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
