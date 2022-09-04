.class public Lorg/jdom/input/SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXHandler.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXHandler.java,v $ $Revision: 1.68 $ $Date: 2004/08/31 06:14:05 $ $Name: jdom_1_0 $"

.field private static final attrNameToTypeMap:Ljava/util/Map;


# instance fields
.field private atRoot:Z

.field private currentElement:Lorg/jdom/Element;

.field private declaredNamespaces:Ljava/util/List;

.field private document:Lorg/jdom/Document;

.field private entityDepth:I

.field private expand:Z

.field private externalEntities:Ljava/util/Map;

.field private factory:Lorg/jdom/JDOMFactory;

.field private ignoringWhite:Z

.field private inCDATA:Z

.field private inDTD:Z

.field private inInternalSubset:Z

.field private internalSubset:Ljava/lang/StringBuffer;

.field private locator:Lorg/xml/sax/Locator;

.field private previousCDATA:Z

.field private suppress:Z

.field private textBuffer:Lorg/jdom/input/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 84
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    .line 158
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "CDATA"

    .line 159
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 158
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ID"

    .line 161
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 160
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "IDREF"

    .line 163
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 162
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "IDREFS"

    .line 165
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 164
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ENTITY"

    .line 167
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 166
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ENTITIES"

    .line 169
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 168
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "NMTOKEN"

    .line 171
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 170
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "NMTOKENS"

    .line 173
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 172
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "NOTATION"

    .line 175
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 174
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    const-string v1, "ENUMERATION"

    .line 177
    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lorg/jdom/JDOMFactory;)V
    .locals 3
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 98
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 101
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 104
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 107
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    .line 110
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    .line 114
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    .line 117
    iput v1, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    .line 127
    new-instance v0, Lorg/jdom/input/TextBuffer;

    invoke-direct {v0}, Lorg/jdom/input/TextBuffer;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    .line 136
    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    .line 204
    :goto_0
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    .line 208
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/jdom/JDOMFactory;->document(Lorg/jdom/Element;)Lorg/jdom/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    .line 197
    return-void

    .line 201
    :cond_0
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    goto :goto_0
.end method

.method private appendExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "publicID"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 892
    if-eqz p1, :cond_0

    .line 893
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 894
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 895
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 897
    :cond_0
    if-eqz p2, :cond_1

    .line 898
    if-nez p1, :cond_2

    .line 899
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " SYSTEM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    :goto_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 905
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 906
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 891
    :cond_1
    return-void

    .line 902
    :cond_2
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static getAttributeType(Ljava/lang/String;)I
    .locals 4
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 937
    sget-object v2, Lorg/jdom/input/SAXHandler;->attrNameToTypeMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 938
    .local v0, "type":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 939
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 940
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    .line 944
    const/16 v1, 0xa

    .line 950
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private transferNamespaces(Lorg/jdom/Element;)V
    .locals 3
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 568
    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 569
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 567
    return-void

    .line 570
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 571
    .local v1, "ns":Lorg/jdom/Namespace;
    invoke-virtual {p1}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 572
    invoke-virtual {p1, v1}, Lorg/jdom/Element;->addNamespaceDeclaration(Lorg/jdom/Namespace;)V

    goto :goto_0
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    const/16 v2, 0x20

    .line 348
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ATTLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 355
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    if-eqz p4, :cond_2

    .line 358
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    :goto_1
    if-eqz p4, :cond_1

    const-string v0, "#FIXED"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 361
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 589
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    if-eq v0, v1, :cond_2

    .line 593
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 596
    :cond_2
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom/input/TextBuffer;->append([CII)V

    goto :goto_0
.end method

.method public comment([CII)V
    .locals 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 824
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 828
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 829
    .local v0, "commentText":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v1, :cond_2

    .line 830
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v2, "  <!--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 831
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 832
    const-string v2, "-->\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 835
    :cond_2
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v1, :cond_3

    .line 837
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 839
    :cond_3
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v3, v0}, Lorg/jdom/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom/Comment;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 385
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 387
    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public endCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 804
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 806
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    goto :goto_0
.end method

.method public endDTD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 724
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 725
    iput-boolean v2, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 721
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 676
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 680
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez v1, :cond_2

    .line 681
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-virtual {v1}, Lorg/jdom/Content;->getParent()Lorg/jdom/Parent;

    move-result-object v0

    .line 682
    .local v0, "p":Lorg/jdom/Parent;
    instance-of v1, v0, Lorg/jdom/Document;

    if-eqz v1, :cond_1

    .line 683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    goto :goto_0

    .line 686
    :cond_1
    check-cast v0, Lorg/jdom/Element;

    .end local v0    # "p":Lorg/jdom/Parent;
    iput-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    goto :goto_0

    .line 690
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    .line 691
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Ill-formed XML document (missing opening tag for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 778
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 779
    iget v0, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    .line 784
    :cond_0
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 777
    :cond_1
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected flushCharacters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->textBuffer:Lorg/jdom/input/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom/input/TextBuffer;->clear()V

    .line 622
    return-void
.end method

.method protected flushCharacters(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    .line 637
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom/CDATA;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 658
    :goto_1
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->previousCDATA:Z

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom/Text;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_1
.end method

.method public getCurrentElement()Lorg/jdom/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Lorg/xml/sax/SAXException;

    .line 919
    const-string v1, "Ill-formed XML document (multiple root elements detected)"

    .line 918
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    return-object v0
.end method

.method public getDocument()Lorg/jdom/Document;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    return v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 611
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {p0, p1, p2, p3}, Lorg/jdom/input/SAXHandler;->characters([CII)V

    .line 609
    :cond_0
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 401
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :goto_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 410
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 411
    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 854
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!NOTATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 428
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 432
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2}, Lorg/jdom/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/ProcessingInstruction;

    move-result-object v2

    .line 435
    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method protected pushElement(Lorg/jdom/Element;)V
    .locals 2
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v0, p1}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 226
    :goto_0
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    .line 218
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    invoke-interface {v0, v1, p1}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 967
    iput-object p1, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    .line 966
    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    .line 259
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0
    .param p1, "ignoringWhite"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lorg/jdom/input/SAXHandler;->ignoringWhite:Z

    .line 287
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 452
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 456
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 795
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inCDATA:Z

    goto :goto_0
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 709
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 711
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v2, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v2, p1, p2, p3}, Lorg/jdom/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/DocType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 712
    iput-boolean v3, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    .line 713
    iput-boolean v3, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    .line 706
    return-void
.end method

.method public startDocument()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom/Document;->setBaseURI(Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v14, :cond_0

    :goto_0
    return-void

    .line 497
    :cond_0
    const/4 v8, 0x0

    .line 499
    .local v8, "element":Lorg/jdom/Element;
    if-eqz p1, :cond_3

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 500
    const-string v12, ""

    .line 503
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 504
    const-string v14, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 505
    .local v13, "split":I
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 508
    .end local v13    # "split":I
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v9

    .line 509
    .local v9, "elementNamespace":Lorg/jdom/Namespace;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p2

    invoke-interface {v14, v0, v9}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom/Namespace;)Lorg/jdom/Element;

    move-result-object v8

    .line 516
    .end local v9    # "elementNamespace":Lorg/jdom/Namespace;
    .end local v12    # "prefix":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 517
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/jdom/input/SAXHandler;->transferNamespaces(Lorg/jdom/Element;)V

    .line 521
    :cond_2
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v11

    .local v11, "len":I
    :goto_2
    if-lt v10, v11, :cond_4

    .line 550
    invoke-virtual/range {p0 .. p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 552
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-eqz v14, :cond_8

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->document:Lorg/jdom/Document;

    invoke-virtual {v14, v8}, Lorg/jdom/Document;->setRootElement(Lorg/jdom/Element;)Lorg/jdom/Document;

    .line 554
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    .line 558
    :goto_3
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/jdom/input/SAXHandler;->currentElement:Lorg/jdom/Element;

    goto :goto_0

    .line 511
    .end local v10    # "i":I
    .end local v11    # "len":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Lorg/jdom/JDOMFactory;->element(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    goto :goto_1

    .line 522
    .restart local v10    # "i":I
    .restart local v11    # "len":I
    :cond_4
    const/4 v7, 0x0

    .line 524
    .local v7, "attribute":Lorg/jdom/Attribute;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "attLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, "attQName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/jdom/input/SAXHandler;->getAttributeType(Ljava/lang/String;)I

    move-result v6

    .line 532
    .local v6, "attType":I
    const-string v14, "xmlns:"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "xmlns"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 521
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 536
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 537
    const/4 v14, 0x0

    const-string v15, ":"

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "attPrefix":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v14

    .line 538
    invoke-static {v4, v14}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v3

    .line 541
    .local v3, "attNs":Lorg/jdom/Namespace;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v2, v15, v6, v3}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom/Namespace;)Lorg/jdom/Attribute;

    move-result-object v7

    .line 547
    .end local v3    # "attNs":Lorg/jdom/Namespace;
    .end local v4    # "attPrefix":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v14, v8, v7}, Lorg/jdom/JDOMFactory;->setAttribute(Lorg/jdom/Element;Lorg/jdom/Attribute;)V

    goto :goto_4

    .line 544
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v2, v15, v6}, Lorg/jdom/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom/Attribute;

    move-result-object v7

    goto :goto_5

    .line 556
    .end local v2    # "attLocalName":Ljava/lang/String;
    .end local v5    # "attQName":Ljava/lang/String;
    .end local v6    # "attType":I
    .end local v7    # "attribute":Lorg/jdom/Attribute;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual/range {p0 .. p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v15

    invoke-interface {v14, v15, v8}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    goto/16 :goto_3
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 729
    iget v4, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    .line 731
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v4, :cond_0

    iget v4, p0, Lorg/jdom/input/SAXHandler;->entityDepth:I

    if-le v4, v6, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    const-string v4, "[dtd]"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 738
    iput-boolean v5, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    goto :goto_0

    .line 743
    :cond_2
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->inDTD:Z

    if-nez v4, :cond_0

    .line 744
    const-string v4, "amp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 745
    const-string v4, "lt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 746
    const-string v4, "gt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 747
    const-string v4, "apos"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 748
    const-string v4, "quot"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 750
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->expand:Z

    if-nez v4, :cond_0

    .line 751
    const/4 v2, 0x0

    .line 752
    .local v2, "pub":Ljava/lang/String;
    const/4 v3, 0x0

    .line 753
    .local v3, "sys":Ljava/lang/String;
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 754
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 755
    aget-object v2, v1, v5

    .line 756
    aget-object v3, v1, v6

    .line 765
    :cond_3
    iget-boolean v4, p0, Lorg/jdom/input/SAXHandler;->atRoot:Z

    if-nez v4, :cond_4

    .line 766
    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->flushCharacters()V

    .line 767
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-interface {v4, p1, v2, v3}, Lorg/jdom/JDOMFactory;->entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/EntityRef;

    move-result-object v0

    .line 770
    .local v0, "entity":Lorg/jdom/EntityRef;
    iget-object v4, p0, Lorg/jdom/input/SAXHandler;->factory:Lorg/jdom/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom/input/SAXHandler;->getCurrentElement()Lorg/jdom/Element;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/jdom/JDOMFactory;->addContent(Lorg/jdom/Parent;Lorg/jdom/Content;)V

    .line 772
    .end local v0    # "entity":Lorg/jdom/EntityRef;
    :cond_4
    iput-boolean v6, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 469
    iget-boolean v1, p0, Lorg/jdom/input/SAXHandler;->suppress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    .line 472
    .local v0, "ns":Lorg/jdom/Namespace;
    iget-object v1, p0, Lorg/jdom/input/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 874
    iget-boolean v0, p0, Lorg/jdom/input/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 877
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    invoke-direct {p0, p2, p3}, Lorg/jdom/input/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, " NDATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 880
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    iget-object v0, p0, Lorg/jdom/input/SAXHandler;->internalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
