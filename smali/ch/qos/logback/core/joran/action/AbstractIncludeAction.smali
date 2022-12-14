.class public abstract Lch/qos/logback/core/joran/action/AbstractIncludeAction;
.super Lch/qos/logback/core/joran/action/Action;


# static fields
.field private static final FILE_ATTR:Ljava/lang/String; = "file"

.field private static final OPTIONAL_ATTR:Ljava/lang/String; = "optional"

.field private static final RESOURCE_ATTR:Ljava/lang/String; = "resource"

.field private static final URL_ATTR:Ljava/lang/String; = "url"


# instance fields
.field private attributeInUse:Ljava/lang/String;

.field private optional:Z

.field private urlInUse:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method

.method private attributeToURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not well formed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] cannot be opened."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private checkAttributes(Lorg/xml/sax/Attributes;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "url"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resource"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v3}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {v4}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "One of \"%1$s\", \"%2$s\" or \"%3$s\" attributes must be set."

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "file"

    aput-object v4, v3, v2

    const-string v4, "resource"

    aput-object v4, v3, v1

    const-string/jumbo v1, "url"

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return v2

    :cond_2
    if-le v0, v1, :cond_3

    const-string v0, "Only one of \"%1$s\", \"%2$s\" or \"%3$s\" attributes should be set."

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "file"

    aput-object v4, v3, v2

    const-string v4, "resource"

    aput-object v4, v3, v1

    const-string/jumbo v1, "url"

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Count value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] is not expected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private filePathAsURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-boolean v1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private getInputURL(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/net/URL;
    .locals 4

    const-string v0, "file"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->filePathAsURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->resourceAsURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A URL stream should have been returned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resourceAsURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find resource corresponding to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    const-string v0, "optional"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/qos/logback/core/util/OptionHelper;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    invoke-direct {p0, p3}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->checkAttributes(Lorg/xml/sax/Attributes;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->getInputURL(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->processInclude(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->handleError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected close(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    return-void
.end method

.method protected getAttributeInUse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->attributeInUse:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->urlInUse:Ljava/net/URL;

    return-object v0
.end method

.method protected handleError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected isOptional()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->optional:Z

    return v0
.end method

.method protected abstract processInclude(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation
.end method
