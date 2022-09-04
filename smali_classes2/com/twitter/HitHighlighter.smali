.class public Lcom/twitter/HitHighlighter;
.super Ljava/lang/Object;
.source "HitHighlighter.java"


# static fields
.field public static final DEFAULT_HIGHLIGHT_TAG:Ljava/lang/String; = "em"


# instance fields
.field protected highlightTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "em"

    iput-object v0, p0, Lcom/twitter/HitHighlighter;->highlightTag:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getHighlightTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/HitHighlighter;->highlightTag:Ljava/lang/String;

    return-object v0
.end method

.method public highlight(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "hits":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 32
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 72
    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 36
    .restart local p1    # "text":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 37
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "iterator":Ljava/text/CharacterIterator;
    const/4 v2, 0x1

    .line 39
    .local v2, "isCounting":Z
    const/4 v6, 0x0

    .line 40
    .local v6, "tagOpened":Z
    const/4 v1, 0x0

    .line 41
    .local v1, "currentIndex":I
    invoke-interface {v3}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    .line 43
    .local v0, "currentChar":C
    :goto_1
    const v7, 0xffff

    if-eq v0, v7, :cond_8

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 46
    .local v5, "start_end":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_3

    .line 47
    invoke-virtual {p0, v10}, Lcom/twitter/HitHighlighter;->tag(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/4 v6, 0x1

    goto :goto_2

    .line 49
    :cond_3
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v1, :cond_2

    .line 50
    invoke-virtual {p0, v9}, Lcom/twitter/HitHighlighter;->tag(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v6, 0x0

    goto :goto_2

    .line 55
    .end local v5    # "start_end":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_7

    .line 56
    const/4 v2, 0x0

    .line 61
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-interface {v3}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_1

    .line 57
    :cond_7
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_5

    if-nez v2, :cond_5

    .line 58
    const/4 v2, 0x1

    goto :goto_3

    .line 68
    :cond_8
    if-eqz v6, :cond_9

    .line 69
    invoke-virtual {p0, v9}, Lcom/twitter/HitHighlighter;->tag(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setHighlightTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "highlightTag"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/twitter/HitHighlighter;->highlightTag:Ljava/lang/String;

    .line 108
    return-void
.end method

.method protected tag(Z)Ljava/lang/String;
    .locals 3
    .param p1, "closeTag"    # Z

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/HitHighlighter;->highlightTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/twitter/HitHighlighter;->highlightTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
