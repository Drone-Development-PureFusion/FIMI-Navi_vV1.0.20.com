.class public Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;
.super Lch/qos/logback/core/joran/action/AbstractIncludeAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;-><init>()V

    return-void
.end method

.method private peekPath(Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/net/URL;
    .locals 2

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;

    if-eqz v1, :cond_0

    check-cast v0, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;

    invoke-virtual {v0}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pushPath(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)Ljava/net/URL;
    .locals 1

    new-instance v0, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;

    invoke-direct {v0, p0}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;-><init>(Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;)V

    invoke-virtual {v0, p2}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction$State;->setUrl(Ljava/net/URL;)V

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;->peekPath(Lch/qos/logback/core/joran/spi/InterpretationContext;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lch/qos/logback/core/joran/action/AbstractIncludeAction;->begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_0
.end method

.method protected handleError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;->addInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected processInclude(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lch/qos/logback/classic/joran/action/ConditionalIncludeAction;->pushPath(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/net/URL;)Ljava/net/URL;

    return-void
.end method
