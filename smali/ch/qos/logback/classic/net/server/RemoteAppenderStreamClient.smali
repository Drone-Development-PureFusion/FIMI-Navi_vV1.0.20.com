.class Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/classic/net/server/RemoteAppenderClient;


# instance fields
.field private final id:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private lc:Lch/qos/logback/classic/LoggerContext;

.field private logger:Lch/qos/logback/classic/Logger;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->id:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->id:Ljava/lang/String;

    iput-object p2, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method private createObjectInputStream()Ljava/io/ObjectInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ObjectInputStream;

    iget-object v1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ObjectInputStream;

    iget-object v1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->createObjectInputStream()Ljava/io/ObjectInputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/spi/ILoggingEvent;

    iget-object v2, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->lc:Lch/qos/logback/classic/LoggerContext;

    invoke-interface {v0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v2

    invoke-interface {v0}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/qos/logback/classic/Logger;->isEnabledFor(Lch/qos/logback/classic/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lch/qos/logback/classic/Logger;->callAppenders(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_3
    :try_start_2
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_2

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    :goto_4
    :try_start_3
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unknown event class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/qos/logback/classic/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_5
    :try_start_4
    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->error(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_4

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_6
    if-eqz v3, :cond_5

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->close()V

    iget-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": connection closed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->info(Ljava/lang/String;)V

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_4

    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto/16 :goto_3

    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method

.method public setLoggerContext(Lch/qos/logback/classic/LoggerContext;)V
    .locals 1

    iput-object p1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->lc:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/qos/logback/classic/LoggerContext;->getLogger(Ljava/lang/String;)Lch/qos/logback/classic/Logger;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->logger:Lch/qos/logback/classic/Logger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/net/server/RemoteAppenderStreamClient;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
