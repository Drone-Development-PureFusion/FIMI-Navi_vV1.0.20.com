.class Lorg/apache/mina/util/byteaccess/ByteArrayList;
.super Ljava/lang/Object;
.source "ByteArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    }
.end annotation


# instance fields
.field private firstByte:I

.field private final header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private lastByte:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V

    iput-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 55
    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/util/byteaccess/ByteArrayList;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/util/byteaccess/ByteArrayList;

    .prologue
    .line 29
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    return-object v0
.end method


# virtual methods
.method public addFirst(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 2
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 104
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-static {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)V

    .line 105
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    .line 106
    return-void
.end method

.method public addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 2
    .param p1, "ba"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 116
    new-instance v0, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayList;Lorg/apache/mina/util/byteaccess/ByteArray;Lorg/apache/mina/util/byteaccess/ByteArrayList$1;)V

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->addNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)V

    .line 117
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    invoke-interface {p1}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    .line 118
    return-void
.end method

.method protected addNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)V
    .locals 1
    .param p1, "nodeToInsert"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .param p2, "insertBeforeNode"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 154
    invoke-static {p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 155
    invoke-static {p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 156
    invoke-static {p2}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 157
    invoke-static {p2, p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 158
    return-void
.end method

.method public firstByte()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    return v0
.end method

.method public getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastByte()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    return v0
.end method

.method public removeFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 128
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->firstByte:I

    .line 129
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    return-object v1
.end method

.method public removeLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->header:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    .line 140
    .local v0, "node":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    invoke-static {v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$300(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/ByteArrayList;->lastByte:I

    .line 141
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->removeNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    return-object v1
.end method

.method protected removeNode(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    .locals 2
    .param p1, "node"    # Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .prologue
    .line 167
    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$102(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 168
    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$100(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$400(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$402(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;)Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 169
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->access$502(Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;Z)Z

    .line 170
    return-object p1
.end method
