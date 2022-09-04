.class public final Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 148
    const-class v6, Ljava/lang/StackTraceElement;

    if-ne p2, v6, :cond_1

    .line 149
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/MiscCodec;->parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 156
    .local v3, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    iget v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v6, v10, :cond_4

    .line 157
    iput v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 158
    const/16 v6, 0x10

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 160
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 161
    const-string/jumbo v6, "val"

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "syntax error"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 164
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 169
    const/16 v6, 0x11

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 171
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    .line 173
    .local v4, "objVal":Ljava/lang/Object;
    const/16 v6, 0xd

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 178
    :goto_1
    if-eqz v4, :cond_0

    .line 183
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_5

    move-object v5, v4

    .line 184
    check-cast v5, Ljava/lang/String;

    .line 189
    .local v5, "strVal":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 193
    const-class v6, Ljava/util/UUID;

    if-ne p2, v6, :cond_6

    .line 194
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 166
    .end local v4    # "objVal":Ljava/lang/Object;
    .end local v5    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "syntax error"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "objVal":Ljava/lang/Object;
    goto :goto_1

    .line 186
    :cond_5
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "except string value"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 195
    .restart local v5    # "strVal":Ljava/lang/String;
    :cond_6
    const-class v6, Ljava/lang/Class;

    if-ne p2, v6, :cond_7

    .line 196
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_7
    const-class v6, Ljava/util/Locale;

    if-ne p2, v6, :cond_a

    .line 198
    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v9, :cond_8

    .line 201
    new-instance v0, Ljava/util/Locale;

    aget-object v6, v2, v8

    invoke-direct {v0, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_8
    array-length v6, v2

    if-ne v6, v10, :cond_9

    .line 205
    new-instance v0, Ljava/util/Locale;

    aget-object v6, v2, v8

    aget-object v7, v2, v9

    invoke-direct {v0, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_9
    new-instance v0, Ljava/util/Locale;

    aget-object v6, v2, v8

    aget-object v7, v2, v9

    aget-object v8, v2, v10

    invoke-direct {v0, v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v2    # "items":[Ljava/lang/String;
    :cond_a
    const-class v6, Ljava/net/URI;

    if-ne p2, v6, :cond_b

    .line 210
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    :cond_b
    const-class v6, Ljava/net/URL;

    if-ne p2, v6, :cond_c

    .line 213
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "create url error"

    invoke-direct {v6, v7, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 217
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_c
    const-class v6, Ljava/util/regex/Pattern;

    if-ne p2, v6, :cond_d

    .line 218
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto/16 :goto_0

    .line 219
    :cond_d
    const-class v6, Ljava/nio/charset/Charset;

    if-ne p2, v6, :cond_e

    .line 220
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_0

    .line 221
    :cond_e
    const-class v6, Ljava/util/Currency;

    if-ne p2, v6, :cond_f

    .line 222
    invoke-static {v5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    goto/16 :goto_0

    .line 223
    :cond_f
    const-class v6, Ljava/text/SimpleDateFormat;

    if-ne p2, v6, :cond_10

    .line 224
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 225
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    iget-object v6, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 227
    .end local v0    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_10
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, v6, :cond_11

    const-class v6, Ljava/lang/Character;

    if-ne p2, v6, :cond_12

    .line 228
    :cond_11
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :cond_12
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x4

    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 236
    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 238
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 239
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 240
    const/4 v7, 0x0

    .line 329
    :goto_0
    return-object v7

    .line 243
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 244
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    :cond_1
    const/4 v0, 0x0

    .line 248
    .local v0, "declaringClass":Ljava/lang/String;
    const/4 v6, 0x0

    .line 249
    .local v6, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 250
    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 254
    .local v5, "lineNumber":I
    :cond_2
    iget-object v7, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 257
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v12, :cond_3

    .line 258
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 329
    :goto_1
    new-instance v7, Ljava/lang/StackTraceElement;

    invoke-direct {v7, v0, v6, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 266
    :cond_4
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 267
    const-string v7, "className"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 268
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 269
    const/4 v0, 0x0

    .line 324
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 325
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 270
    :cond_6
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 271
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 273
    :cond_7
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 275
    :cond_8
    const-string v7, "methodName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 276
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 277
    const/4 v6, 0x0

    goto :goto_2

    .line 278
    :cond_9
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v11, :cond_a

    .line 279
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 281
    :cond_a
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    :cond_b
    const-string v7, "fileName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 284
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_c

    .line 285
    const/4 v2, 0x0

    goto :goto_2

    .line 286
    :cond_c
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v11, :cond_d

    .line 287
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 289
    :cond_d
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 291
    :cond_e
    const-string v7, "lineNumber"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 292
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_f

    .line 293
    const/4 v5, 0x0

    goto :goto_2

    .line 294
    :cond_f
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 295
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v5

    goto :goto_2

    .line 297
    :cond_10
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 299
    :cond_11
    const-string v7, "nativeMethod"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 300
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v9, :cond_12

    .line 301
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 302
    :cond_12
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_13

    .line 303
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 304
    :cond_13
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_14

    .line 305
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_2

    .line 307
    :cond_14
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 309
    :cond_15
    const-string v7, "@type"

    if-ne v3, v7, :cond_17

    .line 310
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v11, :cond_16

    .line 311
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "elementType":Ljava/lang/String;
    const-string v7, "java.lang.StackTraceElement"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 313
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 316
    .end local v1    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-eq v7, v9, :cond_5

    .line 317
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 321
    :cond_17
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 25
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v17, v0

    .line 41
    .local v17, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_3

    .line 42
    sget-object v23, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    const-class v23, Ljava/lang/Character;

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 43
    :cond_0
    const-string v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 45
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 46
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v11

    .line 47
    .local v11, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v23, Ljava/util/Enumeration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 48
    const-string v23, "[]"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 57
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/regex/Pattern;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v18, p2

    .line 58
    check-cast v18, Ljava/util/regex/Pattern;

    .line 59
    .local v18, "p":Ljava/util/regex/Pattern;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v18    # "p":Ljava/util/regex/Pattern;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/TimeZone;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v21, p2

    .line 61
    check-cast v21, Ljava/util/TimeZone;

    .line 62
    .local v21, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v21    # "timeZone":Ljava/util/TimeZone;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Currency;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v8, p2

    .line 64
    check-cast v8, Ljava/util/Currency;

    .line 65
    .local v8, "currency":Ljava/util/Currency;
    invoke-virtual {v8}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v8    # "currency":Ljava/util/Currency;
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v6, p2

    .line 67
    check-cast v6, Ljava/lang/Class;

    .line 68
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v22, p2

    .line 70
    check-cast v22, Ljava/lang/Character;

    .line 72
    .local v22, "value":Ljava/lang/Character;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 73
    .local v5, "c":C
    if-nez v5, :cond_8

    .line 74
    const-string v23, "\u0000"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    .end local v5    # "c":C
    .end local v22    # "value":Ljava/lang/Character;
    :cond_9
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v23, p2

    .line 79
    check-cast v23, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v23 .. v23}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v20

    .line 81
    .local v20, "pattern":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_a

    .line 82
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    .line 83
    const/16 v23, 0x7b

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    const-string v23, "@type"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 86
    const/16 v23, 0x2c

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 87
    const-string/jumbo v23, "val"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 88
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 89
    const/16 v23, 0x7d

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    .line 94
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    .end local v20    # "pattern":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONStreamAware;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v4, p2

    .line 96
    check-cast v4, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 97
    .local v4, "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_0

    .line 98
    .end local v4    # "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONAware;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v4, p2

    .line 99
    check-cast v4, Lcom/alibaba/fastjson/JSONAware;

    .line 100
    .local v4, "aware":Lcom/alibaba/fastjson/JSONAware;
    invoke-interface {v4}, Lcom/alibaba/fastjson/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v4    # "aware":Lcom/alibaba/fastjson/JSONAware;
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v16, p2

    .line 102
    check-cast v16, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 103
    .local v16, "jsonSerializable":Lcom/alibaba/fastjson/serializer/JSONSerializable;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializable;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 104
    .end local v16    # "jsonSerializable":Lcom/alibaba/fastjson/serializer/JSONSerializable;
    :cond_e
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Enumeration;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 105
    const/4 v10, 0x0

    .line 106
    .local v10, "elementType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_f

    .line 107
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v19, p4

    .line 108
    check-cast v19, Ljava/lang/reflect/ParameterizedType;

    .line 109
    .local v19, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v10, v23, v24

    .end local v19    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_f
    move-object/from16 v9, p2

    .line 113
    check-cast v9, Ljava/util/Enumeration;

    .line 115
    .local v9, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 116
    .local v7, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 119
    const/4 v12, 0x0

    .line 120
    .local v12, "i":I
    const/16 v23, 0x5b

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v12

    .line 121
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 122
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 123
    .local v14, "item":Ljava/lang/Object;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-eqz v13, :cond_10

    .line 124
    const/16 v23, 0x2c

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 127
    :cond_10
    if-nez v14, :cond_11

    .line 128
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    move v13, v12

    .line 129
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 132
    .end local v13    # "i":I
    .restart local v12    # "i":I
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 134
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v15

    .line 135
    .local v15, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v23, v12, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v14, v1, v10}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v13, v12

    .line 136
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 137
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "item":Ljava/lang/Object;
    .end local v15    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_12
    const/16 v23, 0x5d

    :try_start_3
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    .end local v13    # "i":I
    .restart local v12    # "i":I
    :catchall_0
    move-exception v23

    :goto_2
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v23

    .line 142
    .end local v7    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v9    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "elementType":Ljava/lang/reflect/Type;
    .end local v12    # "i":I
    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .restart local v7    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v9    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "elementType":Ljava/lang/reflect/Type;
    .restart local v13    # "i":I
    :catchall_1
    move-exception v23

    move v12, v13

    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_2
.end method
