.class final Lorg/jdom/ContentList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/ContentList$FilterList;,
        Lorg/jdom/ContentList$FilterListIterator;
    }
.end annotation


# static fields
.field private static final ADD:I = 0x5

.field private static final CREATE:I = 0x0

.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: ContentList.java,v $ $Revision: 1.39 $ $Date: 2004/02/28 03:30:27 $ $Name: jdom_1_0 $"

.field private static final HASNEXT:I = 0x2

.field private static final HASPREV:I = 0x1

.field private static final INITIAL_ARRAY_SIZE:I = 0x5

.field private static final NEXT:I = 0x4

.field private static final PREV:I = 0x3

.field private static final REMOVE:I = 0x6


# instance fields
.field private elementData:[Lorg/jdom/Content;

.field private parent:Lorg/jdom/Parent;

.field private size:I


# direct methods
.method constructor <init>(Lorg/jdom/Parent;)V
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Parent;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    .line 109
    return-void
.end method

.method static access$0(Lorg/jdom/ContentList;)I
    .locals 1
    .param p0, "$0"    # Lorg/jdom/ContentList;

    .prologue
    .line 525
    invoke-direct {p0}, Lorg/jdom/ContentList;->getModCount()I

    move-result v0

    return v0
.end method

.method static access$1(Lorg/jdom/ContentList;)[Lorg/jdom/Content;
    .locals 1
    .param p0, "$0"    # Lorg/jdom/ContentList;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    return-object v0
.end method

.method static access$2(Lorg/jdom/ContentList;)I
    .locals 1
    .param p0, "$0"    # Lorg/jdom/ContentList;

    .prologue
    .line 103
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    return v0
.end method

.method private documentCanContain(ILorg/jdom/Content;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/IllegalAddException;
        }
    .end annotation

    .prologue
    .line 152
    instance-of v1, p2, Lorg/jdom/Element;

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v1

    if-ltz v1, :cond_0

    .line 154
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 155
    const-string v2, "Cannot add a second root element, only one is allowed"

    .line 154
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 158
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 159
    const-string v2, "A root element cannot be added before the DocType"

    .line 158
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_1
    instance-of v1, p2, Lorg/jdom/DocType;

    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v1

    if-ltz v1, :cond_2

    .line 164
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 165
    const-string v2, "Cannot add a second doctype, only one is allowed"

    .line 164
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_2
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 168
    .local v0, "firstElt":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-ge v0, p1, :cond_3

    .line 169
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 170
    const-string v2, "A DocType cannot be added after the root element"

    .line 169
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "firstElt":I
    :cond_3
    instance-of v1, p2, Lorg/jdom/CDATA;

    if-eqz v1, :cond_4

    .line 174
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "A CDATA is not allowed at the document root"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_4
    instance-of v1, p2, Lorg/jdom/Text;

    if-eqz v1, :cond_5

    .line 178
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "A Text is not allowed at the document root"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_5
    instance-of v1, p2, Lorg/jdom/EntityRef;

    if-eqz v1, :cond_6

    .line 182
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "An EntityRef is not allowed at the document root"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_6
    return-void
.end method

.method private static elementCanContain(ILorg/jdom/Content;)V
    .locals 2
    .param p0, "index"    # I
    .param p1, "child"    # Lorg/jdom/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/IllegalAddException;
        }
    .end annotation

    .prologue
    .line 187
    instance-of v0, p1, Lorg/jdom/DocType;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lorg/jdom/IllegalAddException;

    .line 189
    const-string v1, "A DocType is not allowed except at the document level"

    .line 188
    invoke-direct {v0, v1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    return-void
.end method

.method private getModCount()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method private static removeParent(Lorg/jdom/Content;)V
    .locals 1
    .param p0, "c"    # Lorg/jdom/Content;

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    .line 461
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    new-instance v0, Lorg/jdom/IllegalAddException;

    const-string v1, "Cannot add null object"

    invoke-direct {v0, v1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    instance-of v0, p2, Lorg/jdom/Content;

    if-eqz v0, :cond_1

    .line 140
    check-cast p2, Lorg/jdom/Content;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    .line 135
    return-void

    .line 142
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 144
    const-string v2, " is of unrecognized type and cannot be added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-direct {v0, v1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method add(ILorg/jdom/Content;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 201
    if-nez p2, :cond_0

    .line 202
    new-instance v1, Lorg/jdom/IllegalAddException;

    const-string v2, "Cannot add null object"

    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v1, v1, Lorg/jdom/Document;

    if-eqz v1, :cond_1

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/jdom/ContentList;->documentCanContain(ILorg/jdom/Content;)V

    .line 211
    :goto_0
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {p2}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 213
    .local v0, "p":Lorg/jdom/Parent;
    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_2

    .line 214
    new-instance v1, Lorg/jdom/IllegalAddException;

    check-cast p2, Lorg/jdom/Element;

    .line 215
    .end local p2    # "child":Lorg/jdom/Content;
    const-string v2, "The Content already has an existing parent document"

    .line 214
    invoke-direct {v1, p2, v2}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v0    # "p":Lorg/jdom/Parent;
    .restart local p2    # "child":Lorg/jdom/Content;
    :cond_1
    invoke-static {p1, p2}, Lorg/jdom/ContentList;->elementCanContain(ILorg/jdom/Content;)V

    goto :goto_0

    .line 218
    .restart local v0    # "p":Lorg/jdom/Parent;
    :cond_2
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 219
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "The Content already has an existing parent \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 220
    check-cast v0, Lorg/jdom/Element;

    .end local v0    # "p":Lorg/jdom/Parent;
    invoke-virtual {v0}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_3
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    if-ne p2, v1, :cond_4

    .line 225
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 226
    const-string v2, "The Element cannot be added to itself"

    .line 225
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_4
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v1, v1, Lorg/jdom/Element;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lorg/jdom/Element;

    if-eqz v1, :cond_5

    move-object v1, p2

    .line 231
    check-cast v1, Lorg/jdom/Element;

    iget-object v2, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v1, v2}, Lorg/jdom/Element;->isAncestor(Lorg/jdom/Element;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    new-instance v1, Lorg/jdom/IllegalAddException;

    .line 233
    const-string v2, "The Element cannot be added as a descendent of itself"

    .line 232
    invoke-direct {v1, v2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_5
    if-ltz p1, :cond_6

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-le p1, v1, :cond_7

    .line 237
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 238
    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_7
    iget-object v1, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    invoke-virtual {p2, v1}, Lorg/jdom/Content;->setParent(Lorg/jdom/Parent;)Lorg/jdom/Content;

    .line 243
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 244
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-ne p1, v1, :cond_8

    .line 245
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v2, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/jdom/ContentList;->size:I

    aput-object p2, v1, v2

    .line 251
    :goto_1
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    .line 200
    return-void

    .line 247
    :cond_8
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aput-object p2, v1, p1

    .line 249
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList;->size:I

    goto :goto_1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 277
    if-ltz p1, :cond_0

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    if-le p1, v4, :cond_1

    .line 278
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Index: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 279
    const-string v6, " Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 283
    :cond_2
    const/4 v4, 0x0

    .line 303
    :goto_0
    return v4

    .line 285
    :cond_3
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "count":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 290
    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 303
    const/4 v4, 0x1

    goto :goto_0

    .line 291
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 292
    .local v3, "obj":Ljava/lang/Object;
    add-int v4, p1, v0

    invoke-virtual {p0, v4, v3}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "exception":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_5

    .line 300
    throw v1

    .line 298
    :cond_5
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 310
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v2, :cond_0

    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/jdom/ContentList;->size:I

    if-lt v0, v2, :cond_1

    .line 315
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 316
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    .line 318
    .end local v0    # "i":I
    :cond_0
    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    .line 309
    return-void

    .line 312
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v2, v0

    .line 313
    .local v1, "obj":Lorg/jdom/Content;
    invoke-static {v1}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .locals 6
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    const/4 v5, 0x0

    .line 329
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 330
    .local v2, "old":[Lorg/jdom/Content;
    iget v3, p0, Lorg/jdom/ContentList;->size:I

    .line 332
    .local v3, "oldSize":I
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 333
    iput v5, p0, Lorg/jdom/ContentList;->size:I

    .line 335
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 337
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4, p1}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_0
    if-eqz v2, :cond_1

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 352
    .end local v1    # "i":I
    :cond_1
    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    .line 328
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "exception":Ljava/lang/RuntimeException;
    iput-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 342
    iput v3, p0, Lorg/jdom/ContentList;->size:I

    .line 343
    throw v0

    .line 349
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    .restart local v1    # "i":I
    :cond_2
    aget-object v4, v2, v1

    invoke-static {v4}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method ensureCapacity(I)V
    .locals 6
    .param p1, "minCapacity"    # I

    .prologue
    const/4 v5, 0x0

    .line 363
    iget-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-nez v3, :cond_1

    .line 364
    const/4 v3, 0x5

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [Lorg/jdom/Content;

    iput-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    array-length v1, v3

    .line 367
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_0

    .line 368
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 369
    .local v2, "oldData":[Ljava/lang/Object;
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 370
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_2

    .line 371
    move v0, p1

    .line 372
    :cond_2
    new-array v3, v0, [Lorg/jdom/Content;

    iput-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    .line 373
    iget-object v3, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 385
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jdom/ContentList;->size:I

    if-lt p1, v0, :cond_1

    .line 386
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 387
    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getView(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 399
    new-instance v0, Lorg/jdom/ContentList$FilterList;

    invoke-direct {v0, p0, p1}, Lorg/jdom/ContentList$FilterList;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method indexOfDocType()I
    .locals 2

    .prologue
    .line 428
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v1, :cond_0

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-lt v0, v1, :cond_2

    .line 435
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    .line 430
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/DocType;

    if-nez v1, :cond_1

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method indexOfFirstElement()I
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    if-eqz v1, :cond_0

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jdom/ContentList;->size:I

    if-lt v0, v1, :cond_2

    .line 417
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    .line 412
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom/Element;

    if-nez v1, :cond_1

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 445
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/jdom/ContentList;->size:I

    if-lt p1, v2, :cond_1

    .line 446
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 447
    const-string v4, " Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_1
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    aget-object v1, v2, p1

    .line 450
    .local v1, "old":Lorg/jdom/Content;
    invoke-static {v1}, Lorg/jdom/ContentList;->removeParent(Lorg/jdom/Content;)V

    .line 451
    iget v2, p0, Lorg/jdom/ContentList;->size:I

    sub-int/2addr v2, p1

    add-int/lit8 v0, v2, -0x1

    .line 452
    .local v0, "numMoved":I
    if-lez v0, :cond_2

    .line 453
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    invoke-static {v2, v3, v4, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    :cond_2
    iget-object v2, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v3, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jdom/ContentList;->size:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 455
    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    .line 456
    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 475
    if-ltz p1, :cond_0

    iget v4, p0, Lorg/jdom/ContentList;->size:I

    if-lt p1, v4, :cond_1

    .line 476
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Index: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 477
    const-string v6, " Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jdom/ContentList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 479
    :cond_1
    instance-of v4, p2, Lorg/jdom/Element;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v4, v4, Lorg/jdom/Document;

    if-eqz v4, :cond_2

    .line 480
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfFirstElement()I

    move-result v3

    .line 481
    .local v3, "root":I
    if-ltz v3, :cond_2

    if-eq v3, p1, :cond_2

    .line 482
    new-instance v4, Lorg/jdom/IllegalAddException;

    .line 483
    const-string v5, "Cannot add a second root element, only one is allowed"

    .line 482
    invoke-direct {v4, v5}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 487
    .end local v3    # "root":I
    :cond_2
    instance-of v4, p2, Lorg/jdom/DocType;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    instance-of v4, v4, Lorg/jdom/Document;

    if-eqz v4, :cond_3

    .line 488
    invoke-virtual {p0}, Lorg/jdom/ContentList;->indexOfDocType()I

    move-result v0

    .line 489
    .local v0, "docTypeIndex":I
    if-ltz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 490
    new-instance v4, Lorg/jdom/IllegalAddException;

    .line 491
    const-string v5, "Cannot add a second doctype, only one is allowed"

    .line 490
    invoke-direct {v4, v5}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 495
    .end local v0    # "docTypeIndex":I
    :cond_3
    invoke-virtual {p0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 496
    .local v2, "old":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    return-object v2

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "exception":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1, v2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 501
    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddContent(Lorg/jdom/Content;)V
    .locals 3
    .param p1, "c"    # Lorg/jdom/Content;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jdom/ContentList;->parent:Lorg/jdom/Parent;

    iput-object v0, p1, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    .line 121
    iget v0, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom/ContentList;->ensureCapacity(I)V

    .line 122
    iget-object v0, p0, Lorg/jdom/ContentList;->elementData:[Lorg/jdom/Content;

    iget v1, p0, Lorg/jdom/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom/ContentList;->size:I

    aput-object p1, v0, v1

    .line 123
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 119
    return-void
.end method
