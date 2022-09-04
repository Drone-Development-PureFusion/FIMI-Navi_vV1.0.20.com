.class public Lorg/jdom/adapters/XercesDOMAdapter;
.super Lorg/jdom/adapters/AbstractDOMAdapter;
.source "XercesDOMAdapter.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XercesDOMAdapter.java,v $ $Revision: 1.18 $ $Date: 2004/02/06 09:28:31 $ $Name: jdom_1_0 $"

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

.field static class$org$xml$sax$InputSource:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/jdom/adapters/AbstractDOMAdapter;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "class$"    # Ljava/lang/String;

    .prologue
    .line 74
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


# virtual methods
.method public createDocument()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    const-string v1, "org.apache.xerces.dom.DocumentImpl"

    .line 163
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 163
    check-cast v1, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom/JDOMException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " when creating document"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-direct {v1, v2, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDocument(Ljava/io/InputStream;Z)Lorg/w3c/dom/Document;
    .locals 16
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    const-string v12, "org.apache.xerces.parsers.DOMParser"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 98
    .local v8, "parserClass":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 102
    .local v7, "parser":Ljava/lang/Object;
    const-string v13, "setFeature"

    .line 103
    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v12, :cond_1

    sget-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v12, v14, v15

    const/4 v12, 0x1

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v14, v12

    .line 101
    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 105
    .local v10, "setFeature":Ljava/lang/reflect/Method;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "http://xml.org/sax/features/validation"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 106
    new-instance v14, Ljava/lang/Boolean;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 105
    aput-object v14, v12, v13

    .line 104
    invoke-virtual {v10, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "http://xml.org/sax/features/namespaces"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 111
    new-instance v14, Ljava/lang/Boolean;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Ljava/lang/Boolean;-><init>(Z)V

    .line 110
    aput-object v14, v12, v13

    .line 109
    invoke-virtual {v10, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    if-eqz p2, :cond_0

    .line 116
    const-string v13, "setErrorHandler"

    .line 117
    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    if-eqz v12, :cond_2

    sget-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;

    :goto_1
    aput-object v12, v14, v15

    .line 115
    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 119
    .local v9, "setErrorHandler":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Lorg/jdom/input/BuilderErrorHandler;

    invoke-direct {v14}, Lorg/jdom/input/BuilderErrorHandler;-><init>()V

    aput-object v14, v12, v13

    .line 118
    invoke-virtual {v9, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v9    # "setErrorHandler":Ljava/lang/reflect/Method;
    :cond_0
    const-string v13, "parse"

    .line 125
    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    if-eqz v12, :cond_3

    sget-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;

    :goto_2
    aput-object v12, v14, v15

    .line 123
    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 126
    .local v5, "parse":Ljava/lang/reflect/Method;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Lorg/xml/sax/InputSource;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    aput-object v14, v12, v13

    invoke-virtual {v5, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v12, "getDocument"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 130
    .local v3, "getDocument":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    invoke-virtual {v3, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Document;

    .line 132
    .local v1, "doc":Lorg/w3c/dom/Document;
    return-object v1

    .line 103
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "getDocument":Ljava/lang/reflect/Method;
    .end local v5    # "parse":Ljava/lang/reflect/Method;
    .end local v10    # "setFeature":Ljava/lang/reflect/Method;
    :cond_1
    const-string v12, "java.lang.String"

    invoke-static {v12}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 133
    .end local v7    # "parser":Ljava/lang/Object;
    .end local v8    # "parserClass":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v11

    .line 135
    .local v11, "targetException":Ljava/lang/Throwable;
    instance-of v12, v11, Lorg/xml/sax/SAXParseException;

    if-eqz v12, :cond_4

    move-object v6, v11

    .line 137
    check-cast v6, Lorg/xml/sax/SAXParseException;

    .line 138
    .local v6, "parseException":Lorg/xml/sax/SAXParseException;
    new-instance v12, Lorg/jdom/JDOMException;

    new-instance v13, Ljava/lang/StringBuffer;

    const-string v14, "Error on line "

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 140
    const-string v14, " of XML document: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 141
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 140
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 138
    invoke-direct {v12, v13, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 117
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "parseException":Lorg/xml/sax/SAXParseException;
    .end local v11    # "targetException":Ljava/lang/Throwable;
    .restart local v7    # "parser":Ljava/lang/Object;
    .restart local v8    # "parserClass":Ljava/lang/Class;
    .restart local v10    # "setFeature":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_1
    const-string v12, "org.xml.sax.ErrorHandler"

    invoke-static {v12}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$ErrorHandler:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 148
    .end local v7    # "parser":Ljava/lang/Object;
    .end local v8    # "parserClass":Ljava/lang/Class;
    .end local v10    # "setFeature":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    new-instance v12, Lorg/jdom/JDOMException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 150
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 149
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "parser":Ljava/lang/Object;
    .restart local v8    # "parserClass":Ljava/lang/Class;
    .restart local v10    # "setFeature":Ljava/lang/reflect/Method;
    :cond_3
    :try_start_2
    const-string v12, "org.xml.sax.InputSource"

    invoke-static {v12}, Lorg/jdom/adapters/XercesDOMAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/jdom/adapters/XercesDOMAdapter;->class$org$xml$sax$InputSource:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 142
    .end local v7    # "parser":Ljava/lang/Object;
    .end local v8    # "parserClass":Ljava/lang/Class;
    .end local v10    # "setFeature":Ljava/lang/reflect/Method;
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v11    # "targetException":Ljava/lang/Throwable;
    :cond_4
    instance-of v12, v11, Ljava/io/IOException;

    if-eqz v12, :cond_5

    move-object v4, v11

    .line 143
    check-cast v4, Ljava/io/IOException;

    .line 144
    .local v4, "ioException":Ljava/io/IOException;
    throw v4

    .line 146
    .end local v4    # "ioException":Ljava/io/IOException;
    :cond_5
    new-instance v12, Lorg/jdom/JDOMException;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method
