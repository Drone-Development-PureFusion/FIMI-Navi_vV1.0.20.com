.class public Lcom/fimi/app/x8s/tools/LinkedListQueue;
.super Ljava/lang/Object;
.source "LinkedListQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private LINK_SIZE:I

.field private linkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->LINK_SIZE:I

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/fimi/app/x8s/tools/LinkedListQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->LINK_SIZE:I

    if-lt v0, v1, :cond_0

    .line 23
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public getFront()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLinkedList()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 43
    return-void
.end method

.method public removeFront()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setLinkedList(Ljava/util/LinkedList;)V
    .locals 0
    .param p1, "linkedList"    # Ljava/util/LinkedList;

    .prologue
    .line 51
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    .line 52
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/fimi/app/x8s/tools/LinkedListQueue;, "Lcom/fimi/app/x8s/tools/LinkedListQueue<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/tools/LinkedListQueue;->linkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
