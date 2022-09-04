.class public Lcom/xiaomi/account/http/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field code:I

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field location:Ljava/lang/String;

.field setCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/account/http/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/xiaomi/account/http/Response;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcom/xiaomi/account/http/Response;->code:I

    iput v0, p0, Lcom/xiaomi/account/http/Response$Builder;->code:I

    .line 34
    iget-object v0, p1, Lcom/xiaomi/account/http/Response;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/http/Response$Builder;->body:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/xiaomi/account/http/Response;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/xiaomi/account/http/Response$Builder;->headers:Ljava/util/Map;

    .line 36
    iget-object v0, p1, Lcom/xiaomi/account/http/Response;->setCookie:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/http/Response$Builder;->setCookie:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/xiaomi/account/http/Response;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/http/Response$Builder;->location:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->body:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public build()Lcom/xiaomi/account/http/Response;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/xiaomi/account/http/Response;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/http/Response;-><init>(Lcom/xiaomi/account/http/Response$Builder;)V

    return-object v0
.end method

.method public code(I)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/xiaomi/account/http/Response$Builder;->code:I

    .line 52
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xiaomi/account/http/Response$Builder;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->headers:Ljava/util/Map;

    .line 42
    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->location:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0
    .param p1, "setCookie"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->setCookie:Ljava/lang/String;

    .line 57
    return-object p0
.end method
