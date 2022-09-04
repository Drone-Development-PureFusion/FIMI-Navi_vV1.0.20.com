.class public Lcom/fimi/widget/sticklistview/PinyinComparator;
.super Ljava/lang/Object;
.source "PinyinComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fimi/widget/sticklistview/SortModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/widget/sticklistview/SortModel;Lcom/fimi/widget/sticklistview/SortModel;)I
    .locals 2
    .param p1, "o1"    # Lcom/fimi/widget/sticklistview/SortModel;
    .param p2, "o2"    # Lcom/fimi/widget/sticklistview/SortModel;

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p2}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    :cond_0
    const/4 v0, -0x1

    .line 18
    :goto_0
    return v0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/widget/sticklistview/SortModel;->getSortLetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/fimi/widget/sticklistview/SortModel;

    check-cast p2, Lcom/fimi/widget/sticklistview/SortModel;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/widget/sticklistview/PinyinComparator;->compare(Lcom/fimi/widget/sticklistview/SortModel;Lcom/fimi/widget/sticklistview/SortModel;)I

    move-result v0

    return v0
.end method
