.class Lorg/jdom/ContentList$FilterListIterator;
.super Ljava/lang/Object;
.source "ContentList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterListIterator"
.end annotation


# instance fields
.field cursor:I

.field expected:I

.field filter:Lorg/jdom/filter/Filter;

.field initialCursor:I

.field last:I

.field lastOperation:I

.field private final this$0:Lorg/jdom/ContentList;


# direct methods
.method constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/jdom/ContentList;
    .param p2, "filter"    # Lorg/jdom/filter/Filter;
    .param p3, "start"    # I

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    .line 741
    iput-object p2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    .line 742
    invoke-direct {p0, p3}, Lorg/jdom/ContentList$FilterListIterator;->initializeCursor(I)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->initialCursor:I

    .line 743
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    .line 744
    invoke-static {p1}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 92
    const/4 v0, 0x0

    .line 745
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 740
    return-void
.end method

.method private checkConcurrentModification()V
    .locals 2

    .prologue
    .line 1040
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1041
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1039
    :cond_0
    return-void
.end method

.method private initializeCursor(I)I
    .locals 6
    .param p1, "start"    # I

    .prologue
    .line 978
    if-gez p1, :cond_0

    .line 979
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 982
    :cond_0
    const/4 v0, 0x0

    .line 983
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v3}, Lorg/jdom/ContentList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 993
    if-le p1, v0, :cond_4

    .line 994
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 995
    const-string v5, " Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 994
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 984
    :cond_1
    iget-object v3, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v3, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 985
    .local v2, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v3, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 986
    if-ne p1, v0, :cond_2

    .line 998
    .end local v1    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_1
    return v1

    .line 989
    .restart local v1    # "i":I
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 983
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v3}, Lorg/jdom/ContentList;->size()I

    move-result v1

    goto :goto_1
.end method

.method private moveBackward(I)I
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 1023
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 1024
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 1027
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_2

    .line 1033
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_1
    return v0

    .line 1028
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1029
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1027
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private moveForward(I)I
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 1006
    if-gez p1, :cond_0

    .line 1007
    const/4 p1, 0x0

    .line 1009
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 1015
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v0

    .end local v0    # "i":I
    :cond_1
    return v0

    .line 1010
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1011
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 893
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 895
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    .line 897
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v0, v1, p1}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 97
    const/4 v0, 0x5

    .line 904
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 892
    return-void

    .line 900
    :cond_0
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Filter won\'t allow add of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 900
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 752
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 754
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    packed-switch v0, :pswitch_data_0

    .line 767
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :pswitch_0
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->initialCursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 770
    :goto_0
    :pswitch_1
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x2

    .line 771
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 774
    :cond_0
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 757
    :pswitch_2
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 760
    :pswitch_3
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom/ContentList$FilterListIterator;->moveForward(I)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 762
    :pswitch_4
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-direct {p0, v0}, Lorg/jdom/ContentList$FilterListIterator;->moveForward(I)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 764
    :pswitch_5
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom/ContentList$FilterListIterator;->moveForward(I)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 774
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public hasPrevious()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 800
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 802
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    packed-switch v2, :pswitch_data_0

    .line 818
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown operation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 803
    :pswitch_0
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->initialCursor:I

    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 804
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v0

    .line 805
    .local v0, "size":I
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    if-lt v2, v0, :cond_0

    .line 806
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lorg/jdom/ContentList$FilterListIterator;->moveBackward(I)I

    move-result v2

    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    .line 821
    .end local v0    # "size":I
    :cond_0
    :goto_0
    :pswitch_1
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    if-eqz v2, :cond_1

    .line 822
    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 825
    :cond_1
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    if-gez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1

    .line 810
    :pswitch_2
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/jdom/ContentList$FilterListIterator;->moveBackward(I)I

    move-result v2

    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 812
    :pswitch_3
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lorg/jdom/ContentList$FilterListIterator;->moveBackward(I)I

    move-result v2

    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 815
    :pswitch_4
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 781
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 783
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    .line 96
    const/4 v0, 0x4

    .line 791
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 792
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 787
    :cond_0
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    .line 788
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 4

    .prologue
    .line 851
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 852
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasNext()Z

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 863
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v2

    iput v2, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 864
    :cond_0
    return v0

    .line 856
    :cond_1
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    iget-object v3, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v3, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 857
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    if-eq v1, v2, :cond_0

    .line 860
    add-int/lit8 v0, v0, 0x1

    .line 855
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 832
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 834
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget v0, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    .line 95
    const/4 v0, 0x3

    .line 842
    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 843
    iget-object v0, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 838
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    .line 839
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 4

    .prologue
    .line 873
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 875
    invoke-virtual {p0}, Lorg/jdom/ContentList$FilterListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v2}, Lorg/jdom/ContentList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 886
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    .line 878
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    iget-object v3, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v3, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 879
    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->cursor:I

    if-eq v1, v2, :cond_1

    .line 882
    add-int/lit8 v0, v0, 0x1

    .line 877
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 913
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 915
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    if-ne v1, v3, :cond_1

    .line 916
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no preceeding call to prev() or next()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    :cond_1
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 97
    const/4 v2, 0x5

    .line 920
    if-ne v1, v2, :cond_2

    .line 921
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot call remove() after add()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :cond_2
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v1, v2}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 926
    .local v0, "old":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v1, v0}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 927
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v1, v2}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 933
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 934
    iput v3, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 912
    return-void

    .line 929
    :cond_3
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Filter won\'t allow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 931
    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 932
    const-string v3, ") to be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 931
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 942
    invoke-direct {p0}, Lorg/jdom/ContentList$FilterListIterator;->checkConcurrentModification()V

    .line 944
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 97
    const/4 v2, 0x5

    .line 944
    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->lastOperation:I

    .line 98
    const/4 v2, 0x6

    .line 944
    if-ne v1, v2, :cond_1

    .line 945
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot call set() after add() or remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 949
    :cond_1
    iget v1, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    if-gez v1, :cond_2

    .line 950
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no preceeding call to prev() or next()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 954
    :cond_2
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v1, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 955
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v1, v2}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 956
    .local v0, "old":Ljava/lang/Object;
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v1, v0}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 957
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Filter won\'t allow "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 959
    iget v3, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") to be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 961
    :cond_3
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    iget v2, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v1, v2, p1}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v1, p0, Lorg/jdom/ContentList$FilterListIterator;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$0(Lorg/jdom/ContentList;)I

    move-result v1

    iput v1, p0, Lorg/jdom/ContentList$FilterListIterator;->expected:I

    .line 941
    return-void

    .line 964
    .end local v0    # "old":Ljava/lang/Object;
    :cond_4
    new-instance v1, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Filter won\'t allow index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 965
    iget v3, p0, Lorg/jdom/ContentList$FilterListIterator;->last:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " to be set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 966
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 965
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 964
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
