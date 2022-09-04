.class public Lorg/jdom/transform/JDOMSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/transform/JDOMSource$JDOMInputSource;,
        Lorg/jdom/transform/JDOMSource$DocumentReader;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMSource.java,v $ $Revision: 1.18 $ $Date: 2004/08/31 04:43:48 $ $Name: jdom_1_0 $"

.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://org.jdom.transform.JDOMSource/feature"


# instance fields
.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "source"    # Ljava/util/List;

    .prologue
    .line 150
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 151
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "source"    # Lorg/jdom/Document;

    .prologue
    .line 137
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 138
    invoke-virtual {p0, p1}, Lorg/jdom/transform/JDOMSource;->setDocument(Lorg/jdom/Document;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/jdom/Element;)V
    .locals 2
    .param p1, "source"    # Lorg/jdom/Element;

    .prologue
    .line 163
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "nodes":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {p0, v0}, Lorg/jdom/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    .line 163
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/jdom/Document;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    check-cast v2, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v2}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "src":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 197
    .local v0, "doc":Lorg/jdom/Document;
    instance-of v2, v1, Lorg/jdom/Document;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 198
    check-cast v0, Lorg/jdom/Document;

    .line 200
    :cond_0
    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    check-cast v2, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v2}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 228
    .local v1, "src":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 230
    .local v0, "nodes":Ljava/util/List;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 231
    check-cast v0, Ljava/util/List;

    .line 233
    :cond_0
    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lorg/jdom/transform/JDOMSource$DocumentReader;

    invoke-direct {v0}, Lorg/jdom/transform/JDOMSource$DocumentReader;-><init>()V

    iput-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "source"    # Lorg/jdom/Document;

    .prologue
    .line 182
    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Lorg/jdom/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 181
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNodes(Ljava/util/List;)V
    .locals 1
    .param p1, "source"    # Ljava/util/List;

    .prologue
    .line 215
    new-instance v0, Lorg/jdom/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource$JDOMInputSource;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 214
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 277
    instance-of v1, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 279
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 280
    .local v0, "filter":Lorg/xml/sax/XMLFilter;
    :goto_0
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lorg/jdom/transform/JDOMSource$DocumentReader;

    invoke-direct {v1}, Lorg/jdom/transform/JDOMSource$DocumentReader;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 286
    iput-object p1, p0, Lorg/jdom/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 275
    return-void

    .line 281
    :cond_0
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .end local v0    # "filter":Lorg/xml/sax/XMLFilter;
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .restart local v0    # "filter":Lorg/xml/sax/XMLFilter;
    goto :goto_0

    .line 289
    .end local v0    # "filter":Lorg/xml/sax/XMLFilter;
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
