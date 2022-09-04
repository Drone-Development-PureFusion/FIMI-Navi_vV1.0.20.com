.class public Lorg/apache/mina/util/AvailablePortFinder;
.super Ljava/lang/Object;
.source "AvailablePortFinder.java"


# static fields
.field public static final MAX_PORT_NUMBER:I = 0xbfff

.field public static final MIN_PORT_NUMBER:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static available(I)Z
    .locals 7
    .param p0, "port"    # I

    .prologue
    const/4 v4, 0x1

    .line 113
    if-lt p0, v4, :cond_0

    const v5, 0xbfff

    if-le p0, v5, :cond_1

    .line 114
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid start port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_1
    const/4 v2, 0x0

    .line 118
    .local v2, "ss":Ljava/net/ServerSocket;
    const/4 v0, 0x0

    .line 121
    .local v0, "ds":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, p0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .local v3, "ss":Ljava/net/ServerSocket;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 123
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p0}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .local v1, "ds":Ljava/net/DatagramSocket;
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v1, v5}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 133
    :cond_2
    if-eqz v3, :cond_3

    .line 135
    :try_start_3
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_0
    move-object v0, v1

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    move-object v2, v3

    .line 142
    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    :goto_1
    return v4

    .line 126
    :catch_0
    move-exception v4

    .line 129
    :goto_2
    if-eqz v0, :cond_4

    .line 130
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 133
    :cond_4
    if-eqz v2, :cond_5

    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 142
    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 133
    :cond_6
    if-eqz v2, :cond_7

    .line 135
    :try_start_5
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 138
    :cond_7
    :goto_5
    throw v4

    .line 136
    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catch_1
    move-exception v5

    goto :goto_0

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_5

    .line 129
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    goto :goto_4

    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    move-object v2, v3

    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    goto :goto_4

    .line 126
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    goto :goto_2

    .end local v0    # "ds":Ljava/net/DatagramSocket;
    .end local v2    # "ss":Ljava/net/ServerSocket;
    .restart local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v3    # "ss":Ljava/net/ServerSocket;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "ds":Ljava/net/DatagramSocket;
    .restart local v0    # "ds":Ljava/net/DatagramSocket;
    move-object v2, v3

    .end local v3    # "ss":Ljava/net/ServerSocket;
    .restart local v2    # "ss":Ljava/net/ServerSocket;
    goto :goto_2
.end method

.method public static getAvailablePorts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x1

    const v1, 0xbfff

    invoke-static {v0, v1}, Lorg/apache/mina/util/AvailablePortFinder;->getAvailablePorts(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailablePorts(II)Ljava/util/Set;
    .locals 7
    .param p0, "fromPort"    # I
    .param p1, "toPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v4, 0x1

    if-lt p0, v4, :cond_0

    const v4, 0xbfff

    if-gt p1, v4, :cond_0

    if-le p0, p1, :cond_1

    .line 157
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid port range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ~ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 160
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 162
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_4

    .line 163
    const/4 v2, 0x0

    .line 166
    .local v2, "s":Ljava/net/ServerSocket;
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, v0}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v2    # "s":Ljava/net/ServerSocket;
    .local v3, "s":Ljava/net/ServerSocket;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    if-eqz v3, :cond_5

    .line 173
    :try_start_2
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 162
    .end local v3    # "s":Ljava/net/ServerSocket;
    .restart local v2    # "s":Ljava/net/ServerSocket;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "s":Ljava/net/ServerSocket;
    .restart local v3    # "s":Ljava/net/ServerSocket;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 176
    .end local v3    # "s":Ljava/net/ServerSocket;
    .restart local v2    # "s":Ljava/net/ServerSocket;
    goto :goto_1

    .line 168
    :catch_1
    move-exception v4

    .line 171
    :goto_2
    if-eqz v2, :cond_2

    .line 173
    :try_start_3
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 174
    :catch_2
    move-exception v4

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 173
    :try_start_4
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 176
    :cond_3
    :goto_4
    throw v4

    .line 174
    :catch_3
    move-exception v5

    goto :goto_4

    .line 181
    .end local v2    # "s":Ljava/net/ServerSocket;
    :cond_4
    return-object v1

    .line 171
    .restart local v3    # "s":Ljava/net/ServerSocket;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "s":Ljava/net/ServerSocket;
    .restart local v2    # "s":Ljava/net/ServerSocket;
    goto :goto_3

    .line 168
    .end local v2    # "s":Ljava/net/ServerSocket;
    .restart local v3    # "s":Ljava/net/ServerSocket;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "s":Ljava/net/ServerSocket;
    .restart local v2    # "s":Ljava/net/ServerSocket;
    goto :goto_2

    .end local v2    # "s":Ljava/net/ServerSocket;
    .restart local v3    # "s":Ljava/net/ServerSocket;
    :cond_5
    move-object v2, v3

    .end local v3    # "s":Ljava/net/ServerSocket;
    .restart local v2    # "s":Ljava/net/ServerSocket;
    goto :goto_1
.end method

.method public static getNextAvailable()I
    .locals 6

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 74
    .local v2, "serverSocket":Ljava/net/ServerSocket;
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "serverSocket":Ljava/net/ServerSocket;
    .local v3, "serverSocket":Ljava/net/ServerSocket;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    .line 78
    .local v1, "port":I
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    return v1

    .line 81
    .end local v1    # "port":I
    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v2    # "serverSocket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v3    # "serverSocket":Ljava/net/ServerSocket;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v2    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_0
.end method

.method public static getNextAvailable(I)I
    .locals 4
    .param p0, "fromPort"    # I

    .prologue
    const v2, 0xbfff

    .line 93
    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    if-le p0, v2, :cond_1

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_3

    .line 98
    invoke-static {v0}, Lorg/apache/mina/util/AvailablePortFinder;->available(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    return v0

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_3
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find an available port above "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
