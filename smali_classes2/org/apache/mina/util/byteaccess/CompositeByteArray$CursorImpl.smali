.class Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "CompositeByteArray.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorImpl"
.end annotation


# instance fields
.field private componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

.field private componentIndex:I

.field private componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

.field private index:I

.field private final listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
    .locals 2

    .prologue
    .line 567
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 568
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 571
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 572
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .prologue
    .line 578
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 580
    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .line 581
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V
    .locals 1
    .param p2, "listener"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;ILorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;)V

    .line 576
    return-void
.end method

.method private prepareForAccess(I)V
    .locals 6
    .param p1, "accessSize"    # I

    .prologue
    const/4 v4, 0x0

    .line 632
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    iput-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 634
    iput-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    .line 638
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    invoke-static {v3, v4, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V

    .line 642
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 645
    .local v2, "oldComponentNode":Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-nez v3, :cond_1

    .line 646
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v4

    add-int v0, v3, v4

    .line 647
    .local v0, "basMidpoint":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    if-gt v3, v0, :cond_2

    .line 649
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 650
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v3

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 651
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 665
    .end local v0    # "basMidpoint":I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    if-ge v3, v4, :cond_3

    .line 666
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getPreviousNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 667
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 668
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_1

    .line 669
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 656
    .restart local v0    # "basMidpoint":I
    :cond_2
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$200(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList;->getLast()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 657
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 658
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_1

    .line 659
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_0

    .line 674
    .end local v0    # "basMidpoint":I
    :cond_3
    :goto_1
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 675
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v4}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray;->last()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    .line 676
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getNextNode()Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    .line 677
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    if-eqz v3, :cond_3

    .line 678
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->listener:Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v5}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;->enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V

    goto :goto_1

    .line 683
    :cond_4
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentIndex:I

    sub-int v1, v3, v4

    .line 684
    .local v1, "internalComponentIndex":I
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    if-ne v3, v2, :cond_5

    .line 686
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->setIndex(I)V

    .line 691
    :goto_2
    return-void

    .line 689
    :cond_5
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentNode:Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;

    invoke-virtual {v3}, Lorg/apache/mina/util/byteaccess/ByteArrayList$Node;->getByteArray()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/apache/mina/util/byteaccess/ByteArray;->cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    goto :goto_2
.end method


# virtual methods
.method public get()B
    .locals 2

    .prologue
    .line 711
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 712
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    .line 713
    .local v0, "b":B
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 714
    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 730
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 732
    .local v2, "remainingBefore":I
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 733
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 734
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 736
    .local v1, "remainingAfter":I
    sub-int v0, v2, v1

    .line 737
    .local v0, "chunkSize":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 739
    .end local v0    # "chunkSize":I
    .end local v1    # "remainingAfter":I
    .end local v2    # "remainingBefore":I
    :cond_0
    return-void
.end method

.method public getChar()C
    .locals 5

    .prologue
    .line 990
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 991
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 992
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getChar()C

    move-result v2

    .line 993
    .local v2, "c":C
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1001
    .end local v2    # "c":C
    :goto_0
    return v2

    .line 996
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 997
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 998
    .local v1, "b1":B
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 999
    shl-int/lit8 v3, v0, 0x8

    and-int/lit16 v4, v1, 0xff

    or-int/2addr v3, v4

    int-to-char v2, v3

    goto :goto_0

    .line 1001
    :cond_1
    shl-int/lit8 v3, v1, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int/2addr v3, v4

    int-to-char v2, v3

    goto :goto_0
.end method

.method public getDouble()D
    .locals 6

    .prologue
    .line 961
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 962
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 963
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getDouble()D

    move-result-wide v0

    .line 964
    .local v0, "d":D
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 968
    .end local v0    # "d":D
    :goto_0
    return-wide v0

    .line 967
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getLong()J

    move-result-wide v2

    .line 968
    .local v2, "l":J
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat()F
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 932
    invoke-direct {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 933
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 934
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getFloat()F

    move-result v0

    .line 935
    .local v0, "f":F
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 939
    .end local v0    # "f":F
    :goto_0
    return v0

    .line 938
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getInt()I

    move-result v1

    .line 939
    .local v1, "i":I
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 803
    invoke-direct {p0, v6}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 804
    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 805
    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v5}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v4

    .line 806
    .local v4, "i":I
    iget v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 816
    .end local v4    # "i":I
    :goto_0
    return v4

    .line 809
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 810
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 811
    .local v1, "b1":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    .line 812
    .local v2, "b2":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    .line 813
    .local v3, "b3":B
    iget-object v5, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 814
    shl-int/lit8 v5, v0, 0x18

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v3, 0xff

    or-int v4, v5, v6

    goto :goto_0

    .line 816
    :cond_1
    shl-int/lit8 v5, v3, 0x18

    and-int/lit16 v6, v2, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/lit16 v6, v1, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/lit16 v6, v0, 0xff

    or-int v4, v5, v6

    goto :goto_0
.end method

.method public getLong()J
    .locals 18

    .prologue
    .line 856
    const/16 v12, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 857
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v12}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_0

    .line 858
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v12}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getLong()J

    move-result-wide v10

    .line 859
    .local v10, "l":J
    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 874
    .end local v10    # "l":J
    :goto_0
    return-wide v10

    .line 862
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v2

    .line 863
    .local v2, "b0":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v3

    .line 864
    .local v3, "b1":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v4

    .line 865
    .local v4, "b2":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v5

    .line 866
    .local v5, "b3":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v6

    .line 867
    .local v6, "b4":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v7

    .line 868
    .local v7, "b5":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v8

    .line 869
    .local v8, "b6":B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v9

    .line 870
    .local v9, "b7":B
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v12}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 871
    int-to-long v12, v2

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v14, 0x38

    shl-long/2addr v12, v14

    int-to-long v14, v3

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x30

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v4

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x28

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x20

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v6

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v7

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x10

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v8

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x8

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v9

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    or-long v10, v12, v14

    goto :goto_0

    .line 874
    :cond_1
    int-to-long v12, v9

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    const/16 v14, 0x38

    shl-long/2addr v12, v14

    int-to-long v14, v8

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x30

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v7

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x28

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v6

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x20

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v4

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x10

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v3

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const/16 v16, 0x8

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    int-to-long v14, v2

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    or-long v10, v12, v14

    goto/16 :goto_0
.end method

.method public getRemaining()I
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getShort()S
    .locals 5

    .prologue
    .line 760
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 761
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 762
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getShort()S

    move-result v2

    .line 763
    .local v2, "s":S
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 771
    .end local v2    # "s":S
    :goto_0
    return v2

    .line 766
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v0

    .line 767
    .local v0, "b0":B
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->get()B

    move-result v1

    .line 768
    .local v1, "b1":B
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 769
    shl-int/lit8 v3, v0, 0x8

    and-int/lit16 v4, v1, 0xff

    or-int/2addr v3, v4

    int-to-short v2, v3

    goto :goto_0

    .line 771
    :cond_1
    shl-int/lit8 v3, v1, 0x8

    and-int/lit16 v4, v0, 0xff

    or-int/2addr v3, v4

    int-to-short v2, v3

    goto :goto_0
.end method

.method public hasRemaining()Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 721
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 722
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(B)V

    .line 723
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 724
    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4
    .param p1, "bb"    # Lorg/apache/mina/core/buffer/IoBuffer;

    .prologue
    .line 745
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 747
    .local v2, "remainingBefore":I
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 748
    iget-object v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v3, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 749
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    .line 751
    .local v1, "remainingAfter":I
    sub-int v0, v2, v1

    .line 752
    .local v0, "chunkSize":I
    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    goto :goto_0

    .line 754
    .end local v0    # "chunkSize":I
    .end local v1    # "remainingAfter":I
    .end local v2    # "remainingBefore":I
    :cond_0
    return-void
.end method

.method public putChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1010
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 1011
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 1012
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putChar(C)V

    .line 1013
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 1027
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1019
    .local v0, "b0":B
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 1024
    .local v1, "b1":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 1025
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 1021
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    :cond_1
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1022
    .restart local v0    # "b0":B
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .restart local v1    # "b1":B
    goto :goto_1
.end method

.method public putDouble(D)V
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 976
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 977
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 978
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putDouble(D)V

    .line 979
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 984
    :goto_0
    return-void

    .line 981
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 982
    .local v0, "l":J
    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putLong(J)V

    goto :goto_0
.end method

.method public putFloat(F)V
    .locals 3
    .param p1, "f"    # F

    .prologue
    const/4 v2, 0x4

    .line 947
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 948
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 949
    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v1, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putFloat(F)V

    .line 950
    iget v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 955
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 953
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->putInt(I)V

    goto :goto_0
.end method

.method public putInt(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x4

    .line 825
    invoke-direct {p0, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 826
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 827
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putInt(I)V

    .line 828
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 850
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 835
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    .line 836
    .local v0, "b0":B
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v1, v4

    .line 837
    .local v1, "b1":B
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 838
    .local v2, "b2":B
    shr-int/lit8 v4, p1, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v3, v4

    .line 845
    .local v3, "b3":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 846
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 847
    invoke-virtual {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 848
    invoke-virtual {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 840
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    :cond_1
    shr-int/lit8 v4, p1, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    .line 841
    .restart local v0    # "b0":B
    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v1, v4

    .line 842
    .restart local v1    # "b1":B
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v2, v4

    .line 843
    .restart local v2    # "b2":B
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v3, v4

    .restart local v3    # "b3":B
    goto :goto_1
.end method

.method public putLong(J)V
    .locals 13
    .param p1, "l"    # J

    .prologue
    .line 885
    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 886
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v8}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v8

    const/4 v9, 0x4

    if-lt v8, v9, :cond_0

    .line 887
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v8, p1, p2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putLong(J)V

    .line 888
    iget v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 926
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v8, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v8}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 899
    const/16 v8, 0x38

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v0, v8

    .line 900
    .local v0, "b0":B
    const/16 v8, 0x30

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v1, v8

    .line 901
    .local v1, "b1":B
    const/16 v8, 0x28

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v2, v8

    .line 902
    .local v2, "b2":B
    const/16 v8, 0x20

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v3, v8

    .line 903
    .local v3, "b3":B
    const/16 v8, 0x18

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v4, v8

    .line 904
    .local v4, "b4":B
    const/16 v8, 0x10

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v5, v8

    .line 905
    .local v5, "b5":B
    const/16 v8, 0x8

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v6, v8

    .line 906
    .local v6, "b6":B
    const/4 v8, 0x0

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v7, v8

    .line 917
    .local v7, "b7":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 918
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 919
    invoke-virtual {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 920
    invoke-virtual {p0, v3}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 921
    invoke-virtual {p0, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 922
    invoke-virtual {p0, v5}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 923
    invoke-virtual {p0, v6}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 924
    invoke-virtual {p0, v7}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 908
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    .end local v4    # "b4":B
    .end local v5    # "b5":B
    .end local v6    # "b6":B
    .end local v7    # "b7":B
    :cond_1
    const/4 v8, 0x0

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v0, v8

    .line 909
    .restart local v0    # "b0":B
    const/16 v8, 0x8

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v1, v8

    .line 910
    .restart local v1    # "b1":B
    const/16 v8, 0x10

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v2, v8

    .line 911
    .restart local v2    # "b2":B
    const/16 v8, 0x18

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v3, v8

    .line 912
    .restart local v3    # "b3":B
    const/16 v8, 0x20

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v4, v8

    .line 913
    .restart local v4    # "b4":B
    const/16 v8, 0x28

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v5, v8

    .line 914
    .restart local v5    # "b5":B
    const/16 v8, 0x30

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v6, v8

    .line 915
    .restart local v6    # "b6":B
    const/16 v8, 0x38

    shr-long v8, p1, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v7, v8

    .restart local v7    # "b7":B
    goto :goto_1
.end method

.method public putShort(S)V
    .locals 4
    .param p1, "s"    # S

    .prologue
    .line 780
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 781
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 782
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v2, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->putShort(S)V

    .line 783
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 797
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$300(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 788
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 789
    .local v0, "b0":B
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 794
    .local v1, "b1":B
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    .line 795
    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->put(B)V

    goto :goto_0

    .line 791
    .end local v0    # "b0":B
    .end local v1    # "b1":B
    :cond_1
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 792
    .restart local v0    # "b0":B
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .restart local v1    # "b1":B
    goto :goto_1
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$000(Lorg/apache/mina/util/byteaccess/CompositeByteArray;II)V

    .line 595
    iput p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 596
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 602
    iget v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->setIndex(I)V

    .line 603
    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 5
    .param p1, "length"    # I

    .prologue
    .line 609
    new-instance v3, Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-static {v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->access$100(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;-><init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;)V

    .line 610
    .local v3, "slice":Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    move v2, p1

    .line 611
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_0

    .line 612
    invoke-direct {p0, v2}, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->prepareForAccess(I)V

    .line 613
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getRemaining()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 614
    .local v1, "componentSliceSize":I
    iget-object v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->componentCursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v4, v1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 615
    .local v0, "componentSlice":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {v3, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 616
    iget v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorImpl;->index:I

    .line 617
    sub-int/2addr v2, v1

    .line 618
    goto :goto_0

    .line 619
    .end local v0    # "componentSlice":Lorg/apache/mina/util/byteaccess/ByteArray;
    .end local v1    # "componentSliceSize":I
    :cond_0
    return-object v3
.end method
