.class public Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;
.super Ljava/util/TimerTask;
.source "X8PressureGpsManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/manager/X8PressureGpsManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/manager/X8PressureGpsManger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;->this$0:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u5b9a\u65f6\u4efb\u52a1\u6267\u884c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->getInstance()Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/X8PressureGpsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;->this$0:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-static {v2}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->access$000(Lcom/fimi/app/x8s/manager/X8PressureGpsManger;)Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;->this$0:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-static {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->access$000(Lcom/fimi/app/x8s/manager/X8PressureGpsManger;)Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;->this$0:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->sendPressure()V

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8PressureGpsManger$Task;->this$0:Lcom/fimi/app/x8s/manager/X8PressureGpsManger;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/manager/X8PressureGpsManger;->sendGps()V

    .line 61
    :cond_0
    return-void
.end method
