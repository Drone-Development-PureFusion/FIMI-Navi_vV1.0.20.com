.class public abstract Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
.super Ljava/lang/Object;
.source "DecodingStateMachine.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private final childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

.field private final childProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

.field private initialized:Z

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->log:Lorg/slf4j/Logger;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    .line 55
    new-instance v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;-><init>(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .prologue
    .line 180
    iget-boolean v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 184
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    .line 185
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e2":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to destroy a decoding state machine."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 195
    .local v0, "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->init()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    .line 199
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 7
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v5

    .line 105
    .local v5, "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    .line 106
    .local v1, "limit":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    .line 111
    .local v4, "pos":I
    :goto_0
    if-ne v4, v1, :cond_2

    .line 137
    :cond_0
    iput-object v5, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 140
    if-nez v5, :cond_1

    .line 141
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
    :cond_1
    :goto_1
    return-object p0

    .line 115
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
    :cond_2
    move-object v3, v5

    .line 116
    .local v3, "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :try_start_0
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    invoke-interface {v5, p1, v6}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v5

    .line 119
    if-nez v5, :cond_4

    .line 120
    iget-object v6, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v6, p2}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 137
    iput-object v5, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 140
    if-nez v5, :cond_3

    .line 141
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_3
    move-object p0, v6

    goto :goto_1

    .line 123
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 126
    .local v2, "newPos":I
    if-ne v2, v4, :cond_5

    if-eq v3, v5, :cond_0

    .line 129
    :cond_5
    move v4, v2

    .line 130
    goto :goto_0

    .line 133
    .end local v2    # "newPos":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 135
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iput-object v5, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 140
    if-nez v5, :cond_6

    .line 141
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_6
    throw v6
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;",
            ")",
            "Lorg/apache/mina/filter/codec/statemachine/DecodingState;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 6
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v3

    .line 154
    .local v3, "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :cond_0
    move-object v2, v3

    .line 155
    .local v2, "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    invoke-interface {v3, v4}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 156
    if-nez v3, :cond_2

    .line 170
    :goto_0
    iput-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 171
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v4, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    .line 172
    .local v1, "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v3, :cond_1

    .line 173
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    .line 176
    :cond_1
    :goto_1
    return-object v1

    .line 162
    .end local v1    # "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :cond_2
    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 168
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->log:Lorg/slf4j/Logger;

    const-string v5, "Ignoring the exception caused by a closed session."

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iput-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 171
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v4, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    .line 172
    .restart local v1    # "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v3, :cond_1

    .line 173
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    goto :goto_1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :catchall_0
    move-exception v4

    iput-object v3, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 171
    iget-object v5, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v5, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    .line 172
    .restart local v1    # "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v3, :cond_3

    .line 173
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    :cond_3
    throw v4
.end method

.method protected abstract init()Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
