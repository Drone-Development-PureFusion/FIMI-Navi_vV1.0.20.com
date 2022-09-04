.class LJDOMAbout$Info;
.super Ljava/lang/Object;
.source "JDOMAbout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJDOMAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field authors:Ljava/util/List;

.field copyright:Ljava/lang/String;

.field description:Ljava/lang/String;

.field license:Ljava/lang/String;

.field support:Ljava/lang/String;

.field private final this$0:LJDOMAbout;

.field title:Ljava/lang/String;

.field version:Ljava/lang/String;

.field website:Ljava/lang/String;


# direct methods
.method constructor <init>(LJDOMAbout;)V
    .locals 19
    .param p1, "this$0"    # LJDOMAbout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->this$0:LJDOMAbout;

    .line 194
    const-string v2, "META-INF/info.xml"

    .line 196
    .local v2, "INFO_FILENAME":Ljava/lang/String;
    new-instance v5, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v5}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 200
    .local v5, "builder":Lorg/jdom/input/SAXBuilder;
    const/4 v11, 0x0

    .line 201
    .local v11, "jarFile":Ljava/util/jar/JarFile;
    const/16 v16, 0x0

    .line 203
    .local v16, "zipEntry":Ljava/util/zip/ZipEntry;
    const-string v17, "java.class.path"

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "classpath":Ljava/lang/String;
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v17, ";:"

    move-object/from16 v0, v17

    invoke-direct {v15, v6, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v15, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v16, :cond_1

    .line 219
    :cond_0
    if-nez v16, :cond_2

    .line 220
    new-instance v17, Ljava/io/FileNotFoundException;

    const-string v18, "META-INF/info.xml not found; it should be within the JDOM JAR but isn\'t"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 206
    :cond_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, "token":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/util/jar/JarFile;

    invoke-direct {v12, v14}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v11    # "jarFile":Ljava/util/jar/JarFile;
    .local v12, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string v17, "META-INF/info.xml"

    .line 213
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    move-object v11, v12

    .line 208
    .end local v12    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v11    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_0

    .line 225
    .end local v14    # "token":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 228
    .local v9, "in":Ljava/io/InputStream;
    invoke-virtual {v5, v9}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v7

    .line 229
    .local v7, "doc":Lorg/jdom/Document;
    invoke-virtual {v7}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v13

    .line 231
    .local v13, "root":Lorg/jdom/Element;
    const-string/jumbo v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->title:Ljava/lang/String;

    .line 232
    const-string/jumbo v17, "version"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->version:Ljava/lang/String;

    .line 233
    const-string v17, "copyright"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->copyright:Ljava/lang/String;

    .line 234
    const-string v17, "description"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->description:Ljava/lang/String;

    .line 235
    const-string v17, "license"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->license:Ljava/lang/String;

    .line 236
    const-string v17, "support"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->support:Ljava/lang/String;

    .line 237
    const-string/jumbo v17, "web-site"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->website:Ljava/lang/String;

    .line 239
    const-string v17, "author"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 240
    .local v4, "authorElements":Ljava/util/List;
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, LJDOMAbout$Info;->authors:Ljava/util/List;

    .line 241
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 242
    .local v10, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_3

    .line 193
    return-void

    .line 243
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom/Element;

    .line 245
    .local v8, "element":Lorg/jdom/Element;
    new-instance v3, LJDOMAbout$Author;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, LJDOMAbout$Author;-><init>(LJDOMAbout;)V

    .line 246
    .local v3, "author":LJDOMAbout$Author;
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, LJDOMAbout$Author;->name:Ljava/lang/String;

    .line 247
    const-string v17, "e-mail"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/jdom/Element;->getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, LJDOMAbout$Author;->email:Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, LJDOMAbout$Info;->authors:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    .end local v3    # "author":LJDOMAbout$Author;
    .end local v4    # "authorElements":Ljava/util/List;
    .end local v7    # "doc":Lorg/jdom/Document;
    .end local v8    # "element":Lorg/jdom/Element;
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v13    # "root":Lorg/jdom/Element;
    .restart local v14    # "token":Ljava/lang/String;
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .end local v11    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v12    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v17

    move-object v11, v12

    .end local v12    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v11    # "jarFile":Ljava/util/jar/JarFile;
    goto/16 :goto_0
.end method
