.class Lorg/jdom/ContentList$FilterList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterList"
.end annotation


# instance fields
.field count:I

.field expected:I

.field filter:Lorg/jdom/filter/Filter;

.field private final this$0:Lorg/jdom/ContentList;


# direct methods
.method constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jdom/ContentList;
    .param p2, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 546
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 559
    iput-object p2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    .line 558
    return-void
.end method

.method private final getAdjustedIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "adjusted":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$2(Lorg/jdom/ContentList;)I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 706
    if-ne p1, v0, :cond_3

    .line 707
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$2(Lorg/jdom/ContentList;)I

    move-result v1

    .line 710
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 697
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$1(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v3

    aget-object v2, v3, v1

    .line 698
    .local v2, "obj":Lorg/jdom/Content;
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v3, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 699
    if-eq p1, v0, :cond_0

    .line 702
    add-int/lit8 v0, v0, 0x1

    .line 696
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v2    # "obj":Lorg/jdom/Content;
    :cond_3
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$2(Lorg/jdom/ContentList;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 572
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v1, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 574
    .local v0, "adjusted":I
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 575
    iget v1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 576
    iget v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 571
    return-void

    .line 578
    .end local v0    # "adjusted":I
    :cond_0
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Filter won\'t allow the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 580
    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' to be added to the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 591
    .local v0, "adjusted":I
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 595
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4

    .prologue
    .line 599
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 603
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-direct {v0, v1, v2, p1}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 613
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 614
    .local v0, "adjusted":I
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 615
    .local v1, "old":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 617
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 618
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 626
    return-object v1

    .line 621
    :cond_0
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Filter won\'t allow the "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 623
    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 624
    const-string v4, ") to be removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 639
    const/4 v1, 0x0

    .line 640
    .local v1, "old":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 642
    .local v0, "adjusted":I
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 643
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Filter won\'t allow the "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 646
    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 647
    const-string v4, ") to be removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 646
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 649
    :cond_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 650
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 657
    return-object v1

    .line 653
    .end local v0    # "adjusted":I
    :cond_1
    new-instance v2, Lorg/jdom/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Filter won\'t allow index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " to be set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 655
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 654
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-direct {v2, v3}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 673
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v3}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 674
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 685
    :goto_0
    return v2

    .line 677
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 678
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 684
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v2

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 685
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    goto :goto_0

    .line 679
    :cond_1
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$1(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v2

    aget-object v1, v2, v0

    .line 680
    .local v1, "obj":Lorg/jdom/Content;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    iget v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 678
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
