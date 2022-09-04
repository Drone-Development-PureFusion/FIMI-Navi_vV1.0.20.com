.class Lorg/jdom/input/JAXPParserFactory;
.super Ljava/lang/Object;
.source "JAXPParserFactory.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JAXPParserFactory.java,v $ $Revision: 1.5 $ $Date: 2004/02/27 21:08:47 $ $Name: jdom_1_0 $"

.field private static final JAXP_SCHEMA_LANGUAGE_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field private static final JAXP_SCHEMA_LOCATION_PROPERTY:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser(ZLjava/util/Map;Ljava/util/Map;)Lorg/xml/sax/XMLReader;
    .locals 5
    .param p0, "validating"    # Z
    .param p1, "features"    # Ljava/util/Map;
    .param p2, "properties"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 125
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 126
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 127
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 138
    :try_start_2
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-static {v2, p2, v3}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    .line 139
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-static {v2, p2, v3}, Lorg/jdom/input/JAXPParserFactory;->setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    return-object v3

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "Could not allocate JAXP SAX Parser"

    invoke-direct {v3, v4, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/jdom/JDOMException;

    const-string v4, "Could not allocate JAXP SAX Parser"

    invoke-direct {v3, v4, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static setProperty(Ljavax/xml/parsers/SAXParser;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p0, "parser"    # Ljavax/xml/parsers/SAXParser;
    .param p1, "properties"    # Ljava/util/Map;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljavax/xml/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :cond_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/JDOMException;

    .line 169
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " property not supported for JAXP parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :catch_1
    move-exception v0

    new-instance v0, Lorg/jdom/JDOMException;

    .line 174
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " property not recognized for JAXP parser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
