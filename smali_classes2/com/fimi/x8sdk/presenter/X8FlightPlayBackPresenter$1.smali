.class Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;
.super Ljava/lang/Object;
.source "X8FlightPlayBackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->parseFileDate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iput-object p2, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 87
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->val$filePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->val$filePath:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$002(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;J)J

    .line 125
    :try_start_0
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->readTotalPtsdTime(Ljava/lang/String;)I

    move-result v3

    .line 127
    .local v3, "totalPtsdTime":I
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$102(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/util/List;)Ljava/util/List;

    .line 128
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->val$filePath:Ljava/lang/String;

    const-string v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$202(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 129
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$302(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;J)J

    .line 130
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$400(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 131
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 132
    const/4 v4, 0x2

    new-array v2, v4, [B

    .line 133
    .local v2, "packetLengthBytes":[B
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 134
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/fimi/kernel/utils/ByteUtil;->byteToShort([BI)S

    move-result v5

    invoke-static {v4, v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$502(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;I)I

    .line 136
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 137
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v4

    new-array v1, v4, [B

    .line 138
    .local v1, "packetDatas":[B
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 140
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-static {v4, v6, v7}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$002(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;J)J

    .line 141
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$000(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v6}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$300(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4, v1}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$600(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;[B)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    :cond_3
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$402(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Z)Z

    .line 143
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$700(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 150
    .end local v1    # "packetDatas":[B
    .end local v2    # "packetLengthBytes":[B
    .end local v3    # "totalPtsdTime":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$800(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 152
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$800(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Lcom/fimi/kernel/percent/PercentRelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/fimi/kernel/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "packetDatas":[B
    .restart local v2    # "packetLengthBytes":[B
    .restart local v3    # "totalPtsdTime":I
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$100(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 155
    .end local v1    # "packetDatas":[B
    .end local v2    # "packetLengthBytes":[B
    .end local v3    # "totalPtsdTime":I
    :catchall_0
    move-exception v4

    .line 156
    :try_start_4
    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 157
    iget-object v5, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v5}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 161
    :cond_6
    :goto_2
    throw v4

    .line 156
    .restart local v3    # "totalPtsdTime":I
    :cond_7
    :try_start_5
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter$1;->this$0:Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;

    invoke-static {v4}, Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;->access$200(Lcom/fimi/x8sdk/presenter/X8FlightPlayBackPresenter;)Ljava/io/RandomAccessFile;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 159
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "totalPtsdTime":I
    :catch_3
    move-exception v0

    .line 159
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
