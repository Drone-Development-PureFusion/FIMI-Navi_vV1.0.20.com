.class public Lorg/jdom/Element;
.super Lorg/jdom/Content;
.source "Element.java"

# interfaces
.implements Lorg/jdom/Parent;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Element.java,v $ $Revision: 1.152 $ $Date: 2004/09/03 06:35:39 $ $Name: jdom_1_0 $"

.field private static final INITIAL_ARRAY_SIZE:I = 0x5


# instance fields
.field protected transient additionalNamespaces:Ljava/util/List;

.field attributes:Lorg/jdom/AttributeList;

.field content:Lorg/jdom/ContentList;

.field protected name:Ljava/lang/String;

.field protected transient namespace:Lorg/jdom/Namespace;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 105
    new-instance v0, Lorg/jdom/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 111
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, ""

    invoke-static {v0, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p2, p3}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 105
    new-instance v0, Lorg/jdom/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 111
    new-instance v0, Lorg/jdom/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 140
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->setName(Ljava/lang/String;)Lorg/jdom/Element;

    .line 141
    invoke-virtual {p0, p2}, Lorg/jdom/Element;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;

    .line 139
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1338
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1337
    invoke-static {v3, v4}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v3

    iput-object v3, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 1340
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->read()I

    move-result v2

    .line 1342
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 1343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 1344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1332
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1346
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1345
    invoke-static {v3, v4}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    .line 1347
    .local v0, "additional":Lorg/jdom/Namespace;
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1311
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1315
    iget-object v3, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v3}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1316
    iget-object v3, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v3}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1318
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1319
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->write(I)V

    .line 1309
    :cond_0
    return-void

    .line 1322
    :cond_1
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1323
    .local v2, "size":I
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->write(I)V

    .line 1324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1325
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Namespace;

    .line 1326
    .local v0, "additional":Lorg/jdom/Namespace;
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1327
    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .prologue
    .line 859
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 860
    return-object p0
.end method

.method public addContent(ILorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 840
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILorg/jdom/Content;)V

    .line 841
    return-object p0
.end method

.method public addContent(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 799
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 825
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->addAll(Ljava/util/Collection;)Z

    .line 826
    return-object p0
.end method

.method public addContent(Lorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 809
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 810
    return-object p0
.end method

.method public addNamespaceDeclaration(Lorg/jdom/Namespace;)V
    .locals 3
    .param p1, "additional"    # Lorg/jdom/Namespace;

    .prologue
    .line 339
    invoke-static {p1, p0}, Lorg/jdom/Verifier;->checkNamespaceCollision(Lorg/jdom/Namespace;Lorg/jdom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 341
    new-instance v1, Lorg/jdom/IllegalAddException;

    invoke-direct {v1, p0, p1, v0}, Lorg/jdom/IllegalAddException;-><init>(Lorg/jdom/Element;Lorg/jdom/Namespace;Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    iget-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v1, :cond_1

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 348
    :cond_1
    iget-object v1, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 1234
    const/4 v5, 0x0

    .line 1236
    .local v5, "element":Lorg/jdom/Element;
    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "element":Lorg/jdom/Element;
    check-cast v5, Lorg/jdom/Element;

    .line 1248
    .restart local v5    # "element":Lorg/jdom/Element;
    new-instance v12, Lorg/jdom/ContentList;

    invoke-direct {v12, v5}, Lorg/jdom/ContentList;-><init>(Lorg/jdom/Parent;)V

    iput-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    .line 1249
    new-instance v12, Lorg/jdom/AttributeList;

    invoke-direct {v12, v5}, Lorg/jdom/AttributeList;-><init>(Lorg/jdom/Element;)V

    iput-object v12, v5, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    .line 1252
    iget-object v12, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    if-eqz v12, :cond_0

    .line 1253
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v12, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v12}, Lorg/jdom/AttributeList;->size()I

    move-result v12

    if-lt v8, v12, :cond_4

    .line 1261
    .end local v8    # "i":I
    :cond_0
    iget-object v12, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v12, :cond_1

    .line 1262
    iget-object v12, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    .line 1263
    .local v1, "additionalSize":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, v5, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 1264
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-lt v8, v1, :cond_5

    .line 1271
    .end local v1    # "additionalSize":I
    .end local v8    # "i":I
    :cond_1
    iget-object v12, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    if-eqz v12, :cond_2

    .line 1272
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    iget-object v12, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12}, Lorg/jdom/ContentList;->size()I

    move-result v12

    if-lt v8, v12, :cond_6

    .line 1298
    .end local v8    # "i":I
    :cond_2
    iget-object v12, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v12, :cond_3

    .line 1300
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v5, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    .line 1301
    iget-object v12, v5, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    iget-object v13, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1304
    :cond_3
    return-object v5

    .line 1254
    .restart local v8    # "i":I
    :cond_4
    iget-object v12, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v12, v8}, Lorg/jdom/AttributeList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1255
    .local v9, "obj":Ljava/lang/Object;
    check-cast v9, Lorg/jdom/Attribute;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/Attribute;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Attribute;

    .line 1256
    .local v2, "attribute":Lorg/jdom/Attribute;
    iget-object v12, v5, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v12, v2}, Lorg/jdom/AttributeList;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1265
    .end local v2    # "attribute":Lorg/jdom/Attribute;
    .restart local v1    # "additionalSize":I
    :cond_5
    iget-object v12, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1266
    .local v0, "additional":Ljava/lang/Object;
    iget-object v12, v5, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1273
    .end local v0    # "additional":Ljava/lang/Object;
    .end local v1    # "additionalSize":I
    :cond_6
    iget-object v12, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v8}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1274
    .restart local v9    # "obj":Ljava/lang/Object;
    instance-of v12, v9, Lorg/jdom/Element;

    if-eqz v12, :cond_8

    .line 1275
    check-cast v9, Lorg/jdom/Element;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/Element;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom/Element;

    .line 1276
    .local v6, "elt":Lorg/jdom/Element;
    iget-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v6}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 1272
    .end local v6    # "elt":Lorg/jdom/Element;
    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1277
    .restart local v9    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v12, v9, Lorg/jdom/CDATA;

    if-eqz v12, :cond_9

    .line 1278
    check-cast v9, Lorg/jdom/CDATA;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/Text;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/CDATA;

    .line 1279
    .local v3, "cdata":Lorg/jdom/CDATA;
    iget-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v3}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1280
    .end local v3    # "cdata":Lorg/jdom/CDATA;
    .restart local v9    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v12, v9, Lorg/jdom/Text;

    if-eqz v12, :cond_a

    .line 1281
    check-cast v9, Lorg/jdom/Text;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/Text;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jdom/Text;

    .line 1282
    .local v11, "text":Lorg/jdom/Text;
    iget-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v11}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1283
    .end local v11    # "text":Lorg/jdom/Text;
    .restart local v9    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v12, v9, Lorg/jdom/Comment;

    if-eqz v12, :cond_b

    .line 1284
    check-cast v9, Lorg/jdom/Comment;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Comment;

    .line 1285
    .local v4, "comment":Lorg/jdom/Comment;
    iget-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v4}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1286
    .end local v4    # "comment":Lorg/jdom/Comment;
    .restart local v9    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v12, v9, Lorg/jdom/ProcessingInstruction;

    if-eqz v12, :cond_c

    .line 1288
    check-cast v9, Lorg/jdom/ProcessingInstruction;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/ProcessingInstruction;->clone()Ljava/lang/Object;

    move-result-object v10

    .line 1287
    check-cast v10, Lorg/jdom/ProcessingInstruction;

    .line 1289
    .local v10, "pi":Lorg/jdom/ProcessingInstruction;
    iget-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v10}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1290
    .end local v10    # "pi":Lorg/jdom/ProcessingInstruction;
    .restart local v9    # "obj":Ljava/lang/Object;
    :cond_c
    instance-of v12, v9, Lorg/jdom/EntityRef;

    if-eqz v12, :cond_7

    .line 1291
    check-cast v9, Lorg/jdom/EntityRef;

    .end local v9    # "obj":Ljava/lang/Object;
    invoke-virtual {v9}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom/EntityRef;

    .line 1292
    .local v7, "entity":Lorg/jdom/EntityRef;
    iget-object v12, v5, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v12, v7}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public cloneContent()Ljava/util/List;
    .locals 5

    .prologue
    .line 864
    invoke-virtual {p0}, Lorg/jdom/Element;->getContentSize()I

    move-result v3

    .line 865
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 866
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 870
    return-object v2

    .line 867
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getContent(I)Lorg/jdom/Content;

    move-result-object v0

    .line 868
    .local v0, "child":Lorg/jdom/Content;
    invoke-virtual {v0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAdditionalNamespaces()Ljava/util/List;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 967
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 981
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 995
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 1010
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 1041
    iget-object v1, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v1, p1, p2}, Lorg/jdom/AttributeList;->get(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    .line 1042
    .local v0, "attribute":Lorg/jdom/Attribute;
    if-nez v0, :cond_0

    .end local p3    # "def":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "def":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1481
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1463
    iget-object v2, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v3, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v3, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v2, v3}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    .line 1464
    .local v0, "elements":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1465
    .local v1, "i":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 1468
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 521
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 522
    const/4 v1, 0x0

    .line 524
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildText(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 571
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 572
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 573
    const/4 v1, 0x0

    .line 575
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextNormalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 555
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 556
    const/4 v1, 0x0

    .line 558
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextNormalize(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 605
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 606
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 607
    const/4 v1, 0x0

    .line 609
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    .line 538
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 539
    const/4 v1, 0x0

    .line 541
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildTextTrim(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 588
    invoke-virtual {p0, p1, p2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v0

    .line 589
    .local v0, "child":Lorg/jdom/Element;
    if-nez v0, :cond_0

    .line 590
    const/4 v1, 0x0

    .line 592
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jdom/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildren()Ljava/util/List;
    .locals 2

    .prologue
    .line 1408
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1}, Lorg/jdom/filter/ElementFilter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1428
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1449
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v1, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v0, v1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    return-object v0
.end method

.method public getContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 1
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 675
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lorg/jdom/Content;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 874
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    return-object v0
.end method

.method public getContentSize()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1358
    new-instance v0, Lorg/jdom/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom/filter/Filter;)Ljava/util/Iterator;
    .locals 2
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 1371
    new-instance v0, Lorg/jdom/FilterIterator;

    new-instance v1, Lorg/jdom/DescendantIterator;

    invoke-direct {v1, p0}, Lorg/jdom/DescendantIterator;-><init>(Lorg/jdom/Parent;)V

    invoke-direct {v0, v1, p1}, Lorg/jdom/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/jdom/filter/Filter;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom/Namespace;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 270
    if-nez p1, :cond_1

    move-object v1, v2

    .line 299
    :cond_0
    :goto_0
    return-object v1

    .line 274
    :cond_1
    const-string v3, "xml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    goto :goto_0

    .line 285
    :cond_3
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 295
    .end local v0    # "i":I
    :cond_4
    iget-object v3, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    instance-of v3, v3, Lorg/jdom/Element;

    if-eqz v3, :cond_6

    .line 296
    iget-object v2, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    check-cast v2, Lorg/jdom/Element;

    invoke-virtual {v2, p1}, Lorg/jdom/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v1

    goto :goto_0

    .line 287
    .restart local v0    # "i":I
    :cond_5
    iget-object v3, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 288
    .local v1, "ns":Lorg/jdom/Namespace;
    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ns":Lorg/jdom/Namespace;
    :cond_6
    move-object v1, v2

    .line 299
    goto :goto_0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 318
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 451
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 452
    const-string v4, ""

    .line 481
    :goto_0
    return-object v4

    .line 456
    :cond_0
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 457
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 458
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jdom/Text;

    if-eqz v4, :cond_1

    .line 459
    check-cast v2, Lorg/jdom/Text;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 461
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 466
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 467
    .local v3, "textContent":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 469
    .local v0, "hasText":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4}, Lorg/jdom/ContentList;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 477
    if-nez v0, :cond_5

    .line 478
    const-string v4, ""

    goto :goto_0

    .line 470
    :cond_3
    iget-object v4, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v4, v1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 471
    .restart local v2    # "obj":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jdom/Text;

    if-eqz v4, :cond_4

    .line 472
    check-cast v2, Lorg/jdom/Text;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const/4 v0, 0x1

    .line 469
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 481
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 400
    .local v2, "itr":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 406
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 401
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Content;

    .line 402
    .local v1, "child":Lorg/jdom/Content;
    instance-of v3, v1, Lorg/jdom/Element;

    if-nez v3, :cond_2

    instance-of v3, v1, Lorg/jdom/Text;

    if-eqz v3, :cond_0

    .line 403
    :cond_2
    invoke-virtual {v1}, Lorg/jdom/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public indexOf(Lorg/jdom/Content;)I
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 425
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAncestor(Lorg/jdom/Element;)Z
    .locals 2
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 932
    invoke-virtual {p1}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 933
    .local v0, "p":Lorg/jdom/Parent;
    :goto_0
    instance-of v1, v0, Lorg/jdom/Element;

    if-nez v1, :cond_0

    .line 939
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 934
    :cond_0
    if-ne v0, p0, :cond_1

    .line 935
    const/4 v1, 0x1

    goto :goto_1

    .line 937
    :cond_1
    check-cast v0, Lorg/jdom/Element;

    .end local v0    # "p":Lorg/jdom/Parent;
    invoke-virtual {v0}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .restart local v0    # "p":Lorg/jdom/Parent;
    goto :goto_0
.end method

.method public isRootElement()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/jdom/Content;->parent:Lorg/jdom/Parent;

    instance-of v0, v0, Lorg/jdom/Document;

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1162
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1177
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/AttributeList;->remove(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/jdom/Attribute;)Z
    .locals 1
    .param p1, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 1189
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1495
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeChild(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1510
    iget-object v2, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v3, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v3, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v2, v3}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v1

    .line 1511
    .local v1, "old":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1512
    .local v0, "i":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1513
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1514
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1515
    const/4 v2, 0x1

    .line 1518
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeChildren(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1532
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom/Element;->removeChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeChildren(Ljava/lang/String;Lorg/jdom/Namespace;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1547
    const/4 v0, 0x0

    .line 1549
    .local v0, "deletedSome":Z
    iget-object v3, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    new-instance v4, Lorg/jdom/filter/ElementFilter;

    invoke-direct {v4, p1, p2}, Lorg/jdom/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {v3, v4}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v2

    .line 1550
    .local v2, "old":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1551
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1557
    return v0

    .line 1552
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1553
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1554
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeContent()Ljava/util/List;
    .locals 2

    .prologue
    .line 684
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 685
    .local v0, "old":Ljava/util/List;
    iget-object v1, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->clear()V

    .line 686
    return-object v0
.end method

.method public removeContent(Lorg/jdom/filter/Filter;)Ljava/util/List;
    .locals 4
    .param p1, "filter"    # Lorg/jdom/filter/Filter;

    .prologue
    .line 696
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v2, "old":Ljava/util/List;
    iget-object v3, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v3, p1}, Lorg/jdom/ContentList;->getView(Lorg/jdom/filter/Filter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 698
    .local v1, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    return-object v2

    .line 699
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    .line 700
    .local v0, "child":Lorg/jdom/Content;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public removeContent(I)Lorg/jdom/Content;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Content;

    return-object v0
.end method

.method public removeContent(Lorg/jdom/Content;)Z
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 883
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNamespaceDeclaration(Lorg/jdom/Namespace;)V
    .locals 1
    .param p1, "additionalNamespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 362
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/jdom/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1109
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 1132
    new-instance v0, Lorg/jdom/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Lorg/jdom/Attribute;)Lorg/jdom/Element;
    .locals 1
    .param p1, "attribute"    # Lorg/jdom/Attribute;

    .prologue
    .line 1148
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->add(Ljava/lang/Object;)Z

    .line 1149
    return-object p0
.end method

.method public setAttributes(Ljava/util/List;)Lorg/jdom/Element;
    .locals 1
    .param p1, "newAttributes"    # Ljava/util/List;

    .prologue
    .line 1089
    iget-object v0, p0, Lorg/jdom/Element;->attributes:Lorg/jdom/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom/AttributeList;->clearAndSet(Ljava/util/Collection;)V

    .line 1090
    return-object p0
.end method

.method public setContent(ILorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom/Content;

    .prologue
    .line 762
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 763
    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom/Element;
    .locals 1
    .param p1, "newContent"    # Ljava/util/Collection;

    .prologue
    .line 742
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->clearAndSet(Ljava/util/Collection;)V

    .line 743
    return-object p0
.end method

.method public setContent(Lorg/jdom/Content;)Lorg/jdom/Element;
    .locals 1
    .param p1, "child"    # Lorg/jdom/Content;

    .prologue
    .line 918
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 919
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 920
    return-object p0
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom/Parent;
    .locals 1
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .prologue
    .line 783
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 785
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p1}, Lorg/jdom/Verifier;->checkElementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "element"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iput-object p1, p0, Lorg/jdom/Element;->name:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Element;
    .locals 0
    .param p1, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 233
    :cond_0
    iput-object p1, p0, Lorg/jdom/Element;->namespace:Lorg/jdom/Namespace;

    .line 234
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-object v0, p0, Lorg/jdom/Element;->content:Lorg/jdom/ContentList;

    invoke-virtual {v0}, Lorg/jdom/ContentList;->clear()V

    .line 629
    if-eqz p1, :cond_0

    .line 630
    new-instance v0, Lorg/jdom/Text;

    invoke-direct {v0, p1}, Lorg/jdom/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->addContent(Lorg/jdom/Content;)Lorg/jdom/Element;

    .line 633
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1205
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1206
    const-string v3, "[Element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1207
    invoke-virtual {p0}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1209
    .local v1, "stringForm":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "nsuri":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1212
    const-string v2, " [Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1214
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1216
    :cond_0
    const-string v2, "/>]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1218
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
