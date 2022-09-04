.class public Lorg/jdom/input/SAXBuilder;
.super Ljava/lang/Object;
.source "SAXBuilder.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: SAXBuilder.java,v $ $Revision: 1.89 $ $Date: 2004/09/03 18:24:28 $ $Name: jdom_1_0 $"

.field private static final DEFAULT_SAX_DRIVER:Ljava/lang/String; = "org.apache.xerces.parsers.SAXParser"

.field static class$java$util$Map:Ljava/lang/Class;


# instance fields
.field private expand:Z

.field private factory:Lorg/jdom/JDOMFactory;

.field private features:Ljava/util/HashMap;

.field private ignoringWhite:Z

.field private properties:Ljava/util/HashMap;

.field private reuseParser:Z

.field private saxDTDHandler:Lorg/xml/sax/DTDHandler;

.field private saxDriverClass:Ljava/lang/String;

.field private saxEntityResolver:Lorg/xml/sax/EntityResolver;

.field private saxErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private saxParser:Lorg/xml/sax/XMLReader;

.field private saxXMLFilter:Lorg/xml/sax/XMLFilter;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom/input/SAXBuilder;-><init>(Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "saxDriverClass"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom/input/SAXBuilder;-><init>(Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "saxDriverClass"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    .line 111
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 114
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 117
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 120
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 123
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 138
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    .line 141
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 187
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    .line 188
    iput-boolean p2, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    .line 186
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "validate"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    .line 111
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 114
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 117
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 120
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 123
    new-instance v0, Lorg/jdom/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 138
    iput-boolean v2, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    .line 141
    iput-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 162
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    .line 161
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "class$"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "forName":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2f

    .line 924
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 925
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 928
    .local v4, "path":Ljava/lang/String;
    sget-char v5, Ljava/io/File;->separatorChar:C

    if-eq v5, v6, :cond_0

    .line 929
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 933
    :cond_0
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 934
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 938
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 939
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_3

    .line 966
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 967
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    :cond_2
    new-instance v5, Ljava/net/URL;

    const-string v6, "file"

    const-string v7, ""

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 940
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 941
    .local v1, "c":C
    const/16 v5, 0x20

    if-ne v1, v5, :cond_4

    .line 942
    const-string v5, "%20"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 939
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    :cond_4
    const/16 v5, 0x23

    if-ne v1, v5, :cond_5

    .line 944
    const-string v5, "%23"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 945
    :cond_5
    const/16 v5, 0x25

    if-ne v1, v5, :cond_6

    .line 946
    const-string v5, "%25"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 947
    :cond_6
    const/16 v5, 0x26

    if-ne v1, v5, :cond_7

    .line 948
    const-string v5, "%26"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 949
    :cond_7
    const/16 v5, 0x3b

    if-ne v1, v5, :cond_8

    .line 950
    const-string v5, "%3B"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 951
    :cond_8
    const/16 v5, 0x3c

    if-ne v1, v5, :cond_9

    .line 952
    const-string v5, "%3C"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 953
    :cond_9
    const/16 v5, 0x3d

    if-ne v1, v5, :cond_a

    .line 954
    const-string v5, "%3D"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 955
    :cond_a
    const/16 v5, 0x3e

    if-ne v1, v5, :cond_b

    .line 956
    const-string v5, "%3E"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 957
    :cond_b
    const/16 v5, 0x3f

    if-ne v1, v5, :cond_c

    .line 958
    const-string v5, "%3F"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 959
    :cond_c
    const/16 v5, 0x7e

    if-ne v1, v5, :cond_d

    .line 960
    const-string v5, "%7E"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 962
    :cond_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 726
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 724
    return-void

    .line 729
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/JDOMException;

    .line 730
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " feature not supported for SAX driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :catch_1
    move-exception v0

    new-instance v0, Lorg/jdom/JDOMException;

    .line 733
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " feature not recognized for SAX driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 745
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 743
    return-void

    .line 748
    :catch_0
    move-exception v0

    new-instance v0, Lorg/jdom/JDOMException;

    .line 749
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " property not supported for SAX driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :catch_1
    move-exception v0

    new-instance v0, Lorg/jdom/JDOMException;

    .line 752
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " property not recognized for SAX driver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-direct {v0, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    .locals 8
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "coreFeatures"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 667
    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 668
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 675
    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 676
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 681
    if-eqz p2, :cond_1

    .line 685
    :try_start_0
    const-string v4, "http://xml.org/sax/features/validation"

    .line 686
    iget-boolean v5, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    const-string v6, "Validation"

    .line 684
    invoke-direct {p0, p1, v4, v5, v6}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_0
    const-string v4, "http://xml.org/sax/features/namespaces"

    .line 698
    const-string v5, "Namespaces"

    .line 696
    invoke-direct {p0, p1, v4, v7, v5}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    .line 700
    const-string v4, "http://xml.org/sax/features/namespace-prefixes"

    .line 701
    const-string v5, "Namespace prefixes"

    .line 699
    invoke-direct {p0, p1, v4, v7, v5}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    .line 711
    :cond_1
    :try_start_1
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iget-boolean v5, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    if-eq v4, v5, :cond_2

    .line 713
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    iget-boolean v5, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    :cond_2
    :goto_2
    return-void

    .line 669
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 670
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 671
    .local v3, "value":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, p1, v2, v4, v2}, Lorg/jdom/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 678
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4, v2}, Lorg/jdom/input/SAXBuilder;->internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 687
    .end local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Lorg/jdom/JDOMException;
    iget-boolean v4, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    if-eqz v4, :cond_0

    .line 692
    throw v0

    .end local v0    # "e":Lorg/jdom/JDOMException;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 711
    :catch_2
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public build(Ljava/io/File;)Lorg/jdom/Document;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    :try_start_0
    invoke-static {p1}, Lorg/jdom/input/SAXBuilder;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v1

    .line 789
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {p0, v1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom/Document;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 790
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Lorg/jdom/JDOMException;

    const-string v3, "Error in building"

    invoke-direct {v2, v3, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public build(Ljava/io/InputStream;)Lorg/jdom/Document;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 830
    .local v0, "src":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v1

    return-object v1
.end method

.method public build(Ljava/io/Reader;)Lorg/jdom/Document;
    .locals 1
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom/Document;
    .locals 2
    .param p1, "characterStream"    # Ljava/io/Reader;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 874
    .local v0, "src":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v1

    return-object v1
.end method

.method public build(Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/net/URL;)Lorg/jdom/Document;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "systemID":Ljava/lang/String;
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/jdom/input/SAXBuilder;->build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;

    move-result-object v1

    return-object v1
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom/Document;
    .locals 9
    .param p1, "in"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 416
    .local v0, "contentHandler":Lorg/jdom/input/SAXHandler;
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom/input/SAXBuilder;->createContentHandler()Lorg/jdom/input/SAXHandler;

    move-result-object v0

    .line 419
    invoke-virtual {p0, v0}, Lorg/jdom/input/SAXBuilder;->configureContentHandler(Lorg/jdom/input/SAXHandler;)V

    .line 421
    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 422
    .local v3, "parser":Lorg/xml/sax/XMLReader;
    if-nez v3, :cond_3

    .line 424
    invoke-virtual {p0}, Lorg/jdom/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 427
    iget-object v6, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    if-eqz v6, :cond_0

    .line 429
    iget-object v4, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 430
    .local v4, "root":Lorg/xml/sax/XMLFilter;
    :goto_0
    invoke-interface {v4}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v6

    instance-of v6, v6, Lorg/xml/sax/XMLFilter;

    if-nez v6, :cond_2

    .line 433
    invoke-interface {v4, v3}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 436
    iget-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 440
    .end local v4    # "root":Lorg/xml/sax/XMLFilter;
    :cond_0
    invoke-virtual {p0, v3, v0}, Lorg/jdom/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V

    .line 442
    iget-boolean v6, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 443
    iput-object v3, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 453
    :cond_1
    :goto_1
    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 455
    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v6

    .line 480
    const/4 v0, 0x0

    .line 455
    return-object v6

    .line 431
    .restart local v4    # "root":Lorg/xml/sax/XMLFilter;
    :cond_2
    invoke-interface {v4}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .end local v4    # "root":Lorg/xml/sax/XMLFilter;
    check-cast v4, Lorg/xml/sax/XMLFilter;

    .restart local v4    # "root":Lorg/xml/sax/XMLFilter;
    goto :goto_0

    .line 449
    .end local v4    # "root":Lorg/xml/sax/XMLFilter;
    :cond_3
    invoke-virtual {p0, v3, v0}, Lorg/jdom/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 457
    .end local v3    # "parser":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Lorg/xml/sax/SAXParseException;
    :try_start_1
    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v1

    .line 459
    .local v1, "doc":Lorg/jdom/Document;
    invoke-virtual {v1}, Lorg/jdom/Document;->hasRootElement()Z

    move-result v6

    if-nez v6, :cond_4

    .line 460
    const/4 v1, 0x0

    .line 463
    :cond_4
    invoke-virtual {v2}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "systemId":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 465
    new-instance v6, Lorg/jdom/input/JDOMParseException;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Error on line "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " of document "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 465
    invoke-direct {v6, v7, v2, v1}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v1    # "doc":Lorg/jdom/Document;
    .end local v2    # "e":Lorg/xml/sax/SAXParseException;
    .end local v5    # "systemId":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 480
    const/4 v0, 0x0

    .line 416
    throw v6

    .line 468
    .restart local v1    # "doc":Lorg/jdom/Document;
    .restart local v2    # "e":Lorg/xml/sax/SAXParseException;
    .restart local v5    # "systemId":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v6, Lorg/jdom/input/JDOMParseException;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Error on line "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 468
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v1}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v6

    .line 472
    .end local v1    # "doc":Lorg/jdom/Document;
    .end local v2    # "e":Lorg/xml/sax/SAXParseException;
    .end local v5    # "systemId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 473
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v6, Lorg/jdom/input/JDOMParseException;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Error in building: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 473
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 474
    invoke-virtual {v0}, Lorg/jdom/input/SAXHandler;->getDocument()Lorg/jdom/Document;

    move-result-object v8

    .line 473
    invoke-direct {v6, v7, v2, v8}, Lorg/jdom/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom/Document;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected configureContentHandler(Lorg/jdom/input/SAXHandler;)V
    .locals 1
    .param p1, "contentHandler"    # Lorg/jdom/input/SAXHandler;

    .prologue
    .line 504
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setExpandEntities(Z)V

    .line 505
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    invoke-virtual {p1, v0}, Lorg/jdom/input/SAXHandler;->setIgnoringElementContentWhitespace(Z)V

    .line 502
    return-void
.end method

.method protected configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom/input/SAXHandler;)V
    .locals 2
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "contentHandler"    # Lorg/jdom/input/SAXHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 607
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 611
    :cond_0
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v1, :cond_3

    .line 612
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 617
    :goto_0
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_4

    .line 618
    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 624
    :goto_1
    const/4 v0, 0x0

    .line 625
    .local v0, "lexicalReporting":Z
    :try_start_0
    const-string v1, "http://xml.org/sax/handlers/LexicalHandler"

    .line 626
    invoke-interface {p1, v1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 628
    const/4 v0, 0x1

    .line 636
    :goto_2
    if-nez v0, :cond_1

    .line 639
    :try_start_1
    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    .line 638
    invoke-interface {p1, v1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 641
    const/4 v0, 0x1

    .line 650
    :cond_1
    :goto_3
    iget-boolean v1, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    if-nez v1, :cond_2

    .line 653
    :try_start_2
    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    .line 652
    invoke-interface {p1, v1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 600
    :cond_2
    :goto_4
    return-void

    .line 614
    .end local v0    # "lexicalReporting":Z
    :cond_3
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    goto :goto_0

    .line 620
    :cond_4
    new-instance v1, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v1}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_1

    .line 651
    .restart local v0    # "lexicalReporting":Z
    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    .line 637
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    .line 625
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method protected createContentHandler()Lorg/jdom/input/SAXHandler;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Lorg/jdom/input/SAXHandler;

    iget-object v1, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    invoke-direct {v0, v1}, Lorg/jdom/input/SAXHandler;-><init>(Lorg/jdom/JDOMFactory;)V

    .line 491
    .local v0, "contentHandler":Lorg/jdom/input/SAXHandler;
    return-object v0
.end method

.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 521
    const/4 v4, 0x0

    .line 522
    .local v4, "parser":Lorg/xml/sax/XMLReader;
    iget-object v5, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 524
    :try_start_0
    iget-object v5, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    invoke-static {v5}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 528
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    if-nez v4, :cond_0

    .line 572
    :try_start_1
    const-string v5, "org.apache.xerces.parsers.SAXParser"

    invoke-static {v5}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 575
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    .line 578
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4

    .line 586
    :cond_0
    return-object v4

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Lorg/jdom/JDOMException;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Could not load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 538
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :cond_1
    :try_start_2
    const-string v5, "org.jdom.input.JAXPParserFactory"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 544
    .local v3, "factoryClass":Ljava/lang/Class;
    const-string v6, "createParser"

    .line 545
    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const/4 v8, 0x1

    sget-object v5, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    if-eqz v5, :cond_2

    sget-object v5, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    :goto_1
    aput-object v5, v7, v8

    const/4 v8, 0x2

    sget-object v5, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    if-eqz v5, :cond_3

    sget-object v5, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    :goto_2
    aput-object v5, v7, v8

    .line 544
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 548
    .local v1, "createParser":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 549
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    iget-boolean v9, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 550
    iget-object v8, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 549
    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 550
    iget-object v8, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 549
    aput-object v8, v6, v7

    .line 548
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/xml/sax/XMLReader;

    move-object v4, v0

    .line 553
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/jdom/input/SAXBuilder;->setFeaturesAndProperties(Lorg/xml/sax/XMLReader;Z)V
    :try_end_2
    .catch Lorg/jdom/JDOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 555
    .end local v1    # "createParser":Ljava/lang/reflect/Method;
    .end local v3    # "factoryClass":Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 556
    .local v2, "e":Lorg/jdom/JDOMException;
    throw v2

    .line 545
    .end local v2    # "e":Lorg/jdom/JDOMException;
    .restart local v3    # "factoryClass":Ljava/lang/Class;
    :cond_2
    :try_start_3
    const-string v5, "java.util.Map"

    invoke-static {v5}, Lorg/jdom/input/SAXBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;

    goto :goto_1

    .line 538
    .end local v3    # "factoryClass":Ljava/lang/Class;
    :catch_2
    move-exception v5

    goto/16 :goto_0

    .line 545
    .restart local v3    # "factoryClass":Ljava/lang/Class;
    :cond_3
    const-string v5, "java.util.Map"

    invoke-static {v5}, Lorg/jdom/input/SAXBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/jdom/input/SAXBuilder;->class$java$util$Map:Ljava/lang/Class;
    :try_end_3
    .catch Lorg/jdom/JDOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 538
    .end local v3    # "factoryClass":Ljava/lang/Class;
    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 580
    :catch_4
    move-exception v2

    .line 581
    .local v2, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Lorg/jdom/JDOMException;

    .line 582
    const-string v6, "Could not load default SAX parser: org.apache.xerces.parsers.SAXParser"

    .line 581
    invoke-direct {v5, v6, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDriverClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxDriverClass:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .prologue
    .line 981
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom/JDOMFactory;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    return v0
.end method

.method public getReuseParser()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    return v0
.end method

.method public getValidation()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    return v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 287
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 286
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 269
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 268
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 250
    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .prologue
    .line 1008
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->expand:Z

    .line 1007
    return-void
.end method

.method public setFactory(Lorg/jdom/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom/JDOMFactory;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->factory:Lorg/jdom/JDOMFactory;

    .line 214
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 379
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->features:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 0
    .param p1, "ignoringWhite"    # Z

    .prologue
    .line 331
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->ignoringWhite:Z

    .line 330
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 399
    iget-object v0, p0, Lorg/jdom/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setReuseParser(Z)V
    .locals 1
    .param p1, "reuseParser"    # Z

    .prologue
    .line 358
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->reuseParser:Z

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/input/SAXBuilder;->saxParser:Lorg/xml/sax/XMLReader;

    .line 357
    return-void
.end method

.method public setValidation(Z)V
    .locals 0
    .param p1, "validate"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lorg/jdom/input/SAXBuilder;->validate:Z

    .line 233
    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 0
    .param p1, "xmlFilter"    # Lorg/xml/sax/XMLFilter;

    .prologue
    .line 305
    iput-object p1, p0, Lorg/jdom/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 304
    return-void
.end method
