.class Lorg/jdom/input/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: TextBuffer.java,v $ $Revision: 1.8 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $"


# instance fields
.field private array:[C

.field private arraySize:I

.field private prefixString:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    .line 94
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .param p1, "csize"    # I

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    array-length v0, v3

    .line 154
    .local v0, "capacity":I
    if-le p1, v0, :cond_0

    .line 155
    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->array:[C

    .line 156
    .local v2, "old":[C
    move v1, v0

    .line 157
    .local v1, "nsize":I
    :goto_0
    if-gt p1, v1, :cond_1

    .line 160
    new-array v3, v1, [C

    iput-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    .line 161
    iget-object v3, p0, Lorg/jdom/input/TextBuffer;->array:[C

    iget v4, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    .end local v1    # "nsize":I
    .end local v2    # "old":[C
    :cond_0
    return-void

    .line 158
    .restart local v1    # "nsize":I
    .restart local v2    # "old":[C
    :cond_1
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    goto :goto_0
.end method


# virtual methods
.method append([CII)V
    .locals 2
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    .line 100
    :goto_0
    return-void

    .line 107
    :cond_0
    iget v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/jdom/input/TextBuffer;->ensureCapacity(I)V

    .line 108
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    goto :goto_0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    .line 124
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 131
    iget-object v1, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 132
    const-string v0, ""

    .line 148
    :goto_0
    return-object v0

    .line 135
    :cond_0
    const-string v0, ""

    .line 136
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    if-nez v1, :cond_1

    .line 138
    iget-object v0, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    .line 136
    goto :goto_0

    .line 143
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->prefixString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lorg/jdom/input/TextBuffer;->array:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/jdom/input/TextBuffer;->arraySize:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    goto :goto_0
.end method
