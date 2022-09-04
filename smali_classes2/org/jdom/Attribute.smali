.class public Lorg/jdom/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CDATA_TYPE:I = 0x1

.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Attribute.java,v $ $Revision: 1.52 $ $Date: 2004/03/01 23:58:28 $ $Name: jdom_1_0 $"

.field public static final ENTITIES_TYPE:I = 0x6

.field public static final ENTITY_TYPE:I = 0x5

.field public static final ENUMERATED_TYPE:I = 0xa

.field public static final IDREFS_TYPE:I = 0x4

.field public static final IDREF_TYPE:I = 0x3

.field public static final ID_TYPE:I = 0x2

.field public static final NMTOKENS_TYPE:I = 0x8

.field public static final NMTOKEN_TYPE:I = 0x7

.field public static final NOTATION_TYPE:I = 0x9

.field public static final UNDECLARED_TYPE:I


# instance fields
.field protected name:Ljava/lang/String;

.field protected transient namespace:Lorg/jdom/Namespace;

.field protected parent:Ljava/lang/Object;

.field protected type:I

.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v0, 0x0

    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 276
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jdom/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    .line 228
    invoke-virtual {p0, p1}, Lorg/jdom/Attribute;->setName(Ljava/lang/String;)Lorg/jdom/Attribute;

    .line 229
    invoke-virtual {p0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    .line 230
    invoke-virtual {p0, p3}, Lorg/jdom/Attribute;->setAttributeType(I)Lorg/jdom/Attribute;

    .line 231
    invoke-virtual {p0, p4}, Lorg/jdom/Attribute;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom/Namespace;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom/Attribute;->type:I

    .line 204
    invoke-virtual {p0, p1}, Lorg/jdom/Attribute;->setName(Ljava/lang/String;)Lorg/jdom/Attribute;

    .line 205
    invoke-virtual {p0, p2}, Lorg/jdom/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom/Attribute;

    .line 206
    invoke-virtual {p0, p3}, Lorg/jdom/Attribute;->setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;

    .line 203
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 699
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 698
    invoke-static {v0, v1}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 693
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 689
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 683
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, "attribute":Lorg/jdom/Attribute;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jdom/Attribute;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/jdom/Attribute;->parent:Ljava/lang/Object;

    .line 577
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public detach()Lorg/jdom/Attribute;
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getParent()Lorg/jdom/Element;

    move-result-object v0

    .line 322
    .local v0, "p":Lorg/jdom/Element;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jdom/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom/Namespace;)Z

    .line 325
    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 546
    if-eq p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAttributeType()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lorg/jdom/Attribute;->type:I

    return v0
.end method

.method public getBooleanValue()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 665
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "valueTrim":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 668
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    :cond_0
    const/4 v1, 0x1

    .line 675
    :goto_0
    return v1

    .line 671
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 672
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 673
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 674
    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 677
    :cond_3
    new-instance v1, Lorg/jdom/DataConversionException;

    iget-object v2, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v3, "boolean"

    invoke-direct {v1, v2, v3}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/jdom/Attribute;->parent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/jdom/Attribute;->parent:Ljava/lang/Object;

    check-cast v0, Lorg/jdom/Element;

    invoke-virtual {v0}, Lorg/jdom/Content;->getDocument()Lorg/jdom/Document;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDoubleValue()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 650
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "double"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getFloatValue()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 628
    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 632
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "float"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getIntValue()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 594
    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 597
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "int"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getLongValue()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/DataConversionException;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 614
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/DataConversionException;

    iget-object v1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    const-string v2, "long"

    invoke-direct {v0, v1, v2}, Lorg/jdom/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom/Namespace;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom/Element;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/jdom/Attribute;->parent:Ljava/lang/Object;

    check-cast v0, Lorg/jdom/Element;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 392
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAttributeType(I)Lorg/jdom/Attribute;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 511
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 512
    :cond_0
    new-instance v0, Lorg/jdom/IllegalDataException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    const-string v2, "attribute"

    const-string v3, "Illegal attribute type"

    .line 512
    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    iput p1, p0, Lorg/jdom/Attribute;->type:I

    .line 516
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {p1}, Lorg/jdom/Verifier;->checkAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 361
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_0
    iput-object p1, p0, Lorg/jdom/Attribute;->name:Ljava/lang/String;

    .line 364
    return-object p0
.end method

.method public setNamespace(Lorg/jdom/Namespace;)Lorg/jdom/Attribute;
    .locals 4
    .param p1, "namespace"    # Lorg/jdom/Namespace;

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    sget-object p1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    .line 454
    :cond_0
    sget-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq p1, v0, :cond_1

    .line 455
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    new-instance v0, Lorg/jdom/IllegalNameException;

    const-string v1, ""

    const-string v2, "attribute namespace"

    .line 457
    const-string v3, "An attribute namespace without a prefix can only be the NO_NAMESPACE namespace"

    .line 456
    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iput-object p1, p0, Lorg/jdom/Attribute;->namespace:Lorg/jdom/Namespace;

    .line 461
    return-object p0
.end method

.method protected setParent(Lorg/jdom/Element;)Lorg/jdom/Attribute;
    .locals 0
    .param p1, "parent"    # Lorg/jdom/Element;

    .prologue
    .line 310
    iput-object p1, p0, Lorg/jdom/Attribute;->parent:Ljava/lang/Object;

    .line 311
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lorg/jdom/Attribute;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_0
    iput-object p1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    .line 489
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    const-string v1, "[Attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 530
    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lorg/jdom/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 532
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 533
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    return-object v0
.end method
