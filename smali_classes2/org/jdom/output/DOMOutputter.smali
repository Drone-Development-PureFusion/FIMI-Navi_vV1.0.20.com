.class public Lorg/jdom/output/DOMOutputter;
.super Ljava/lang/Object;
.source "DOMOutputter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DOMOutputter.java,v $ $Revision: 1.41 $ $Date: 2004/09/03 06:03:42 $ $Name: jdom_1_0 $"

.field private static final DEFAULT_ADAPTER_CLASS:Ljava/lang/String; = "org.jdom.adapters.XercesDOMAdapter"


# instance fields
.field private adapterClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "adapterClass"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private createDOMDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    .locals 3
    .param p1, "dt"    # Lorg/jdom/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/jdom/output/DOMOutputter;->adapterClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    .line 189
    .local v0, "adapter":Lorg/jdom/adapters/DOMAdapter;
    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 203
    .end local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    :cond_0
    :try_start_1
    const-string v1, "org.jdom.adapters.JAXPDOMAdapter"

    .line 205
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 205
    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    .line 208
    .restart local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 203
    .end local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    :catch_0
    move-exception v1

    .line 222
    :goto_1
    :try_start_2
    const-string v1, "org.jdom.adapters.XercesDOMAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 223
    check-cast v0, Lorg/jdom/adapters/DOMAdapter;

    .line 225
    .restart local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    invoke-interface {v0, p1}, Lorg/jdom/adapters/DOMAdapter;->createDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .end local v0    # "adapter":Lorg/jdom/adapters/DOMAdapter;
    :catch_1
    move-exception v1

    .line 239
    :goto_2
    new-instance v1, Lorg/jdom/JDOMException;

    const-string v2, "No JAXP or default parser available"

    invoke-direct {v1, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    .line 203
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    .line 185
    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method private static getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;
    .locals 3
    .param p0, "ns"    # Lorg/jdom/Namespace;

    .prologue
    .line 416
    const-string v0, "xmlns"

    .line 417
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_0
    return-object v0
.end method

.method private output(Lorg/jdom/Attribute;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Attr;
    .locals 5
    .param p1, "attribute"    # Lorg/jdom/Attribute;
    .param p2, "domDoc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "domAttr":Lorg/w3c/dom/Attr;
    :try_start_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    sget-object v3, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne v2, v3, :cond_0

    .line 395
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 401
    :goto_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 406
    return-object v0

    .line 398
    :cond_0
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-interface {p2, v2, v3}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception outputting Attribute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;
    .locals 30
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "domDoc"    # Lorg/w3c/dom/Document;
    .param p3, "namespaces"    # Lorg/jdom/output/NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 247
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v23

    .line 250
    .local v23, "previouslyDeclaredNamespaces":I
    const/4 v10, 0x0

    .line 251
    .local v10, "domElement":Lorg/w3c/dom/Element;
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v27

    sget-object v28, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 253
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 266
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v19

    .line 267
    .local v19, "ns":Lorg/jdom/Namespace;
    sget-object v27, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 268
    sget-object v27, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 269
    const-string v27, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 270
    :cond_0
    invoke-virtual/range {v19 .. v19}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 271
    .local v22, "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 272
    .local v26, "uri":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 273
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 274
    invoke-static/range {v19 .. v19}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "attrName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 281
    .local v17, "itr":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_4

    .line 293
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 294
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_5

    .line 322
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 323
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_8

    .line 376
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v23

    if-gt v0, v1, :cond_10

    .line 380
    return-object v10

    .line 257
    .end local v17    # "itr":Ljava/util/Iterator;
    .end local v19    # "ns":Lorg/jdom/Namespace;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v27

    .line 258
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v28

    .line 256
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto/16 :goto_0

    .line 282
    .restart local v17    # "itr":Ljava/util/Iterator;
    .restart local v19    # "ns":Lorg/jdom/Namespace;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Namespace;

    .line 283
    .local v3, "additional":Lorg/jdom/Namespace;
    invoke-virtual {v3}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 284
    .restart local v22    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 285
    .restart local v26    # "uri":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 286
    invoke-static {v3}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .restart local v4    # "attrName":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 382
    .end local v3    # "additional":Lorg/jdom/Namespace;
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v10    # "domElement":Lorg/w3c/dom/Element;
    .end local v17    # "itr":Ljava/util/Iterator;
    .end local v19    # "ns":Lorg/jdom/Namespace;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v23    # "previouslyDeclaredNamespaces":I
    .end local v26    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 383
    .local v15, "e":Ljava/lang/Exception;
    new-instance v27, Lorg/jdom/JDOMException;

    new-instance v28, Ljava/lang/StringBuffer;

    const-string v29, "Exception outputting Element "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    .line 383
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v15}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 295
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "domElement":Lorg/w3c/dom/Element;
    .restart local v17    # "itr":Ljava/util/Iterator;
    .restart local v19    # "ns":Lorg/jdom/Namespace;
    .restart local v23    # "previouslyDeclaredNamespaces":I
    :cond_5
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jdom/Attribute;

    .line 296
    .local v5, "attribute":Lorg/jdom/Attribute;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Attribute;Lorg/w3c/dom/Document;)Lorg/w3c/dom/Attr;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 297
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v20

    .line 298
    .local v20, "ns1":Lorg/jdom/Namespace;
    sget-object v27, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 299
    sget-object v27, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 300
    invoke-virtual/range {v20 .. v20}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v22

    .line 301
    .restart local v22    # "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 302
    .restart local v26    # "uri":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 303
    invoke-static/range {v20 .. v20}, Lorg/jdom/output/DOMOutputter;->getXmlnsTagFor(Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .restart local v4    # "attrName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v10, v4, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    .line 309
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v22    # "prefix":Ljava/lang/String;
    .end local v26    # "uri":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v27

    sget-object v28, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 311
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v27

    .line 312
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 311
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 315
    :cond_7
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v27

    .line 316
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v28

    .line 317
    invoke-virtual {v5}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 315
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v10, v0, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 324
    .end local v5    # "attribute":Lorg/jdom/Attribute;
    .end local v20    # "ns1":Lorg/jdom/Namespace;
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 326
    .local v18, "node":Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/Element;

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 327
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/Element;

    move-object v15, v0

    .line 328
    .local v15, "e":Lorg/jdom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 329
    .local v11, "domElt":Lorg/w3c/dom/Element;
    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 331
    .end local v11    # "domElt":Lorg/w3c/dom/Element;
    .end local v15    # "e":Lorg/jdom/Element;
    :cond_9
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 332
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    .line 333
    .local v24, "str":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v14

    .line 334
    .local v14, "domText":Lorg/w3c/dom/Text;
    invoke-interface {v10, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 336
    .end local v14    # "domText":Lorg/w3c/dom/Text;
    .end local v24    # "str":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/CDATA;

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 337
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/CDATA;

    move-object v6, v0

    .line 339
    .local v6, "cdata":Lorg/jdom/CDATA;
    invoke-virtual {v6}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v8

    .line 340
    .local v8, "domCdata":Lorg/w3c/dom/CDATASection;
    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 342
    .end local v6    # "cdata":Lorg/jdom/CDATA;
    .end local v8    # "domCdata":Lorg/w3c/dom/CDATASection;
    :cond_b
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/Text;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 343
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/Text;

    move-object/from16 v25, v0

    .line 345
    .local v25, "text":Lorg/jdom/Text;
    invoke-virtual/range {v25 .. v25}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v14

    .line 346
    .restart local v14    # "domText":Lorg/w3c/dom/Text;
    invoke-interface {v10, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 348
    .end local v14    # "domText":Lorg/w3c/dom/Text;
    .end local v25    # "text":Lorg/jdom/Text;
    :cond_c
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/Comment;

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 349
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/Comment;

    move-object v7, v0

    .line 351
    .local v7, "comment":Lorg/jdom/Comment;
    invoke-virtual {v7}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v9

    .line 352
    .local v9, "domComment":Lorg/w3c/dom/Comment;
    invoke-interface {v10, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 354
    .end local v7    # "comment":Lorg/jdom/Comment;
    .end local v9    # "domComment":Lorg/w3c/dom/Comment;
    :cond_d
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/ProcessingInstruction;

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 356
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/ProcessingInstruction;

    move-object/from16 v21, v0

    .line 359
    .local v21, "pi":Lorg/jdom/ProcessingInstruction;
    invoke-virtual/range {v21 .. v21}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v28

    .line 358
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v13

    .line 360
    .local v13, "domPI":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v10, v13}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 362
    .end local v13    # "domPI":Lorg/w3c/dom/ProcessingInstruction;
    .end local v21    # "pi":Lorg/jdom/ProcessingInstruction;
    :cond_e
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/jdom/EntityRef;

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 363
    move-object/from16 v0, v18

    check-cast v0, Lorg/jdom/EntityRef;

    move-object/from16 v16, v0

    .line 365
    .local v16, "entity":Lorg/jdom/EntityRef;
    invoke-virtual/range {v16 .. v16}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v12

    .line 366
    .local v12, "domEntity":Lorg/w3c/dom/EntityReference;
    invoke-interface {v10, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3

    .line 369
    .end local v12    # "domEntity":Lorg/w3c/dom/EntityReference;
    .end local v16    # "entity":Lorg/jdom/EntityRef;
    :cond_f
    new-instance v27, Lorg/jdom/JDOMException;

    .line 370
    new-instance v28, Ljava/lang/StringBuffer;

    const-string v29, "Element contained content with type:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    .line 370
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 369
    invoke-direct/range {v27 .. v28}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 377
    .end local v18    # "node":Ljava/lang/Object;
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method


# virtual methods
.method public output(Lorg/jdom/Document;)Lorg/w3c/dom/Document;
    .locals 17
    .param p1, "document"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v10, Lorg/jdom/output/NamespaceStack;

    invoke-direct {v10}, Lorg/jdom/output/NamespaceStack;-><init>()V

    .line 123
    .local v10, "namespaces":Lorg/jdom/output/NamespaceStack;
    const/4 v3, 0x0

    .line 124
    .local v3, "domDoc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v6

    .line 127
    .local v6, "dt":Lorg/jdom/DocType;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/jdom/output/DOMOutputter;->createDOMDocument(Lorg/jdom/DocType;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 130
    invoke-virtual/range {p1 .. p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 131
    .local v9, "itr":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 178
    return-object v3

    .line 132
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 134
    .local v11, "node":Ljava/lang/Object;
    instance-of v14, v11, Lorg/jdom/Element;

    if-eqz v14, :cond_3

    .line 135
    move-object v0, v11

    check-cast v0, Lorg/jdom/Element;

    move-object v8, v0

    .line 137
    .local v8, "element":Lorg/jdom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v10}, Lorg/jdom/output/DOMOutputter;->output(Lorg/jdom/Element;Lorg/w3c/dom/Document;Lorg/jdom/output/NamespaceStack;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 139
    .local v4, "domElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    .line 140
    .local v13, "root":Lorg/w3c/dom/Element;
    if-nez v13, :cond_2

    .line 142
    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v4    # "domElement":Lorg/w3c/dom/Element;
    .end local v6    # "dt":Lorg/jdom/DocType;
    .end local v8    # "element":Lorg/jdom/Element;
    .end local v9    # "itr":Ljava/util/Iterator;
    .end local v11    # "node":Ljava/lang/Object;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 175
    .local v7, "e":Ljava/lang/Throwable;
    new-instance v14, Lorg/jdom/JDOMException;

    const-string v15, "Exception outputting Document"

    invoke-direct {v14, v15, v7}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 147
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v4    # "domElement":Lorg/w3c/dom/Element;
    .restart local v6    # "dt":Lorg/jdom/DocType;
    .restart local v8    # "element":Lorg/jdom/Element;
    .restart local v9    # "itr":Ljava/util/Iterator;
    .restart local v11    # "node":Ljava/lang/Object;
    .restart local v13    # "root":Lorg/w3c/dom/Element;
    :cond_2
    :try_start_1
    invoke-interface {v3, v4, v13}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 150
    .end local v4    # "domElement":Lorg/w3c/dom/Element;
    .end local v8    # "element":Lorg/jdom/Element;
    .end local v13    # "root":Lorg/w3c/dom/Element;
    :cond_3
    instance-of v14, v11, Lorg/jdom/Comment;

    if-eqz v14, :cond_4

    .line 151
    move-object v0, v11

    check-cast v0, Lorg/jdom/Comment;

    move-object v1, v0

    .line 153
    .local v1, "comment":Lorg/jdom/Comment;
    invoke-virtual {v1}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v2

    .line 154
    .local v2, "domComment":Lorg/w3c/dom/Comment;
    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 156
    .end local v1    # "comment":Lorg/jdom/Comment;
    .end local v2    # "domComment":Lorg/w3c/dom/Comment;
    :cond_4
    instance-of v14, v11, Lorg/jdom/ProcessingInstruction;

    if-eqz v14, :cond_5

    .line 158
    move-object v0, v11

    check-cast v0, Lorg/jdom/ProcessingInstruction;

    move-object v12, v0

    .line 161
    .local v12, "pi":Lorg/jdom/ProcessingInstruction;
    invoke-virtual {v12}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v15

    .line 160
    invoke-interface {v3, v14, v15}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v5

    .line 162
    .local v5, "domPI":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v3, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 164
    .end local v5    # "domPI":Lorg/w3c/dom/ProcessingInstruction;
    .end local v12    # "pi":Lorg/jdom/ProcessingInstruction;
    :cond_5
    instance-of v14, v11, Lorg/jdom/DocType;

    if-nez v14, :cond_0

    .line 168
    new-instance v14, Lorg/jdom/JDOMException;

    .line 169
    new-instance v15, Ljava/lang/StringBuffer;

    const-string v16, "Document contained top-level content with type:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 169
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 168
    invoke-direct {v14, v15}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
