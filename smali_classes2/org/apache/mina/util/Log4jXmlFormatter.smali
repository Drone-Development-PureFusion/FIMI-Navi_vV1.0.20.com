.class public Lorg/apache/mina/util/Log4jXmlFormatter;
.super Ljava/util/logging/Formatter;
.source "Log4jXmlFormatter.java"


# instance fields
.field private final DEFAULT_SIZE:I

.field private final UPPER_LIMIT:I

.field private buf:Ljava/lang/StringBuffer;

.field private locationInfo:Z

.field private properties:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 49
    iput v2, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->DEFAULT_SIZE:I

    .line 51
    const/16 v0, 0x800

    iput v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->UPPER_LIMIT:I

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    .line 55
    iput-boolean v1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    .line 57
    iput-boolean v1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 13
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    const/4 v8, 0x0

    .line 101
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->capacity()I

    move-result v9

    const/16 v10, 0x800

    if-le v9, v10, :cond_0

    .line 102
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v10, 0x100

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    .line 106
    :goto_0
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "<log4j:event logger=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "\" timestamp=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 110
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "\" level=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "\" thread=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "\">\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "<log4j:message><![CDATA["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/mina/util/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 121
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "]]></log4j:message>\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 124
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/mina/util/Transform;->getThrowableStrRep(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "s":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 126
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "<log4j:throwable><![CDATA["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    array-length v10, v5

    move v9, v8

    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v7, v5, v9

    .line 128
    .local v7, "value":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-static {v11, v7}, Lorg/apache/mina/util/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 129
    iget-object v11, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 104
    .end local v5    # "s":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 131
    .restart local v5    # "s":[Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "]]></log4j:throwable>\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .end local v5    # "s":[Ljava/lang/String;
    :cond_2
    iget-boolean v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    if-eqz v9, :cond_3

    .line 136
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "<log4j:locationInfo class=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "\" method=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "\" file=\"?\" line=\"?\"/>\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_3
    iget-boolean v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    if-eqz v9, :cond_7

    .line 144
    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v0

    .line 146
    .local v0, "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 147
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 149
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 150
    iget-object v9, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v10, "<log4j:properties>\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 152
    .local v4, "keys":[Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 154
    array-length v9, v4

    :goto_2
    if-ge v8, v9, :cond_6

    aget-object v2, v4, v8

    .line 155
    .local v2, "key1":Ljava/lang/Object;
    if-nez v2, :cond_5

    const-string v1, ""

    .line 156
    .local v1, "key":Ljava/lang/String;
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .local v6, "val":Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 159
    iget-object v10, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v11, "<log4j:data name=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v10, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-static {v1}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v10, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v11, "\" value=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-object v10, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v10, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v11, "\"/>\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 155
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 167
    .end local v2    # "key1":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v9, "</log4j:properties>\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    .end local v0    # "contextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "keys":[Ljava/lang/Object;
    :cond_7
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v9, "</log4j:event>\r\n\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v8, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    return v0
.end method

.method public getProperties()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    .line 70
    return-void
.end method

.method public setProperties(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    .line 86
    return-void
.end method
