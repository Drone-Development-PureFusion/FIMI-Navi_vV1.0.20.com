.class Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;
.super Ljava/lang/Thread;
.source "CmdSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/dataparser/CmdSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/dataparser/CmdSession;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/dataparser/CmdSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/dataparser/CmdSession;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    invoke-static {v0}, Lcom/fimi/kernel/dataparser/CmdSession;->access$000(Lcom/fimi/kernel/dataparser/CmdSession;)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    invoke-static {v2}, Lcom/fimi/kernel/dataparser/CmdSession;->access$100(Lcom/fimi/kernel/dataparser/CmdSession;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    invoke-static {v2}, Lcom/fimi/kernel/dataparser/CmdSession;->access$000(Lcom/fimi/kernel/dataparser/CmdSession;)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/connect/BaseCommand;->getOutTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    iget v0, v0, Lcom/fimi/kernel/dataparser/CmdSession;->sendCount:I

    iget-object v1, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    invoke-static {v1}, Lcom/fimi/kernel/dataparser/CmdSession;->access$000(Lcom/fimi/kernel/dataparser/CmdSession;)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/BaseCommand;->getReSendNum()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    invoke-static {v0}, Lcom/fimi/kernel/dataparser/CmdSession;->access$200(Lcom/fimi/kernel/dataparser/CmdSession;)V

    .line 40
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/CmdSession$CheckThread;->this$0:Lcom/fimi/kernel/dataparser/CmdSession;

    iget v1, v0, Lcom/fimi/kernel/dataparser/CmdSession;->sendCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fimi/kernel/dataparser/CmdSession;->sendCount:I

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method
