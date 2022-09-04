.class Lcom/fimi/kernel/connect/session/SessionManager$1;
.super Landroid/os/Handler;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/connect/session/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/connect/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/connect/session/SessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/connect/session/SessionManager;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fimi/kernel/connect/session/SessionManager$1;->this$0:Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 149
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 183
    :cond_0
    :pswitch_0
    return-void

    .line 151
    :pswitch_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager$1;->this$0:Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/SessionManager;->access$000(Lcom/fimi/kernel/connect/session/SessionManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 152
    .local v1, "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    const-string v3, "removeSession"

    invoke-interface {v1, v3}, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;->onDisconnect(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, "clientMessage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 159
    const-string v0, "startSession"

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager$1;->this$0:Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/SessionManager;->access$000(Lcom/fimi/kernel/connect/session/SessionManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 162
    .restart local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    invoke-interface {v1, v0}, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;->onConnected(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    .end local v0    # "clientMessage":Ljava/lang/String;
    .end local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    :pswitch_3
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager$1;->this$0:Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/SessionManager;->access$000(Lcom/fimi/kernel/connect/session/SessionManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 168
    .restart local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    invoke-interface {v1}, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;->onDeviceConnect()V

    goto :goto_2

    .line 173
    .end local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    :pswitch_4
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager$1;->this$0:Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/SessionManager;->access$000(Lcom/fimi/kernel/connect/session/SessionManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 174
    .restart local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    invoke-interface {v1}, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;->onDeviceDisConnnect()V

    goto :goto_3

    .line 178
    .end local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    :pswitch_5
    iget-object v2, p0, Lcom/fimi/kernel/connect/session/SessionManager$1;->this$0:Lcom/fimi/kernel/connect/session/SessionManager;

    invoke-static {v2}, Lcom/fimi/kernel/connect/session/SessionManager;->access$000(Lcom/fimi/kernel/connect/session/SessionManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;

    .line 179
    .restart local v1    # "l":Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;
    const-string v3, ""

    invoke-interface {v1, v3}, Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;->onConnectError(Ljava/lang/String;)V

    goto :goto_4

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
