.class public Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;
.super Ljava/lang/Object;
.source "SerializableHttpCookie.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a0a7f563d0cL


# instance fields
.field private transient clientCookie:Ljava/net/HttpCookie;

.field private final transient cookie:Ljava/net/HttpCookie;


# direct methods
.method public constructor <init>(Ljava/net/HttpCookie;)V
    .locals 0
    .param p1, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    .line 22
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/net/HttpCookie;

    invoke-direct {v2, v0, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    .line 54
    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    .line 58
    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 61
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setSecure(Z)V

    .line 62
    iget-object v2, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpCookie;->setDiscard(Z)V

    .line 63
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 42
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 46
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public getCookie()Ljava/net/HttpCookie;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->cookie:Ljava/net/HttpCookie;

    .line 27
    .local v0, "bestCookie":Ljava/net/HttpCookie;
    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    if-eqz v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/cookie/SerializableHttpCookie;->clientCookie:Ljava/net/HttpCookie;

    .line 31
    :cond_0
    return-object v0
.end method
