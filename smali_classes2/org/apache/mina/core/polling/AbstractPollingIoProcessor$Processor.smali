.class Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1060
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    .prologue
    .line 1060
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;

    .prologue
    .line 1060
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1062
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    sget-boolean v15, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    if-eq v15, v0, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1064
    :cond_0
    const/4 v11, 0x0

    .line 1065
    .local v11, "nSessions":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v15, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J

    .line 1066
    const/16 v12, 0xa

    .line 1074
    .local v12, "nbTries":I
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1075
    .local v16, "t0":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->select(J)I

    move-result v13

    .line 1076
    .local v13, "selected":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1077
    .local v18, "t1":J
    sub-long v6, v18, v16

    .line 1079
    .local v6, "delta":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    iget-object v15, v15, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v15

    if-nez v15, :cond_7

    if-nez v13, :cond_7

    const-wide/16 v20, 0x64

    cmp-long v15, v6, v20

    if-gez v15, :cond_7

    .line 1082
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isBrokenConnection()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1083
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v15

    const-string v20, "Broken connection"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1111
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    move-result v15

    add-int/2addr v11, v15

    .line 1113
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 1117
    if-lez v13, :cond_2

    .line 1120
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    .line 1124
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1125
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I

    move-result v15

    sub-int/2addr v11, v15

    .line 1131
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15, v4, v5}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V

    .line 1135
    if-nez v11, :cond_b

    .line 1136
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isSelectorEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1140
    sget-boolean v15, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    if-ne v15, v0, :cond_3

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1173
    .end local v4    # "currentTime":J
    .end local v6    # "delta":J
    .end local v13    # "selected":I
    .end local v16    # "t0":J
    .end local v18    # "t1":J
    :catch_0
    move-exception v2

    .line 1176
    .local v2, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v15

    invoke-virtual {v15, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 1190
    .end local v2    # "cse":Ljava/nio/channels/ClosedSelectorException;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1191
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1192
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->doDispose()V

    .line 1194
    :cond_4
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1198
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v15

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    .line 1200
    :goto_2
    return-void

    .line 1098
    .restart local v6    # "delta":J
    .restart local v13    # "selected":I
    .restart local v16    # "t0":J
    .restart local v18    # "t1":J
    :cond_5
    if-nez v12, :cond_6

    .line 1099
    :try_start_3
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v15

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Create a new selector. Selected is 0, delta = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->registerNewSelector()V

    .line 1101
    const/16 v12, 0xa

    goto/16 :goto_1

    .line 1103
    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 1107
    :cond_7
    const/16 v12, 0xa

    goto/16 :goto_1

    .line 1144
    .restart local v4    # "currentTime":J
    :cond_8
    sget-boolean v15, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    if-ne v15, v0, :cond_9

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_3
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1178
    .end local v4    # "currentTime":J
    .end local v6    # "delta":J
    .end local v13    # "selected":I
    .end local v16    # "t0":J
    .end local v18    # "t1":J
    :catch_1
    move-exception v3

    .line 1179
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v15

    invoke-virtual {v15, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 1182
    const-wide/16 v20, 0x3e8

    :try_start_4
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1183
    :catch_2
    move-exception v8

    .line 1184
    .local v8, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v15

    invoke-virtual {v15, v8}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1146
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/lang/InterruptedException;
    .restart local v4    # "currentTime":J
    .restart local v6    # "delta":J
    .restart local v13    # "selected":I
    .restart local v16    # "t0":J
    .restart local v18    # "t1":J
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v15, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 1148
    sget-boolean v15, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    if-ne v15, v0, :cond_3

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1152
    :cond_a
    sget-boolean v15, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->$assertionsDisabled:Z

    if-nez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    if-eq v15, v0, :cond_b

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1157
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isDisposing()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1158
    const/4 v9, 0x0

    .line 1160
    .local v9, "hasKeys":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :cond_c
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1161
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/mina/core/session/IoSession;

    .line 1163
    .local v14, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v14}, Lorg/apache/mina/core/session/IoSession;->isActive()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1164
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    check-cast v14, Lorg/apache/mina/core/session/AbstractIoSession;

    .end local v14    # "session":Lorg/apache/mina/core/session/IoSession;
    invoke-static {v15, v14}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1165
    const/4 v9, 0x1

    goto :goto_3

    .line 1169
    :cond_d
    if-eqz v9, :cond_1

    .line 1170
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V
    :try_end_5
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1194
    .end local v4    # "currentTime":J
    .end local v6    # "delta":J
    .end local v9    # "hasKeys":Z
    .end local v10    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    .end local v13    # "selected":I
    .end local v16    # "t0":J
    .end local v18    # "t1":J
    :catchall_0
    move-exception v15

    :try_start_6
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1195
    :catch_3
    move-exception v3

    .line 1196
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v15

    invoke-virtual {v15, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1198
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v15}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v15

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    throw v15
.end method
