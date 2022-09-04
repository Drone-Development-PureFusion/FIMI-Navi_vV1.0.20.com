.class public Lorg/jdom/transform/XSLTransformer;
.super Ljava/lang/Object;
.source "XSLTransformer.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XSLTransformer.java,v $ $Revision: 1.2 $ $Date: 2004/02/06 09:28:32 $ $Name: jdom_1_0 $"


# instance fields
.field private templates:Ljavax/xml/transform/Templates;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "stylesheet"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "stylesheetSystemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 140
    return-void
.end method

.method private constructor <init>(Ljavax/xml/transform/Source;)V
    .locals 3
    .param p1, "stylesheet"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 127
    invoke-virtual {v1, p1}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v1

    .line 126
    iput-object v1, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/jdom/transform/XSLTransformException;

    const-string v2, "Could not construct XSLTransformer"

    invoke-direct {v1, v2, v0}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public constructor <init>(Lorg/jdom/Document;)V
    .locals 1
    .param p1, "stylesheet"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v0, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Lorg/jdom/Document;)V

    invoke-direct {p0, v0}, Lorg/jdom/transform/XSLTransformer;-><init>(Ljavax/xml/transform/Source;)V

    .line 200
    return-void
.end method


# virtual methods
.method public transform(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "inputNodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v2, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v2, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Ljava/util/List;)V

    .line 213
    .local v2, "source":Lorg/jdom/transform/JDOMSource;
    new-instance v1, Lorg/jdom/transform/JDOMResult;

    invoke-direct {v1}, Lorg/jdom/transform/JDOMResult;-><init>()V

    .line 214
    .local v1, "result":Lorg/jdom/transform/JDOMResult;
    :try_start_0
    iget-object v3, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v3}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 216
    invoke-virtual {v1}, Lorg/jdom/transform/JDOMResult;->getResult()Ljava/util/List;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/jdom/transform/XSLTransformException;

    const-string v4, "Could not perform transformation"

    invoke-direct {v3, v4, v0}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public transform(Lorg/jdom/Document;)Lorg/jdom/Document;
    .locals 5
    .param p1, "inputDoc"    # Lorg/jdom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/transform/XSLTransformException;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v2, Lorg/jdom/transform/JDOMSource;

    invoke-direct {v2, p1}, Lorg/jdom/transform/JDOMSource;-><init>(Lorg/jdom/Document;)V

    .line 232
    .local v2, "source":Lorg/jdom/transform/JDOMSource;
    new-instance v1, Lorg/jdom/transform/JDOMResult;

    invoke-direct {v1}, Lorg/jdom/transform/JDOMResult;-><init>()V

    .line 233
    .local v1, "result":Lorg/jdom/transform/JDOMResult;
    :try_start_0
    iget-object v3, p0, Lorg/jdom/transform/XSLTransformer;->templates:Ljavax/xml/transform/Templates;

    invoke-interface {v3}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 235
    invoke-virtual {v1}, Lorg/jdom/transform/JDOMResult;->getDocument()Lorg/jdom/Document;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/jdom/transform/XSLTransformException;

    const-string v4, "Could not perform transformation"

    invoke-direct {v3, v4, v0}, Lorg/jdom/transform/XSLTransformException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
