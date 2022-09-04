.class public Lorg/jdom/input/JDOMParseException;
.super Lorg/jdom/JDOMException;
.source "JDOMParseException.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMParseException.java,v $ $Revision: 1.7 $ $Date: 2004/02/17 02:29:24 $ $Name: jdom_1_0 $"


# instance fields
.field private final partialDocument:Lorg/jdom/Document;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "partialDocument"    # Lorg/jdom/Document;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iput-object p3, p0, Lorg/jdom/input/JDOMParseException;->partialDocument:Lorg/jdom/Document;

    .line 107
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 172
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 158
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPartialDocument()Lorg/jdom/Document;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jdom/input/JDOMParseException;->partialDocument:Lorg/jdom/Document;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
