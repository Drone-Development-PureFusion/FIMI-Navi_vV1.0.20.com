.class Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;
.super Ljava/lang/Object;
.source "X8FlightPlayBackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->toFlightPlaybackEntity(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

.field final synthetic val$flightPlaybackAllDatas:Ljava/util/List;

.field final synthetic val$totalPtsdTime:I


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->val$flightPlaybackAllDatas:Ljava/util/List;

    iput p3, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->val$totalPtsdTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "cacheTime":I
    const/4 v4, 0x0

    .line 180
    .local v4, "currPtsb":I
    const/4 v5, 0x0

    .line 181
    .local v5, "diffPtsb":I
    const/4 v6, 0x0

    .line 183
    .local v6, "diffTotalPts":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v9, "listCach":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v13, v12, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->val$flightPlaybackAllDatas:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 188
    .local v2, "bytes":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    const/4 v14, 0x4

    invoke-static {v2, v14}, Lcom/fimi/kernel/utils/ByteUtil;->bytesToInt([BI)I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$902(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v13

    sub-int v5, v13, v4

    .line 192
    int-to-long v14, v5

    const-wide/16 v16, 0xa

    cmp-long v13, v14, v16

    if-lez v13, :cond_0

    int-to-long v14, v5

    const-wide/16 v16, 0x258

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    .line 194
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 196
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v13, v13, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    add-int v14, v4, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 202
    .end local v7    # "i":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    array-length v13, v2

    add-int/lit8 v13, v13, -0x8

    new-array v11, v13, [B

    .line 203
    .local v11, "packetData":[B
    const/16 v13, 0x8

    const/4 v14, 0x0

    array-length v15, v11

    invoke-static {v2, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v13

    invoke-static {}, Lcom/fimi/kernel/utils/DesEncryptUtil;->getInstans()Lcom/fimi/kernel/utils/DesEncryptUtil;

    move-result-object v14

    iget-object v14, v14, Lcom/fimi/kernel/utils/DesEncryptUtil;->ENCRYPT_KEY_BYTES:[B

    invoke-virtual {v13, v11, v14}, Lcom/fimi/kernel/utils/DesEncryptUtil;->desCbcDecrypt([B[B)[B

    move-result-object v11

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v13

    if-gtz v13, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$902(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I

    .line 208
    :cond_1
    if-nez v3, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v3

    .line 211
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13, v11}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;[B)Ljava/lang/Object;

    move-result-object v10

    .line 212
    .local v10, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v13

    if-ne v13, v3, :cond_4

    .line 213
    if-eqz v10, :cond_3

    .line 214
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v10    # "object":Ljava/lang/Object;
    .end local v11    # "packetData":[B
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v4

    .line 234
    goto/16 :goto_0

    .line 218
    .restart local v10    # "object":Ljava/lang/Object;
    .restart local v11    # "packetData":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v3

    .line 219
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v13, v13, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v14}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v14}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1102(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I

    .line 223
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 224
    if-eqz v10, :cond_3

    .line 225
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 237
    .end local v2    # "bytes":[B
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v10    # "object":Ljava/lang/Object;
    .end local v11    # "packetData":[B
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->val$totalPtsdTime:I

    div-int/lit8 v12, v12, 0x64

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v13

    sub-int v6, v12, v13

    .line 238
    const/4 v12, 0x1

    if-le v6, v12, :cond_7

    .line 239
    const/4 v7, 0x1

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v6, :cond_6

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v12, v12, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$900(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 244
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->val$totalPtsdTime:I

    div-int/lit8 v13, v13, 0x64

    invoke-static {v12, v13}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1102(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I

    .line 247
    .end local v7    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v12, v12, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->listLinkedHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 248
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v12}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 252
    :goto_4
    return-void

    .line 250
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$2;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v12}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$1200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method
