.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x41

    const/16 v11, 0x39

    const/4 v8, 0x0

    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 36
    const/4 v5, -0x1

    .line 39
    .local v5, "version":I
    :try_start_0
    const-string v6, "android.os.Build$VERSION"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "SDK_INT"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 46
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    move v6, v7

    :goto_1
    sput-boolean v6, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 79
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    .line 1940
    const/16 v6, 0x67

    new-array v6, v6, [I

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    .line 1943
    const/16 v3, 0x30

    .local v3, "i":I
    :goto_2
    if-gt v3, v11, :cond_1

    .line 1944
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x30

    aput v9, v6, v3

    .line 1943
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_0
    move v6, v8

    .line 46
    goto :goto_1

    .line 1947
    .restart local v3    # "i":I
    :cond_1
    const/16 v3, 0x61

    :goto_3
    const/16 v6, 0x66

    if-gt v3, v6, :cond_2

    .line 1948
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1947
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1950
    :cond_2
    const/16 v3, 0x41

    :goto_4
    const/16 v6, 0x46

    if-gt v3, v6, :cond_3

    .line 1951
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1950
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4342
    :cond_3
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 4343
    new-array v6, v10, [I

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4345
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/4 v9, -0x1

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4346
    const/4 v3, 0x0

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    array-length v4, v6

    .local v4, "iS":I
    :goto_5
    if-ge v3, v4, :cond_4

    .line 4347
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v9, v9, v3

    aput v3, v6, v9

    .line 4346
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4349
    :cond_4
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v9, 0x3d

    aput v8, v6, v9

    .line 4408
    new-array v6, v10, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    .line 4410
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_6
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 4411
    if-lt v0, v12, :cond_6

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_6

    .line 4412
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    .line 4410
    :cond_5
    :goto_7
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_6

    .line 4413
    :cond_6
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_7

    .line 4414
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4415
    :cond_7
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_5

    .line 4416
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4421
    :cond_8
    new-array v6, v10, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 4424
    const/4 v0, 0x0

    :goto_8
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_d

    .line 4425
    if-lt v0, v12, :cond_a

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_a

    .line 4426
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    .line 4424
    :cond_9
    :goto_9
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_8

    .line 4427
    :cond_a
    const/16 v6, 0x61

    if-lt v0, v6, :cond_b

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_b

    .line 4428
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4429
    :cond_b
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_c

    .line 4430
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4431
    :cond_c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_9

    if-gt v0, v11, :cond_9

    .line 4432
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4435
    :cond_d
    return-void

    .line 42
    .end local v0    # "c":C
    .end local v3    # "i":I
    .end local v4    # "iS":I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 88
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 63
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 64
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    .line 75
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 77
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 100
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 102
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v1, :cond_0

    .line 103
    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 106
    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 108
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 114
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 115
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1a

    .line 117
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 119
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v4, 0xfeff

    if-ne v1, v4, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 123
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 126
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 127
    return-void

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 123
    goto :goto_1

    :cond_4
    move v1, v3

    .line 126
    goto :goto_2
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 92
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    .line 93
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 96
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4297
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 4338
    :cond_0
    :goto_0
    return v0

    .line 4300
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 4303
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 4306
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 4310
    if-ne p4, v2, :cond_4

    .line 4311
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 4322
    :cond_2
    if-ne p6, v2, :cond_5

    .line 4323
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 4338
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4314
    :cond_4
    if-ne p4, v3, :cond_0

    .line 4315
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 4326
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 4327
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 4330
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 4331
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method static checkTime(CCCCCC)Z
    .locals 6
    .param p0, "h0"    # C
    .param p1, "h1"    # C
    .param p2, "m0"    # C
    .param p3, "m1"    # C
    .param p4, "s0"    # C
    .param p5, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4243
    if-ne p0, v2, :cond_1

    .line 4244
    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_2

    .line 4283
    :cond_0
    :goto_0
    return v0

    .line 4247
    :cond_1
    const/16 v1, 0x31

    if-ne p0, v1, :cond_5

    .line 4248
    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    .line 4259
    :cond_2
    if-lt p2, v2, :cond_6

    if-gt p2, v4, :cond_6

    .line 4260
    if-lt p3, v2, :cond_0

    if-gt p3, v3, :cond_0

    .line 4271
    :cond_3
    if-lt p4, v2, :cond_7

    if-gt p4, v4, :cond_7

    .line 4272
    if-lt p5, v2, :cond_0

    if-gt p5, v3, :cond_0

    .line 4283
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 4251
    :cond_5
    const/16 v1, 0x32

    if-ne p0, v1, :cond_0

    .line 4252
    if-lt p1, v2, :cond_0

    const/16 v1, 0x34

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 4263
    :cond_6
    if-ne p2, v5, :cond_0

    .line 4264
    if-eq p3, v2, :cond_3

    goto :goto_0

    .line 4275
    :cond_7
    if-ne p4, v5, :cond_0

    .line 4276
    if-eq p5, v2, :cond_4

    goto :goto_0
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 20
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 4354
    if-nez p2, :cond_0

    .line 4355
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 4405
    :goto_0
    return-object v2

    .line 4358
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 4361
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 4362
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4365
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 4366
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4369
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 4370
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 4371
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 4373
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 4374
    .local v11, "len":I
    new-array v2, v11, [B

    .line 4377
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 4378
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 4380
    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .line 4381
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 4384
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4385
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 4386
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4389
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 4390
    add-int/lit8 v14, v15, 0x2

    .line 4391
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 4393
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 4369
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4371
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 4395
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 4397
    const/4 v9, 0x0

    .line 4398
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 4399
    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 4398
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 4401
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 4402
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4401
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method private matchFieldHash(J)I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2053
    const/4 v8, 0x1

    .line 2054
    .local v8, "offset":I
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2055
    .local v3, "fieldQuote":C
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 2057
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-ne v3, v10, :cond_1

    .line 2078
    :cond_0
    const-wide/32 v6, -0x7ee3623b

    .line 2079
    .local v6, "hash":J
    move v5, v4

    .local v5, "i":I
    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v10, :cond_c

    .line 2080
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2081
    .local v0, "ch":C
    if-ne v0, v3, :cond_5

    .line 2083
    sub-int v10, v5, v4

    add-int v8, v9, v10

    .line 2091
    .end local v0    # "ch":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    cmp-long v10, v6, p1

    if-eqz v10, :cond_6

    .line 2092
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2093
    const/4 v10, 0x0

    move v9, v8

    .line 2123
    .end local v5    # "i":I
    .end local v6    # "hash":J
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_3
    return v10

    .line 2059
    :cond_1
    const/16 v10, 0x27

    if-eq v3, v10, :cond_0

    .line 2061
    const/16 v10, 0x20

    if-gt v3, v10, :cond_4

    const/16 v10, 0x20

    if-eq v3, v10, :cond_2

    const/16 v10, 0xa

    if-eq v3, v10, :cond_2

    const/16 v10, 0xd

    if-eq v3, v10, :cond_2

    const/16 v10, 0x9

    if-eq v3, v10, :cond_2

    const/16 v10, 0xc

    if-eq v3, v10, :cond_2

    const/16 v10, 0x8

    if-ne v3, v10, :cond_4

    .line 2068
    :cond_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2069
    .local v2, "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_3

    const/16 v3, 0x1a

    :goto_4
    move v9, v8

    .line 2071
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2069
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_3
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2071
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 2073
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_4
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2074
    const/4 v8, 0x0

    move v10, v8

    goto :goto_3

    .line 2087
    .restart local v0    # "ch":C
    .restart local v5    # "i":I
    .restart local v6    # "hash":J
    :cond_5
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 2088
    const-wide/32 v10, 0x1000193

    mul-long/2addr v6, v10

    .line 2079
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2096
    .end local v0    # "ch":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_6
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    add-int v2, v10, v8

    .line 2097
    .restart local v2    # "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_7

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_5
    move v9, v8

    .line 2101
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_6
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_8

    .line 2102
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    move v10, v8

    .line 2123
    goto :goto_3

    .line 2097
    .end local v1    # "chLocal":C
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_7
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2099
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2106
    .end local v8    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v9    # "offset":I
    :cond_8
    const/16 v10, 0x20

    if-gt v1, v10, :cond_b

    const/16 v10, 0x20

    if-eq v1, v10, :cond_9

    const/16 v10, 0xa

    if-eq v1, v10, :cond_9

    const/16 v10, 0xd

    if-eq v1, v10, :cond_9

    const/16 v10, 0x9

    if-eq v1, v10, :cond_9

    const/16 v10, 0xc

    if-eq v1, v10, :cond_9

    const/16 v10, 0x8

    if-ne v1, v10, :cond_b

    .line 2113
    :cond_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2114
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_a

    const/16 v1, 0x1a

    :goto_7
    move v9, v8

    .line 2117
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_6

    .line 2114
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2116
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2120
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_b
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v1    # "chLocal":C
    .end local v2    # "charIndex":I
    :cond_c
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_2
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 823
    new-array v4, p1, [C

    .line 824
    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .line 825
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 826
    aget-char v0, p0, v1

    .line 828
    .local v0, "ch":C
    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    .line 829
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v0, v4, v3

    .line 825
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 832
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    .line 834
    sparse-switch v0, :sswitch_data_0

    .line 901
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 836
    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 839
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 842
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 845
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 848
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 851
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 854
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 857
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 860
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 863
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 866
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 869
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 873
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 876
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    .line 879
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    .line 882
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    .line 885
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    .line 888
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 891
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 894
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 904
    .end local v0    # "ch":C
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 834
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private scanIdent()V
    .locals 2

    .prologue
    .line 1181
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1185
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1187
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1188
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, "ident":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1212
    :goto_0
    return-void

    .line 1196
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1197
    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1198
    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1199
    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1200
    :cond_3
    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1201
    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1202
    :cond_4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1203
    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1204
    :cond_5
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1205
    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1206
    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1207
    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1209
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 4287
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4288
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 4289
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 4290
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 4291
    .local v0, "day":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4292
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4293
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4294
    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 1223
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1224
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1225
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1229
    :goto_0
    return-object v1

    .line 1227
    :cond_0
    new-array v0, p2, [C

    .line 1228
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1229
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 214
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2004

    if-gt v0, v1, :cond_0

    .line 135
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 138
    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 148
    if-eqz p2, :cond_1

    .line 149
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 154
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_0

    .line 155
    if-eqz p2, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 159
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 160
    return-void

    .line 151
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 159
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 30
    .param p1, "decimal"    # Z

    .prologue
    .line 1823
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int/lit8 v8, v25, -0x1

    .line 1824
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v8, v0, :cond_0

    const/16 v7, 0x1a

    .line 1828
    .local v7, "chLocal":C
    :goto_0
    const/16 v25, 0x46

    move/from16 v0, v25

    if-ne v7, v0, :cond_1

    .line 1829
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 1907
    :goto_1
    return-object v25

    .line 1824
    .end local v7    # "chLocal":C
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 1826
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_0

    .line 1832
    .restart local v7    # "chLocal":C
    :cond_1
    const/16 v25, 0x44

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    .line 1833
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto :goto_1

    .line 1836
    :cond_2
    if-eqz p1, :cond_3

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v25

    goto :goto_1

    .line 1839
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int/lit8 v17, v25, -0x1

    .line 1840
    .local v17, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v23, v0

    .line 1843
    .local v23, "sp":I
    const/16 v25, 0x4c

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x53

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x42

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x46

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x44

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    .line 1848
    :cond_4
    add-int/lit8 v23, v23, -0x1

    .line 1854
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v21, v0

    .local v21, "offset":I
    move/from16 v10, v23

    .line 1856
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1864
    .local v9, "chars":[C
    :goto_2
    const/16 v25, 0x9

    move/from16 v0, v25

    if-gt v10, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 1865
    const/16 v19, 0x0

    .line 1867
    .local v19, "negative":Z
    const/4 v15, 0x0

    .line 1868
    .local v15, "i":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .local v16, "i":I
    aget-char v6, v9, v15

    .line 1870
    .local v6, "c":C
    const/16 v25, 0x2d

    move/from16 v0, v25

    if-ne v6, v0, :cond_8

    .line 1871
    const/16 v19, 0x1

    .line 1872
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    aget-char v6, v9, v16

    .line 1873
    const/16 v20, 0x1

    .line 1881
    .local v20, "off":I
    :goto_3
    add-int/lit8 v18, v6, -0x30

    .line 1882
    .local v18, "intVal":I
    const/16 v22, 0x0

    .line 1883
    .local v22, "power":I
    :goto_4
    if-ge v15, v10, :cond_b

    .line 1884
    aget-char v6, v9, v15

    .line 1886
    const/16 v25, 0x2e

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    .line 1887
    const/16 v22, 0x1

    .line 1883
    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1860
    .end local v6    # "c":C
    .end local v9    # "chars":[C
    .end local v15    # "i":I
    .end local v18    # "intVal":I
    .end local v19    # "negative":Z
    .end local v20    # "off":I
    .end local v22    # "power":I
    :cond_7
    new-array v9, v10, [C

    .line 1861
    .restart local v9    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v10

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v9, v3}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1909
    .end local v9    # "chars":[C
    .end local v10    # "count":I
    .end local v17    # "index":I
    .end local v21    # "offset":I
    .end local v23    # "sp":I
    :catch_0
    move-exception v14

    .line 1910
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 1874
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v9    # "chars":[C
    .restart local v10    # "count":I
    .restart local v16    # "i":I
    .restart local v17    # "index":I
    .restart local v19    # "negative":Z
    .restart local v21    # "offset":I
    .restart local v23    # "sp":I
    :cond_8
    const/16 v25, 0x2b

    move/from16 v0, v25

    if-ne v6, v0, :cond_9

    .line 1875
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :try_start_2
    aget-char v6, v9, v16

    .line 1876
    const/16 v20, 0x1

    .restart local v20    # "off":I
    goto :goto_3

    .line 1878
    .end local v15    # "i":I
    .end local v20    # "off":I
    .restart local v16    # "i":I
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "off":I
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto :goto_3

    .line 1890
    .restart local v18    # "intVal":I
    .restart local v22    # "power":I
    :cond_a
    add-int/lit8 v11, v6, -0x30

    .line 1891
    .local v11, "digit":I
    mul-int/lit8 v25, v18, 0xa

    add-int v18, v25, v11

    .line 1893
    if-eqz v22, :cond_6

    .line 1894
    mul-int/lit8 v22, v22, 0xa

    goto :goto_5

    .line 1898
    .end local v11    # "digit":I
    :cond_b
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v12, v26, v28

    .line 1899
    .local v12, "doubleVal":D
    if-eqz v19, :cond_c

    .line 1900
    neg-double v12, v12

    .line 1903
    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_1

    .line 1905
    .end local v6    # "c":C
    .end local v12    # "doubleVal":D
    .end local v15    # "i":I
    .end local v18    # "intVal":I
    .end local v19    # "negative":Z
    .end local v20    # "off":I
    .end local v22    # "power":I
    :cond_d
    new-instance v24, Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v9, v1, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1907
    .local v24, "str":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v25

    goto/16 :goto_1
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1915
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    .line 1916
    .local v3, "index":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1918
    .local v0, "chLocal":C
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1919
    .local v5, "sp":I
    const/16 v6, 0x4c

    if-eq v0, v6, :cond_0

    const/16 v6, 0x53

    if-eq v0, v6, :cond_0

    const/16 v6, 0x42

    if-eq v0, v6, :cond_0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_0

    const/16 v6, 0x44

    if-ne v0, v6, :cond_1

    .line 1924
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 1929
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v4, "offset":I
    move v2, v5

    .line 1930
    .local v2, "count":I
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 1931
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v7, v4, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v6, v4, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1932
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v6, v7, v9, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 1936
    :goto_0
    return-object v6

    .line 1934
    :cond_2
    new-array v1, v2, [C

    .line 1935
    .local v1, "chars":[C
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v7, v4, v2

    invoke-virtual {v6, v4, v7, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1936
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x10000

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 912
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 912
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final intValue()I
    .locals 14

    .prologue
    const/16 v11, 0x1a

    .line 1115
    const/4 v10, 0x0

    .line 1116
    .local v10, "result":I
    const/4 v9, 0x0

    .line 1117
    .local v9, "negative":Z
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v4, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v7, v12, v13

    .line 1121
    .local v7, "max":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_2

    move v1, v11

    .line 1124
    .local v1, "chLocal":C
    :goto_0
    const/16 v12, 0x2d

    if-ne v1, v12, :cond_3

    .line 1125
    const/4 v9, 0x1

    .line 1126
    const/high16 v6, -0x80000000

    .line 1127
    .local v6, "limit":I
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 1131
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    const v8, -0xccccccc

    .line 1132
    .local v8, "multmin":I
    if-ge v5, v7, :cond_0

    .line 1133
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .line 1134
    .local v2, "charIndex":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_4

    move v1, v11

    .line 1138
    :goto_2
    add-int/lit8 v3, v1, -0x30

    .line 1139
    .local v3, "digit":I
    neg-int v10, v3

    move v5, v4

    .line 1141
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_0
    :goto_3
    if-ge v5, v7, :cond_b

    .line 1144
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .line 1145
    .restart local v2    # "charIndex":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_5

    move v0, v11

    .line 1149
    .local v0, "ch":C
    :goto_4
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_1

    const/16 v12, 0x53

    if-eq v0, v12, :cond_1

    const/16 v12, 0x42

    if-ne v0, v12, :cond_6

    .line 1165
    .end local v0    # "ch":C
    .end local v2    # "charIndex":I
    :cond_1
    :goto_5
    if-eqz v9, :cond_a

    .line 1166
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v11, v11, 0x1

    if-le v4, v11, :cond_9

    .line 1172
    .end local v10    # "result":I
    :goto_6
    return v10

    .line 1121
    .end local v1    # "chLocal":C
    .end local v6    # "limit":I
    .end local v8    # "multmin":I
    .restart local v10    # "result":I
    :cond_2
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1123
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1129
    .restart local v1    # "chLocal":C
    :cond_3
    const v6, -0x7fffffff

    .restart local v6    # "limit":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 1134
    .end local v5    # "i":I
    .restart local v2    # "charIndex":I
    .restart local v4    # "i":I
    .restart local v8    # "multmin":I
    :cond_4
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1136
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1145
    :cond_5
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1147
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1153
    .restart local v0    # "ch":C
    :cond_6
    add-int/lit8 v3, v0, -0x30

    .line 1155
    .restart local v3    # "digit":I
    const v12, -0xccccccc

    if-ge v10, v12, :cond_7

    .line 1156
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1158
    :cond_7
    mul-int/lit8 v10, v10, 0xa

    .line 1159
    add-int v12, v6, v3

    if-ge v10, v12, :cond_8

    .line 1160
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1162
    :cond_8
    sub-int/2addr v10, v3

    move v5, v4

    .line 1163
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 1169
    .end local v0    # "ch":C
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_9
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1172
    :cond_a
    neg-int v10, v10

    goto :goto_6

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_b
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_5
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 602
    const-wide/16 v10, 0x0

    .line 603
    .local v10, "result":J
    const/4 v8, 0x0

    .line 604
    .local v8, "negative":Z
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v3, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v12, v13

    .line 608
    .local v5, "max":I
    const/16 v9, 0x20

    .line 610
    .local v9, "type":C
    add-int/lit8 v1, v5, -0x1

    .line 611
    .local v1, "charIndex":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_1

    const/16 v0, 0x1a

    .line 615
    .local v0, "chLocal":C
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 632
    :goto_1
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_2

    const/16 v0, 0x1a

    .line 635
    :goto_2
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_3

    .line 636
    const/4 v8, 0x1

    .line 637
    const-wide/high16 v6, -0x8000000000000000L

    .line 638
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 642
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_0

    .line 643
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    .line 644
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_4

    const/16 v0, 0x1a

    .line 647
    :goto_4
    add-int/lit8 v2, v0, -0x30

    .line 648
    .local v2, "digit":I
    neg-int v12, v2

    int-to-long v10, v12

    move v4, v3

    .line 650
    .end local v2    # "digit":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    :goto_5
    if-ge v4, v5, :cond_8

    .line 652
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    .line 653
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_5

    const/16 v0, 0x1a

    .line 656
    :goto_6
    add-int/lit8 v2, v0, -0x30

    .line 657
    .restart local v2    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 658
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 695
    .end local v2    # "digit":I
    :goto_7
    return-object v12

    .line 611
    .end local v0    # "chLocal":C
    .end local v6    # "limit":J
    :cond_1
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 613
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 617
    .restart local v0    # "chLocal":C
    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    .line 618
    const/16 v9, 0x4c

    .line 619
    goto :goto_1

    .line 621
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 622
    const/16 v9, 0x53

    .line 623
    goto :goto_1

    .line 625
    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    .line 626
    const/16 v9, 0x42

    .line 627
    goto :goto_1

    .line 632
    :cond_2
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 634
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 640
    :cond_3
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 644
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 646
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 653
    :cond_5
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 655
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 660
    .restart local v2    # "digit":I
    :cond_6
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 661
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_7

    .line 662
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 664
    :cond_7
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 667
    .end local v2    # "digit":I
    :cond_8
    if-eqz v8, :cond_d

    .line 668
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v4, v12, :cond_c

    .line 669
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_b

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_b

    .line 670
    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    .line 671
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 674
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    .line 675
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 678
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 680
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 682
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_c
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 685
    :cond_d
    neg-long v10, v10

    .line 686
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_10

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_10

    .line 687
    const/16 v12, 0x53

    if-ne v9, v12, :cond_e

    .line 688
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 689
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_e
    const/16 v12, 0x42

    if-ne v9, v12, :cond_f

    .line 690
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 692
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_f
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 695
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 615
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1245
    const/4 v1, 0x0

    .line 1246
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1247
    .local v0, "ch":C
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_0

    .line 1263
    :goto_1
    return v3

    .line 1251
    :cond_0
    if-gt v0, v6, :cond_2

    if-eq v0, v6, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/16 v5, 0xc

    if-eq v0, v5, :cond_1

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    :cond_1
    move v2, v3

    .line 1258
    .local v2, "whitespace":Z
    :goto_2
    if-nez v2, :cond_3

    move v3, v4

    .line 1259
    goto :goto_1

    .end local v2    # "whitespace":Z
    :cond_2
    move v2, v4

    .line 1251
    goto :goto_2

    .line 1245
    .restart local v2    # "whitespace":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 163
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1764
    const-wide/16 v10, 0x0

    .line 1765
    .local v10, "result":J
    const/4 v8, 0x0

    .line 1766
    .local v8, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v2, "i":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v9, v12

    .line 1771
    .local v5, "max":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_2

    .line 1772
    const/4 v8, 0x1

    .line 1773
    const-wide/high16 v6, -0x8000000000000000L

    .line 1774
    .local v6, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1778
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1779
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    add-int/lit8 v1, v9, -0x30

    .line 1780
    .local v1, "digit":I
    neg-int v9, v1

    int-to-long v10, v9

    move v3, v2

    .line 1782
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    :goto_1
    if-ge v3, v5, :cond_9

    .line 1787
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .line 1788
    .local v4, "index":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_3

    const/16 v0, 0x1a

    .line 1793
    .local v0, "chLocal":C
    :goto_2
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_1

    const/16 v9, 0x53

    if-eq v0, v9, :cond_1

    const/16 v9, 0x42

    if-ne v0, v9, :cond_4

    .line 1810
    .end local v0    # "chLocal":C
    .end local v4    # "index":I
    :cond_1
    :goto_3
    if-eqz v8, :cond_8

    .line 1811
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    .line 1817
    .end local v10    # "result":J
    :goto_4
    return-wide v10

    .line 1776
    .end local v6    # "limit":J
    .restart local v10    # "result":J
    :cond_2
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1788
    .end local v3    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1790
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 1799
    .restart local v0    # "chLocal":C
    :cond_4
    add-int/lit8 v1, v0, -0x30

    .line 1800
    .restart local v1    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    .line 1801
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1803
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 1804
    int-to-long v12, v1

    add-long/2addr v12, v6

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    .line 1805
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1807
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 1808
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1814
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .end local v4    # "index":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1817
    :cond_8
    neg-long v10, v10

    goto :goto_4

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_3
.end method

.method public matchField(J)Z
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 1956
    const/4 v8, 0x1

    .line 1957
    .local v8, "offset":I
    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1958
    .local v3, "fieldQuote":C
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 1960
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-ne v3, v10, :cond_2

    .line 1981
    :cond_0
    const-wide/32 v6, -0x7ee3623b

    .line 1982
    .local v6, "hash":J
    move v5, v4

    .local v5, "i":I
    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v10, :cond_1

    .line 1983
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1984
    .local v0, "ch":C
    if-ne v0, v3, :cond_6

    .line 1986
    sub-int v10, v5, v4

    add-int/lit8 v10, v10, 0x1

    add-int v8, v9, v10

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v9, v8

    .line 1994
    .end local v0    # "ch":C
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_1
    cmp-long v10, v6, p1

    if-eqz v10, :cond_7

    .line 1995
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1996
    const/4 v10, 0x0

    move v8, v9

    .line 2049
    .end local v5    # "i":I
    .end local v6    # "hash":J
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    return v10

    .line 1962
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_2
    const/16 v10, 0x27

    if-eq v3, v10, :cond_0

    .line 1964
    const/16 v10, 0x20

    if-gt v3, v10, :cond_5

    const/16 v10, 0x20

    if-eq v3, v10, :cond_3

    const/16 v10, 0xa

    if-eq v3, v10, :cond_3

    const/16 v10, 0xd

    if-eq v3, v10, :cond_3

    const/16 v10, 0x9

    if-eq v3, v10, :cond_3

    const/16 v10, 0xc

    if-eq v3, v10, :cond_3

    const/16 v10, 0x8

    if-ne v3, v10, :cond_5

    .line 1971
    :cond_3
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 1972
    .local v2, "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_4

    const/16 v3, 0x1a

    :goto_3
    move v9, v8

    .line 1974
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 1972
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1974
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 1976
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_5
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1977
    const/4 v10, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 1990
    .end local v8    # "offset":I
    .restart local v0    # "ch":C
    .restart local v5    # "i":I
    .restart local v6    # "hash":J
    .restart local v9    # "offset":I
    :cond_6
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 1991
    const-wide/32 v10, 0x1000193

    mul-long/2addr v6, v10

    .line 1982
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1999
    .end local v0    # "ch":C
    :cond_7
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2000
    .restart local v2    # "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_8

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_4
    move v9, v8

    .line 2004
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_5
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_a

    .line 2005
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2006
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_9

    const/16 v1, 0x1a

    .line 2029
    :goto_6
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_f

    .line 2030
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2031
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_e

    const/16 v10, 0x1a

    .line 2033
    :goto_7
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2034
    const/16 v10, 0xc

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2049
    :goto_8
    const/4 v10, 0x1

    goto :goto_2

    .line 2000
    .end local v1    # "chLocal":C
    :cond_8
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2002
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 2006
    .restart local v1    # "chLocal":C
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2008
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 2012
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_a
    const/16 v10, 0x20

    if-gt v1, v10, :cond_d

    const/16 v10, 0x20

    if-eq v1, v10, :cond_b

    const/16 v10, 0xa

    if-eq v1, v10, :cond_b

    const/16 v10, 0xd

    if-eq v1, v10, :cond_b

    const/16 v10, 0x9

    if-eq v1, v10, :cond_b

    const/16 v10, 0xc

    if-eq v1, v10, :cond_b

    const/16 v10, 0x8

    if-ne v1, v10, :cond_d

    .line 2019
    :cond_b
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2020
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_c

    const/16 v1, 0x1a

    :goto_9
    move v9, v8

    .line 2023
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_5

    .line 2020
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_c
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2022
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 2026
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_d
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2031
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_e
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2033
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    .line 2035
    :cond_f
    const/16 v10, 0x5b

    if-ne v1, v10, :cond_11

    .line 2036
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2037
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_10

    const/16 v10, 0x1a

    .line 2039
    :goto_a
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2040
    const/16 v10, 0xe

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_8

    .line 2037
    :cond_10
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2039
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    .line 2042
    :cond_11
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2043
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_12

    const/16 v10, 0x1a

    .line 2045
    :goto_b
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2046
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_8

    .line 2043
    :cond_12
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2045
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b
.end method

.method public next()C
    .locals 2

    .prologue
    .line 141
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 142
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 144
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 142
    return v1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final nextIdent()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 580
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 587
    .local v0, "whitespace":Z
    :goto_1
    if-nez v0, :cond_3

    .line 593
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 594
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    .line 599
    :goto_2
    return-void

    .line 580
    .end local v0    # "whitespace":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 590
    .restart local v0    # "whitespace":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 597
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2
.end method

.method public final nextToken()V
    .locals 11

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v3, 0x1a

    .line 220
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 223
    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 225
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 230
    :cond_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 403
    :goto_1
    return-void

    .line 235
    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_1

    .line 240
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v10, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 242
    const/16 v3, 0x10

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 246
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sparse-switch v4, :sswitch_data_0

    .line 386
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v4, v5, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_12

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ne v4, v5, :cond_12

    :cond_6
    const/4 v0, 0x1

    .line 387
    .local v0, "eof":Z
    :goto_2
    if-eqz v0, :cond_14

    .line 388
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_13

    .line 389
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "EOF error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v0    # "eof":Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_1

    .line 256
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 260
    :sswitch_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v5, "true"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 261
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 262
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 264
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_8

    .line 275
    :cond_7
    const/4 v3, 0x6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 279
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "scan true error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :sswitch_3
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    goto/16 :goto_1

    .line 288
    :sswitch_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "false"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 289
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 290
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 292
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_a

    .line 303
    :cond_9
    const/4 v3, 0x7

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 307
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "scan false error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    :sswitch_5
    const/4 v2, 0x0

    .line 312
    .local v2, "token":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "null"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 313
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 314
    const/16 v2, 0x8

    .line 320
    :cond_b
    :goto_3
    if-eqz v2, :cond_e

    .line 321
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 322
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_c

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_c

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    .line 332
    :cond_c
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 315
    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "new"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 316
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 317
    const/16 v2, 0x9

    goto :goto_3

    .line 337
    :cond_e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "scan null/new error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    .end local v2    # "token":I
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 341
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 344
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 345
    const/16 v3, 0xb

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 350
    :sswitch_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 351
    .local v1, "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_f

    .line 353
    :goto_4
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 355
    const/16 v3, 0xe

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 351
    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 358
    .end local v1    # "index":I
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 359
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 364
    :sswitch_a
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 365
    .restart local v1    # "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_10

    .line 367
    :goto_5
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 369
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 365
    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 367
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 374
    .end local v1    # "index":I
    :sswitch_b
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 375
    .restart local v1    # "index":I
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    .line 377
    :goto_6
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 379
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 375
    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 377
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 382
    .end local v1    # "index":I
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 383
    const/16 v3, 0x11

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 386
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 392
    .restart local v0    # "eof":Z
    :cond_13
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 393
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto/16 :goto_1

    .line 395
    :cond_14
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x1f

    if-le v4, v5, :cond_15

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_16

    .line 396
    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    .line 399
    :cond_16
    const/4 v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 8
    .param p1, "expect"    # I

    .prologue
    const/16 v7, 0x5b

    const/16 v6, 0xe

    const/16 v5, 0x7b

    const/16 v4, 0xc

    const/16 v1, 0x1a

    .line 410
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 413
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 563
    :cond_0
    :pswitch_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v4, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 415
    :pswitch_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_3

    .line 416
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 419
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 420
    .local v0, "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    .line 422
    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 576
    .end local v0    # "index":I
    :goto_2
    return-void

    .line 420
    .restart local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 422
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 426
    .end local v0    # "index":I
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_0

    .line 427
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 430
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 431
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_4

    .line 433
    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 431
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 439
    .end local v0    # "index":I
    :pswitch_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_6

    .line 440
    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 443
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 444
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_5

    .line 446
    :goto_4
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 444
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 446
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 451
    .end local v0    # "index":I
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    .line 452
    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 455
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 456
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_7

    .line 458
    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 456
    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 458
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 463
    .end local v0    # "index":I
    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_a

    .line 464
    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 467
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 468
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_9

    .line 470
    :goto_6
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 468
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 470
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 475
    .end local v0    # "index":I
    :cond_a
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v1, :cond_0

    .line 476
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    .line 481
    :pswitch_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_b

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_b

    .line 482
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 483
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_2

    .line 487
    :cond_b
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_c

    .line 488
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 489
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_2

    .line 493
    :cond_c
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_d

    .line 494
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 495
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 499
    :cond_d
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    .line 500
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 507
    :pswitch_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    .line 508
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 509
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_2

    .line 513
    :cond_e
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_f

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_f

    .line 514
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 515
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_2

    .line 519
    :cond_f
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    .line 520
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 523
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 524
    .restart local v0    # "index":I
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_10

    .line 526
    :goto_7
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_2

    .line 524
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 532
    .end local v0    # "index":I
    :pswitch_5
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_11

    .line 533
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 534
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 538
    :cond_11
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    .line 539
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 545
    :pswitch_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_12

    .line 546
    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 551
    :cond_12
    :pswitch_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v1, :cond_0

    .line 552
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    .line 557
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    goto/16 :goto_2

    .line 573
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_2

    .line 413
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 4
    .param p1, "expect"    # C

    .prologue
    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 170
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, p1, :cond_1

    .line 173
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 174
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 176
    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 179
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 182
    .end local v0    # "index":I
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 192
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 198
    .local v1, "index":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 200
    .local v0, "chLocal":C
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 201
    .local v2, "sp":I
    const/16 v3, 0x4c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    if-eq v0, v3, :cond_0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    const/16 v3, 0x46

    if-eq v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 210
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public scanBoolean()Z
    .locals 5

    .prologue
    .line 1426
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v3, "false"

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1427
    const/4 v0, 0x5

    .line 1428
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1443
    .local v1, "value":Z
    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1444
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1446
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :goto_1
    return v1

    .line 1429
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v3, "true"

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1430
    const/4 v0, 0x4

    .line 1431
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1432
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 1433
    const/4 v0, 0x1

    .line 1434
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1435
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 1436
    const/4 v0, 0x1

    .line 1437
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1439
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1440
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public scanFieldBoolean(J)Z
    .locals 9
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2646
    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2648
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v3

    .line 2649
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 2650
    const/4 v5, 0x0

    .line 2738
    :goto_0
    return v5

    .line 2654
    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "false"

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2655
    add-int/lit8 v3, v3, 0x5

    .line 2656
    const/4 v5, 0x0

    .line 2672
    .local v5, "value":Z
    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v6, v3

    .line 2673
    .local v1, "charIndex":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_5

    const/16 v0, 0x1a

    .line 2677
    .local v0, "chLocal":C
    :goto_2
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_7

    .line 2678
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2681
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2682
    .local v2, "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_6

    const/16 v6, 0x1a

    .line 2684
    :goto_3
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2686
    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2687
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v4

    .line 2689
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2657
    .end local v0    # "chLocal":C
    .end local v1    # "charIndex":I
    .end local v2    # "index":I
    .end local v5    # "value":Z
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "true"

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2658
    add-int/lit8 v3, v3, 0x4

    .line 2659
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2660
    .end local v5    # "value":Z
    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "\"false\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2661
    add-int/lit8 v3, v3, 0x7

    .line 2662
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2663
    .end local v5    # "value":Z
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v7, "\"true\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2664
    add-int/lit8 v3, v3, 0x6

    .line 2665
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2667
    .end local v5    # "value":Z
    :cond_4
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2668
    const/4 v5, 0x0

    goto :goto_0

    .line 2673
    .end local v3    # "offset":I
    .restart local v1    # "charIndex":I
    .restart local v4    # "offset":I
    .restart local v5    # "value":Z
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2675
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 2682
    .restart local v0    # "chLocal":C
    .restart local v2    # "index":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2684
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_3

    .line 2692
    .end local v2    # "index":I
    :cond_7
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_f

    .line 2693
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2694
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_9

    .line 2695
    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2696
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2699
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2700
    .restart local v2    # "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_8

    const/16 v6, 0x1a

    .line 2702
    :goto_4
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2732
    .end local v2    # "index":I
    :goto_5
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 2700
    .restart local v2    # "index":I
    :cond_8
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2702
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_4

    .line 2704
    .end local v2    # "index":I
    :cond_9
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_b

    .line 2705
    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2706
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2709
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2710
    .restart local v2    # "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_a

    const/16 v6, 0x1a

    .line 2712
    :goto_6
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_5

    .line 2710
    :cond_a
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2712
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_6

    .line 2714
    .end local v2    # "index":I
    :cond_b
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_d

    .line 2715
    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2716
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2719
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2720
    .restart local v2    # "index":I
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_c

    const/16 v6, 0x1a

    .line 2722
    :goto_7
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_5

    .line 2720
    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2722
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 2724
    .end local v2    # "index":I
    :cond_d
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_e

    .line 2725
    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2726
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2727
    const/16 v6, 0x1a

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_5

    .line 2729
    :cond_e
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2730
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2734
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_f
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2735
    const/4 v5, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0
.end method

.method public final scanFieldDouble(J)D
    .locals 21
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3303
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3305
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v7

    .line 3306
    .local v7, "offset":I
    if-nez v7, :cond_0

    .line 3307
    const-wide/16 v14, 0x0

    .line 3420
    :goto_0
    return-wide v14

    .line 3310
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3312
    .local v2, "chLocal":C
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v8

    add-int/lit8 v11, v13, -0x1

    .line 3313
    .local v11, "start":I
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_1

    const/4 v6, 0x1

    .line 3314
    .local v6, "negative":Z
    :goto_1
    if-eqz v6, :cond_14

    .line 3315
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3319
    :goto_2
    const/16 v13, 0x30

    if-lt v2, v13, :cond_c

    const/16 v13, 0x39

    if-gt v2, v13, :cond_c

    .line 3320
    add-int/lit8 v5, v2, -0x30

    .line 3322
    .local v5, "intVal":I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3323
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_2

    .line 3324
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    move v7, v8

    .line 3325
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_3

    .line 3313
    .end local v5    # "intVal":I
    .end local v6    # "negative":Z
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3331
    .restart local v5    # "intVal":I
    .restart local v6    # "negative":Z
    :cond_2
    const/4 v9, 0x1

    .line 3332
    .local v9, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_3

    const/4 v10, 0x1

    .line 3333
    .local v10, "small":Z
    :goto_4
    if-eqz v10, :cond_5

    .line 3334
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3335
    const/16 v13, 0x30

    if-lt v2, v13, :cond_4

    const/16 v13, 0x39

    if-gt v2, v13, :cond_4

    .line 3336
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3337
    mul-int/lit8 v9, v9, 0xa

    .line 3339
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3340
    const/16 v13, 0x30

    if-lt v2, v13, :cond_5

    const/16 v13, 0x39

    if-gt v2, v13, :cond_5

    .line 3341
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3342
    mul-int/lit8 v9, v9, 0xa

    move v7, v8

    .line 3343
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_5

    .line 3332
    .end local v7    # "offset":I
    .end local v10    # "small":Z
    .restart local v8    # "offset":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 3349
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    .restart local v10    # "small":Z
    :cond_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3350
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3354
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_5
    const/16 v13, 0x65

    if-eq v2, v13, :cond_6

    const/16 v13, 0x45

    if-ne v2, v13, :cond_8

    :cond_6
    const/4 v4, 0x1

    .line 3355
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_9

    .line 3356
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3357
    const/16 v13, 0x2b

    if-eq v2, v13, :cond_7

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_13

    .line 3358
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3361
    :goto_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_9

    const/16 v13, 0x39

    if-gt v2, v13, :cond_9

    .line 3362
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_7

    .line 3354
    .end local v4    # "exp":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    .restart local v4    # "exp":Z
    :cond_9
    move v7, v8

    .line 3369
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v7

    sub-int/2addr v13, v11

    add-int/lit8 v3, v13, -0x1

    .line 3370
    .local v3, "count":I
    if-nez v4, :cond_b

    const/16 v13, 0xa

    if-ge v3, v13, :cond_b

    .line 3371
    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 3372
    .local v14, "value":D
    if-eqz v6, :cond_a

    .line 3373
    neg-double v14, v14

    .line 3384
    :cond_a
    :goto_8
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_d

    .line 3385
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v7, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3386
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3387
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3388
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    .line 3376
    .end local v14    # "value":D
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v12

    .line 3377
    .local v12, "text":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .restart local v14    # "value":D
    goto :goto_8

    .line 3380
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    .end local v12    # "text":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3381
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3392
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v5    # "intVal":I
    .restart local v9    # "power":I
    .restart local v10    # "small":Z
    .restart local v14    # "value":D
    :cond_d
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_12

    .line 3393
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3394
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_e

    .line 3395
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3396
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3397
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3414
    :goto_9
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v7, v8

    .line 3420
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3398
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_e
    const/16 v13, 0x5d

    if-ne v2, v13, :cond_f

    .line 3399
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3400
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3401
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 3402
    :cond_f
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_10

    .line 3403
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3404
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3405
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 3406
    :cond_10
    const/16 v13, 0x1a

    if-ne v2, v13, :cond_11

    .line 3407
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3408
    const/16 v13, 0x14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3409
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 3411
    :cond_11
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3412
    const-wide/16 v14, 0x0

    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3416
    :cond_12
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3417
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .end local v3    # "count":I
    .end local v14    # "value":D
    :cond_13
    move v8, v7

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_7

    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    :cond_14
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 27
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3424
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3426
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v13

    .line 3427
    .local v13, "offset":I
    if-nez v13, :cond_0

    .line 3428
    const/4 v4, 0x0

    .line 3621
    :goto_0
    return-object v4

    .line 3430
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .local v14, "offset":I
    add-int v8, v22, v13

    .line 3431
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    const/16 v7, 0x1a

    .line 3434
    .local v7, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    .line 3435
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3436
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_0

    .line 3431
    .end local v7    # "chLocal":C
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3433
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1

    .line 3439
    .restart local v7    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_4

    const/16 v7, 0x1a

    .line 3444
    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v4, v0, [D

    .line 3445
    .local v4, "array":[D
    const/4 v5, 0x0

    .line 3448
    .local v5, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int/lit8 v17, v22, -0x1

    .line 3450
    .local v17, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    .line 3451
    .local v12, "negative":Z
    :goto_4
    if-eqz v12, :cond_3

    .line 3453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    const/16 v7, 0x1a

    :goto_5
    move v13, v14

    .line 3459
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_3
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_1d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_1d

    .line 3460
    add-int/lit8 v11, v7, -0x30

    .line 3463
    .local v11, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_7

    const/16 v7, 0x1a

    .line 3467
    :goto_7
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_8

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_8

    .line 3468
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    move v13, v14

    .line 3469
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_6

    .line 3440
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v11    # "intVal":I
    .end local v12    # "negative":Z
    .end local v17    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3442
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 3450
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v17    # "start":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 3454
    .end local v13    # "offset":I
    .restart local v12    # "negative":Z
    .restart local v14    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3456
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    .line 3464
    .restart local v11    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3466
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    .line 3475
    :cond_8
    const/4 v15, 0x1

    .line 3476
    .local v15, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    const/16 v16, 0x1

    .line 3477
    .local v16, "small":Z
    :goto_8
    if-eqz v16, :cond_d

    .line 3479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_a

    const/16 v7, 0x1a

    .line 3483
    :goto_9
    mul-int/lit8 v15, v15, 0xa

    .line 3484
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_c

    .line 3485
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3488
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_b

    const/16 v7, 0x1a

    .line 3493
    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_d

    .line 3494
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3495
    mul-int/lit8 v15, v15, 0xa

    move v13, v14

    .line 3496
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_a

    .line 3476
    .end local v13    # "offset":I
    .end local v16    # "small":Z
    .restart local v14    # "offset":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    .line 3480
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    .restart local v16    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3482
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    .line 3489
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3491
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    .line 3502
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3503
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3507
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v7, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    :cond_e
    const/4 v10, 0x1

    .line 3508
    .local v10, "exp":Z
    :goto_c
    if-eqz v10, :cond_14

    .line 3510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3511
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_11

    const/16 v7, 0x1a

    .line 3514
    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v7, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_25

    .line 3516
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_12

    const/16 v7, 0x1a

    .line 3522
    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_14

    .line 3524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_13

    const/16 v7, 0x1a

    :goto_f
    move v14, v13

    .line 3527
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_e

    .line 3507
    .end local v10    # "exp":Z
    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    .line 3511
    .end local v14    # "offset":I
    .restart local v10    # "exp":Z
    .restart local v13    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3513
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    .line 3517
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3519
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_e

    .line 3525
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3527
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_f

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_14
    move v13, v14

    .line 3534
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v22, v22, v17

    add-int/lit8 v9, v22, -0x1

    .line 3537
    .local v9, "count":I
    if-nez v10, :cond_18

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v9, v0, :cond_18

    .line 3538
    int-to-double v0, v11

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 3539
    .local v20, "value":D
    if-eqz v12, :cond_15

    .line 3540
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 3547
    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_16

    .line 3548
    array-length v0, v4

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 3549
    .local v19, "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3550
    move-object/from16 v4, v19

    .line 3552
    .end local v19    # "tmp":[D
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v20, v4, v5

    .line 3554
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1a

    .line 3556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_19

    const/16 v7, 0x1a

    :goto_11
    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_17
    move v5, v6

    .line 3572
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_3

    .line 3543
    .end local v20    # "value":D
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v18

    .line 3544
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .restart local v20    # "value":D
    goto :goto_10

    .line 3557
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .end local v18    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v14    # "offset":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3559
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_11

    .line 3560
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_1a
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_17

    .line 3562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3563
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1c

    const/16 v7, 0x1a

    .line 3575
    :goto_12
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v6, v0, :cond_1b

    .line 3576
    new-array v0, v6, [D

    move-object/from16 v19, v0

    .line 3577
    .restart local v19    # "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3578
    move-object/from16 v4, v19

    .line 3581
    .end local v19    # "tmp":[D
    :cond_1b
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1e

    .line 3582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3584
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3585
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v13, v14

    .line 3586
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .line 3563
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3565
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_12

    .line 3569
    .end local v6    # "arrayIndex":I
    .end local v9    # "count":I
    .end local v10    # "exp":Z
    .end local v11    # "intVal":I
    .end local v14    # "offset":I
    .end local v15    # "power":I
    .end local v16    # "small":Z
    .end local v20    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v13    # "offset":I
    :cond_1d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3570
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3589
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .restart local v6    # "arrayIndex":I
    .restart local v9    # "count":I
    .restart local v10    # "exp":Z
    .restart local v11    # "intVal":I
    .restart local v14    # "offset":I
    .restart local v15    # "power":I
    .restart local v16    # "small":Z
    .restart local v20    # "value":D
    :cond_1e
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_24

    .line 3591
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1f

    const/16 v7, 0x1a

    .line 3595
    :goto_13
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_20

    .line 3596
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3598
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3615
    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 3592
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3594
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_13

    .line 3599
    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_21

    .line 3600
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3602
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3603
    :cond_21
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_22

    .line 3604
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3606
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3607
    :cond_22
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v7, v0, :cond_23

    .line 3608
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3609
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3610
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_14

    .line 3612
    :cond_23
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3613
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3617
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_24
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3618
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .end local v6    # "arrayIndex":I
    .end local v9    # "count":I
    .end local v20    # "value":D
    .restart local v5    # "arrayIndex":I
    :cond_25
    move v14, v13

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 29
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3625
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3627
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v16

    .line 3628
    .local v16, "offset":I
    if-nez v16, :cond_0

    .line 3629
    const/16 v24, 0x0

    check-cast v24, [[D

    .line 3860
    :goto_0
    return-object v24

    .line 3631
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .local v17, "offset":I
    add-int v11, v24, v16

    .line 3632
    .local v11, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1

    const/16 v10, 0x1a

    .line 3636
    .local v10, "chLocal":C
    :goto_1
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-eq v10, v0, :cond_2

    .line 3637
    const/16 v24, -0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3638
    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_0

    .line 3632
    .end local v10    # "chLocal":C
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3634
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    .line 3641
    .restart local v10    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3642
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_5

    const/16 v10, 0x1a

    .line 3646
    :goto_2
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v7, v0, [[D

    .line 3647
    .local v7, "arrayarray":[[D
    const/4 v8, 0x0

    .local v8, "arrayarrayIndex":I
    move v9, v8

    .end local v8    # "arrayarrayIndex":I
    .local v9, "arrayarrayIndex":I
    move/from16 v17, v16

    .line 3650
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_3
    :goto_3
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-ne v10, v0, :cond_3

    .line 3652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_6

    const/16 v10, 0x1a

    .line 3657
    :goto_4
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v4, v0, [D

    .line 3658
    .local v4, "array":[D
    const/4 v5, 0x0

    .line 3661
    .local v5, "arrayIndex":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v19, v24, -0x1

    .line 3662
    .local v19, "start":I
    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_7

    const/4 v15, 0x1

    .line 3663
    .local v15, "negative":Z
    :goto_6
    if-eqz v15, :cond_4

    .line 3665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_8

    const/16 v10, 0x1a

    :goto_7
    move/from16 v16, v17

    .line 3671
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_4
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_1f

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_1f

    .line 3672
    add-int/lit8 v14, v10, -0x30

    .line 3675
    .local v14, "intVal":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_9

    const/16 v10, 0x1a

    .line 3680
    :goto_9
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_a

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_a

    .line 3681
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    move/from16 v16, v17

    .line 3682
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_8

    .line 3642
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v7    # "arrayarray":[[D
    .end local v9    # "arrayarrayIndex":I
    .end local v14    # "intVal":I
    .end local v15    # "negative":Z
    .end local v19    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3644
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_2

    .line 3653
    .restart local v7    # "arrayarray":[[D
    .restart local v9    # "arrayarrayIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3655
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_4

    .line 3662
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v19    # "start":I
    :cond_7
    const/4 v15, 0x0

    goto :goto_6

    .line 3666
    .end local v16    # "offset":I
    .restart local v15    # "negative":Z
    .restart local v17    # "offset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3668
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    .line 3676
    .restart local v14    # "intVal":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3678
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_9

    .line 3688
    :cond_a
    const/16 v18, 0x1

    .line 3689
    .local v18, "power":I
    const/16 v24, 0x2e

    move/from16 v0, v24

    if-ne v10, v0, :cond_e

    .line 3691
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_b

    const/16 v10, 0x1a

    .line 3696
    :goto_a
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_d

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_d

    .line 3697
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3698
    mul-int/lit8 v18, v18, 0xa

    .line 3701
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3702
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_c

    const/16 v10, 0x1a

    .line 3706
    :goto_c
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_e

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_e

    .line 3707
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3708
    mul-int/lit8 v18, v18, 0xa

    move/from16 v16, v17

    .line 3709
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_b

    .line 3692
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3694
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    .line 3702
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3704
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_c

    .line 3715
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3716
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .line 3720
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_e
    const/16 v24, 0x65

    move/from16 v0, v24

    if-eq v10, v0, :cond_f

    const/16 v24, 0x45

    move/from16 v0, v24

    if-ne v10, v0, :cond_11

    :cond_f
    const/4 v13, 0x1

    .line 3721
    .local v13, "exp":Z
    :goto_d
    if-eqz v13, :cond_15

    .line 3723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_12

    const/16 v10, 0x1a

    .line 3727
    :goto_e
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-eq v10, v0, :cond_10

    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2b

    .line 3729
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3730
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_13

    const/16 v10, 0x1a

    .line 3735
    :goto_f
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_15

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_15

    .line 3737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_14

    const/16 v10, 0x1a

    :goto_10
    move/from16 v17, v16

    .line 3740
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_f

    .line 3720
    .end local v13    # "exp":Z
    :cond_11
    const/4 v13, 0x0

    goto :goto_d

    .line 3724
    .end local v17    # "offset":I
    .restart local v13    # "exp":Z
    .restart local v16    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3726
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_e

    .line 3730
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3732
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_f

    .line 3738
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3740
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_10

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_15
    move/from16 v16, v17

    .line 3747
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    sub-int v24, v24, v19

    add-int/lit8 v12, v24, -0x1

    .line 3749
    .local v12, "count":I
    if-nez v13, :cond_19

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v12, v0, :cond_19

    .line 3750
    int-to-double v0, v14

    move-wide/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v22, v24, v26

    .line 3751
    .local v22, "value":D
    if-eqz v15, :cond_16

    .line 3752
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 3759
    :cond_16
    :goto_11
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_17

    .line 3760
    array-length v0, v4

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 3761
    .local v21, "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3762
    move-object/from16 v4, v21

    .line 3764
    .end local v21    # "tmp":[D
    :cond_17
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v22, v4, v5

    .line 3766
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_1b

    .line 3768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1a

    const/16 v10, 0x1a

    :goto_12
    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_18
    move v5, v6

    .line 3784
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_5

    .line 3755
    .end local v22    # "value":D
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v20

    .line 3756
    .local v20, "text":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .restart local v22    # "value":D
    goto :goto_11

    .line 3769
    .end local v5    # "arrayIndex":I
    .end local v16    # "offset":I
    .end local v20    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v17    # "offset":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3771
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_12

    .line 3772
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_1b
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_18

    .line 3774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1e

    const/16 v10, 0x1a

    .line 3787
    :goto_13
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v6, v0, :cond_1c

    .line 3788
    new-array v0, v6, [D

    move-object/from16 v21, v0

    .line 3789
    .restart local v21    # "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3790
    move-object/from16 v4, v21

    .line 3793
    .end local v21    # "tmp":[D
    :cond_1c
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v9, v0, :cond_1d

    .line 3794
    array-length v0, v7

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [[D

    move-object/from16 v21, v0

    .line 3795
    .local v21, "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3796
    move-object/from16 v7, v21

    .line 3798
    .end local v21    # "tmp":[[D
    :cond_1d
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    aput-object v4, v7, v9

    .line 3800
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_21

    .line 3802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3803
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_20

    const/16 v10, 0x1a

    :goto_14
    move v9, v8

    .end local v8    # "arrayarrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    move/from16 v17, v16

    .line 3814
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_3

    .line 3775
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3777
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_13

    .line 3781
    .end local v6    # "arrayIndex":I
    .end local v12    # "count":I
    .end local v13    # "exp":Z
    .end local v14    # "intVal":I
    .end local v17    # "offset":I
    .end local v18    # "power":I
    .end local v22    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    :cond_1f
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3782
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .line 3803
    .end local v5    # "arrayIndex":I
    .end local v9    # "arrayarrayIndex":I
    .restart local v6    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    .restart local v12    # "count":I
    .restart local v13    # "exp":Z
    .restart local v14    # "intVal":I
    .restart local v18    # "power":I
    .restart local v22    # "value":D
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3805
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_14

    .line 3806
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_21
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2a

    .line 3808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3809
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_23

    const/16 v10, 0x1a

    .line 3818
    :goto_15
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v8, v0, :cond_22

    .line 3819
    new-array v0, v8, [[D

    move-object/from16 v21, v0

    .line 3820
    .restart local v21    # "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3821
    move-object/from16 v7, v21

    .line 3824
    .end local v21    # "tmp":[[D
    :cond_22
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_24

    .line 3825
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v16, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3826
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3827
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3828
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v24, v7

    .line 3829
    goto/16 :goto_0

    .line 3809
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3811
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_15

    .line 3832
    :cond_24
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_29

    .line 3833
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v24, v24, v16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v10

    .line 3834
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_25

    .line 3835
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3836
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3837
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3854
    :goto_16
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v24, v7

    .line 3860
    goto/16 :goto_0

    .line 3838
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_25
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_26

    .line 3839
    const/16 v24, 0xf

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3841
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 3842
    :cond_26
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_27

    .line 3843
    const/16 v24, 0xd

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3844
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3845
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 3846
    :cond_27
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v10, v0, :cond_28

    .line 3847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3848
    const/16 v24, 0x14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3849
    const/16 v24, 0x1a

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_16

    .line 3851
    :cond_28
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3852
    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_0

    .line 3856
    :cond_29
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3857
    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_2a
    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_14

    .end local v6    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v12    # "count":I
    .end local v22    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    :cond_2b
    move/from16 v17, v16

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_f
.end method

.method public final scanFieldFloat(J)F
    .locals 15
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2742
    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2744
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v5

    .line 2745
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 2746
    const/4 v11, 0x0

    .line 2859
    :goto_0
    return v11

    .line 2749
    :cond_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2751
    .local v0, "chLocal":C
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v6

    add-int/lit8 v9, v12, -0x1

    .line 2752
    .local v9, "start":I
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_1

    const/4 v4, 0x1

    .line 2753
    .local v4, "negative":Z
    :goto_1
    if-eqz v4, :cond_14

    .line 2754
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2758
    :goto_2
    const/16 v12, 0x30

    if-lt v0, v12, :cond_c

    const/16 v12, 0x39

    if-gt v0, v12, :cond_c

    .line 2759
    add-int/lit8 v3, v0, -0x30

    .line 2761
    .local v3, "intVal":I
    :goto_3
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2762
    const/16 v12, 0x30

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    if-gt v0, v12, :cond_2

    .line 2763
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    move v5, v6

    .line 2764
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3

    .line 2752
    .end local v3    # "intVal":I
    .end local v4    # "negative":Z
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2770
    .restart local v3    # "intVal":I
    .restart local v4    # "negative":Z
    :cond_2
    const/4 v7, 0x1

    .line 2771
    .local v7, "power":I
    const/16 v12, 0x2e

    if-ne v0, v12, :cond_3

    const/4 v8, 0x1

    .line 2772
    .local v8, "small":Z
    :goto_4
    if-eqz v8, :cond_5

    .line 2773
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2774
    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    .line 2775
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 2776
    mul-int/lit8 v7, v7, 0xa

    .line 2778
    :goto_5
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2779
    const/16 v12, 0x30

    if-lt v0, v12, :cond_5

    const/16 v12, 0x39

    if-gt v0, v12, :cond_5

    .line 2780
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 2781
    mul-int/lit8 v7, v7, 0xa

    move v5, v6

    .line 2782
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_5

    .line 2771
    .end local v5    # "offset":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 2788
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "small":Z
    :cond_4
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2789
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2793
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    const/16 v12, 0x65

    if-eq v0, v12, :cond_6

    const/16 v12, 0x45

    if-ne v0, v12, :cond_8

    :cond_6
    const/4 v2, 0x1

    .line 2794
    .local v2, "exp":Z
    :goto_6
    if-eqz v2, :cond_9

    .line 2795
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2796
    const/16 v12, 0x2b

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_13

    .line 2797
    :cond_7
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2800
    :goto_7
    const/16 v12, 0x30

    if-lt v0, v12, :cond_9

    const/16 v12, 0x39

    if-gt v0, v12, :cond_9

    .line 2801
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_7

    .line 2793
    .end local v2    # "exp":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .restart local v2    # "exp":Z
    :cond_9
    move v5, v6

    .line 2808
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    add-int/lit8 v1, v12, -0x1

    .line 2809
    .local v1, "count":I
    if-nez v2, :cond_b

    const/16 v12, 0xa

    if-ge v1, v12, :cond_b

    .line 2810
    int-to-float v12, v3

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 2811
    .local v11, "value":F
    if-eqz v4, :cond_a

    .line 2812
    neg-float v11, v11

    .line 2823
    :cond_a
    :goto_8
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_d

    .line 2824
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2825
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2826
    const/4 v12, 0x3

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2827
    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    .line 2815
    .end local v11    # "value":F
    :cond_b
    invoke-direct {p0, v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v10

    .line 2816
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .restart local v11    # "value":F
    goto :goto_8

    .line 2819
    .end local v1    # "count":I
    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "value":F
    :cond_c
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2820
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2831
    .restart local v1    # "count":I
    .restart local v2    # "exp":Z
    .restart local v3    # "intVal":I
    .restart local v7    # "power":I
    .restart local v8    # "small":Z
    .restart local v11    # "value":F
    :cond_d
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_12

    .line 2832
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2833
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_e

    .line 2834
    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2835
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2836
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2853
    :goto_9
    const/4 v12, 0x4

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v5, v6

    .line 2859
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 2837
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_f

    .line 2838
    const/16 v12, 0xf

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2839
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2840
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 2841
    :cond_f
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_10

    .line 2842
    const/16 v12, 0xd

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2843
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    .line 2845
    :cond_10
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_11

    .line 2846
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2847
    const/16 v12, 0x14

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2848
    const/16 v12, 0x1a

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 2850
    :cond_11
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2851
    const/4 v11, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 2855
    :cond_12
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2856
    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v1    # "count":I
    .end local v11    # "value":F
    :cond_13
    move v6, v5

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_7

    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    :cond_14
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 23
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2863
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2865
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v12

    .line 2866
    .local v12, "offset":I
    if-nez v12, :cond_0

    .line 2867
    const/4 v3, 0x0

    .line 3060
    :goto_0
    return-object v3

    .line 2869
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    add-int v7, v20, v12

    .line 2870
    .local v7, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1

    const/16 v6, 0x1a

    .line 2873
    .local v6, "chLocal":C
    :goto_1
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    .line 2874
    const/16 v20, -0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2875
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_0

    .line 2870
    .end local v6    # "chLocal":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2872
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    .line 2878
    .restart local v6    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    const/16 v6, 0x1a

    .line 2883
    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v3, v0, [F

    .line 2884
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 2887
    .local v4, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    add-int/lit8 v16, v20, -0x1

    .line 2889
    .local v16, "start":I
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    const/4 v11, 0x1

    .line 2890
    .local v11, "negative":Z
    :goto_4
    if-eqz v11, :cond_3

    .line 2892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_6

    const/16 v6, 0x1a

    :goto_5
    move v12, v13

    .line 2898
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_3
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_1d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_1d

    .line 2899
    add-int/lit8 v10, v6, -0x30

    .line 2902
    .local v10, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_7

    const/16 v6, 0x1a

    .line 2906
    :goto_7
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_8

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_8

    .line 2907
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    move v12, v13

    .line 2908
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_6

    .line 2879
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v10    # "intVal":I
    .end local v11    # "negative":Z
    .end local v16    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2881
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    .line 2889
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v16    # "start":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 2893
    .end local v12    # "offset":I
    .restart local v11    # "negative":Z
    .restart local v13    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2895
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    .line 2903
    .restart local v10    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2905
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 2914
    :cond_8
    const/4 v14, 0x1

    .line 2915
    .local v14, "power":I
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v6, v0, :cond_9

    const/4 v15, 0x1

    .line 2916
    .local v15, "small":Z
    :goto_8
    if-eqz v15, :cond_d

    .line 2918
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_a

    const/16 v6, 0x1a

    .line 2922
    :goto_9
    mul-int/lit8 v14, v14, 0xa

    .line 2923
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_c

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_c

    .line 2924
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 2927
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_b

    const/16 v6, 0x1a

    .line 2932
    :goto_b
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_d

    .line 2933
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 2934
    mul-int/lit8 v14, v14, 0xa

    move v12, v13

    .line 2935
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_a

    .line 2915
    .end local v12    # "offset":I
    .end local v15    # "small":Z
    .restart local v13    # "offset":I
    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    .line 2919
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    .restart local v15    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2921
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_9

    .line 2928
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2930
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_b

    .line 2941
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2942
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2946
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_d
    const/16 v20, 0x65

    move/from16 v0, v20

    if-eq v6, v0, :cond_e

    const/16 v20, 0x45

    move/from16 v0, v20

    if-ne v6, v0, :cond_10

    :cond_e
    const/4 v9, 0x1

    .line 2947
    .local v9, "exp":Z
    :goto_c
    if-eqz v9, :cond_14

    .line 2949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_11

    const/16 v6, 0x1a

    .line 2953
    :goto_d
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v6, v0, :cond_f

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_25

    .line 2955
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_12

    const/16 v6, 0x1a

    .line 2961
    :goto_e
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_14

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_14

    .line 2963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 2964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v6, 0x1a

    :goto_f
    move v13, v12

    .line 2966
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_e

    .line 2946
    .end local v9    # "exp":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_c

    .line 2950
    .end local v13    # "offset":I
    .restart local v9    # "exp":Z
    .restart local v12    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2952
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    .line 2956
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2958
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_e

    .line 2964
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2966
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_f

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_14
    move v12, v13

    .line 2973
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    sub-int v20, v20, v16

    add-int/lit8 v8, v20, -0x1

    .line 2976
    .local v8, "count":I
    if-nez v9, :cond_18

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v8, v0, :cond_18

    .line 2977
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v19, v20, v21

    .line 2978
    .local v19, "value":F
    if-eqz v11, :cond_15

    .line 2979
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 2986
    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_16

    .line 2987
    array-length v0, v3

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 2988
    .local v18, "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2989
    move-object/from16 v3, v18

    .line 2991
    .end local v18    # "tmp":[F
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v19, v3, v4

    .line 2993
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1a

    .line 2995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 2996
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_19

    const/16 v6, 0x1a

    :goto_11
    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_17
    move v4, v5

    .line 3011
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_3

    .line 2982
    .end local v19    # "value":F
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v17

    .line 2983
    .local v17, "text":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .restart local v19    # "value":F
    goto :goto_10

    .line 2996
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .end local v17    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v13    # "offset":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2998
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_11

    .line 2999
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_1a
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_17

    .line 3001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3002
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1c

    const/16 v6, 0x1a

    .line 3014
    :goto_12
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_1b

    .line 3015
    new-array v0, v5, [F

    move-object/from16 v18, v0

    .line 3016
    .restart local v18    # "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3017
    move-object/from16 v3, v18

    .line 3020
    .end local v18    # "tmp":[F
    :cond_1b
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 3021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v13, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3022
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3023
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3024
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v12, v13

    .line 3025
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .line 3002
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3004
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_12

    .line 3008
    .end local v5    # "arrayIndex":I
    .end local v8    # "count":I
    .end local v9    # "exp":Z
    .end local v10    # "intVal":I
    .end local v13    # "offset":I
    .end local v14    # "power":I
    .end local v15    # "small":Z
    .end local v19    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v12    # "offset":I
    :cond_1d
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3009
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3028
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "count":I
    .restart local v9    # "exp":Z
    .restart local v10    # "intVal":I
    .restart local v13    # "offset":I
    .restart local v14    # "power":I
    .restart local v15    # "small":Z
    .restart local v19    # "value":F
    :cond_1e
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_24

    .line 3030
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1f

    const/16 v6, 0x1a

    .line 3034
    :goto_13
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_20

    .line 3035
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3037
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3054
    :goto_14
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 3031
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3033
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_13

    .line 3038
    :cond_20
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_21

    .line 3039
    const/16 v20, 0xf

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3040
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3041
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3042
    :cond_21
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_22

    .line 3043
    const/16 v20, 0xd

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3045
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    .line 3046
    :cond_22
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v6, v0, :cond_23

    .line 3047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3048
    const/16 v20, 0x14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3049
    const/16 v20, 0x1a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_14

    .line 3051
    :cond_23
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3052
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3056
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_24
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3057
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v8    # "count":I
    .end local v19    # "value":F
    .restart local v4    # "arrayIndex":I
    :cond_25
    move v13, v12

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_e
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 25
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3064
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3066
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v15

    .line 3067
    .local v15, "offset":I
    if-nez v15, :cond_0

    .line 3068
    const/16 v22, 0x0

    check-cast v22, [[F

    .line 3299
    :goto_0
    return-object v22

    .line 3070
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int v10, v22, v15

    .line 3071
    .local v10, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    const/16 v9, 0x1a

    .line 3075
    .local v9, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    .line 3076
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3077
    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 3071
    .end local v9    # "chLocal":C
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3073
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    .line 3080
    .restart local v9    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3081
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_5

    const/16 v9, 0x1a

    .line 3085
    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v6, v0, [[F

    .line 3086
    .local v6, "arrayarray":[[F
    const/4 v7, 0x0

    .local v7, "arrayarrayIndex":I
    move v8, v7

    .end local v7    # "arrayarrayIndex":I
    .local v8, "arrayarrayIndex":I
    move/from16 v16, v15

    .line 3089
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_3
    :goto_3
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-ne v9, v0, :cond_3

    .line 3091
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_6

    const/16 v9, 0x1a

    .line 3096
    :goto_4
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v3, v0, [F

    .line 3097
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 3100
    .local v4, "arrayIndex":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    add-int/lit8 v18, v22, -0x1

    .line 3101
    .local v18, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_7

    const/4 v14, 0x1

    .line 3102
    .local v14, "negative":Z
    :goto_6
    if-eqz v14, :cond_4

    .line 3104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_8

    const/16 v9, 0x1a

    :goto_7
    move/from16 v15, v16

    .line 3110
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_4
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_1f

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_1f

    .line 3111
    add-int/lit8 v13, v9, -0x30

    .line 3114
    .local v13, "intVal":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_9

    const/16 v9, 0x1a

    .line 3119
    :goto_9
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_a

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_a

    .line 3120
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    move/from16 v15, v16

    .line 3121
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_8

    .line 3081
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v6    # "arrayarray":[[F
    .end local v8    # "arrayarrayIndex":I
    .end local v13    # "intVal":I
    .end local v14    # "negative":Z
    .end local v18    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3083
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_2

    .line 3092
    .restart local v6    # "arrayarray":[[F
    .restart local v8    # "arrayarrayIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3094
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_4

    .line 3101
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v18    # "start":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 3105
    .end local v15    # "offset":I
    .restart local v14    # "negative":Z
    .restart local v16    # "offset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3107
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_7

    .line 3115
    .restart local v13    # "intVal":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3117
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_9

    .line 3127
    :cond_a
    const/16 v17, 0x1

    .line 3128
    .local v17, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v9, v0, :cond_e

    .line 3130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_b

    const/16 v9, 0x1a

    .line 3135
    :goto_a
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_d

    .line 3136
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3137
    mul-int/lit8 v17, v17, 0xa

    .line 3140
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_c

    const/16 v9, 0x1a

    .line 3145
    :goto_c
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_e

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_e

    .line 3146
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3147
    mul-int/lit8 v17, v17, 0xa

    move/from16 v15, v16

    .line 3148
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_b

    .line 3131
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3133
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_a

    .line 3141
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3143
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_c

    .line 3154
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3155
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .line 3159
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_e
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v9, v0, :cond_f

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v9, v0, :cond_11

    :cond_f
    const/4 v12, 0x1

    .line 3160
    .local v12, "exp":Z
    :goto_d
    if-eqz v12, :cond_15

    .line 3162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_12

    const/16 v9, 0x1a

    .line 3166
    :goto_e
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v9, v0, :cond_10

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2b

    .line 3168
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_13

    const/16 v9, 0x1a

    .line 3174
    :goto_f
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_15

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_15

    .line 3176
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_14

    const/16 v9, 0x1a

    :goto_10
    move/from16 v16, v15

    .line 3179
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_f

    .line 3159
    .end local v12    # "exp":Z
    :cond_11
    const/4 v12, 0x0

    goto :goto_d

    .line 3163
    .end local v16    # "offset":I
    .restart local v12    # "exp":Z
    .restart local v15    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3165
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_e

    .line 3169
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3171
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    .line 3177
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3179
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_10

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_15
    move/from16 v15, v16

    .line 3186
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    sub-int v22, v22, v18

    add-int/lit8 v11, v22, -0x1

    .line 3188
    .local v11, "count":I
    if-nez v12, :cond_19

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v11, v0, :cond_19

    .line 3189
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    .line 3190
    .local v21, "value":F
    if-eqz v14, :cond_16

    .line 3191
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 3198
    :cond_16
    :goto_11
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v4, v0, :cond_17

    .line 3199
    array-length v0, v3

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 3200
    .local v20, "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3201
    move-object/from16 v3, v20

    .line 3203
    .end local v20    # "tmp":[F
    :cond_17
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v21, v3, v4

    .line 3205
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_1b

    .line 3207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1a

    const/16 v9, 0x1a

    :goto_12
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_18
    move v4, v5

    .line 3223
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_5

    .line 3194
    .end local v21    # "value":F
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v19

    .line 3195
    .local v19, "text":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .restart local v21    # "value":F
    goto :goto_11

    .line 3208
    .end local v4    # "arrayIndex":I
    .end local v15    # "offset":I
    .end local v19    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3210
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_12

    .line 3211
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_1b
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_18

    .line 3213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1e

    const/16 v9, 0x1a

    .line 3226
    :goto_13
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v5, v0, :cond_1c

    .line 3227
    new-array v0, v5, [F

    move-object/from16 v20, v0

    .line 3228
    .restart local v20    # "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3229
    move-object/from16 v3, v20

    .line 3232
    .end local v20    # "tmp":[F
    :cond_1c
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1d

    .line 3233
    array-length v0, v6

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    .line 3234
    .local v20, "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3235
    move-object/from16 v6, v20

    .line 3237
    .end local v20    # "tmp":[[F
    :cond_1d
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    aput-object v3, v6, v8

    .line 3239
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_21

    .line 3241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_20

    const/16 v9, 0x1a

    :goto_14
    move v8, v7

    .end local v7    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    move/from16 v16, v15

    .line 3253
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_3

    .line 3214
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3216
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_13

    .line 3220
    .end local v5    # "arrayIndex":I
    .end local v11    # "count":I
    .end local v12    # "exp":Z
    .end local v13    # "intVal":I
    .end local v16    # "offset":I
    .end local v17    # "power":I
    .end local v21    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v15    # "offset":I
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3221
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .line 3242
    .end local v4    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .restart local v5    # "arrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    .restart local v11    # "count":I
    .restart local v12    # "exp":Z
    .restart local v13    # "intVal":I
    .restart local v17    # "power":I
    .restart local v21    # "value":F
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3244
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_14

    .line 3245
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_21
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2a

    .line 3247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_23

    const/16 v9, 0x1a

    .line 3257
    :goto_15
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v7, v0, :cond_22

    .line 3258
    new-array v0, v7, [[F

    move-object/from16 v20, v0

    .line 3259
    .restart local v20    # "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3260
    move-object/from16 v6, v20

    .line 3263
    .end local v20    # "tmp":[[F
    :cond_22
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_24

    .line 3264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v15, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3265
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3266
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3267
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v22, v6

    .line 3268
    goto/16 :goto_0

    .line 3248
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3250
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_15

    .line 3271
    :cond_24
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_29

    .line 3272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v22, v22, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    .line 3273
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_25

    .line 3274
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3276
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3293
    :goto_16
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v22, v6

    .line 3299
    goto/16 :goto_0

    .line 3277
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_25
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_26

    .line 3278
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3280
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 3281
    :cond_26
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_27

    .line 3282
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3284
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    .line 3285
    :cond_27
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v9, v0, :cond_28

    .line 3286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3287
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3288
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_16

    .line 3290
    :cond_28
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3291
    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 3295
    :cond_29
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3296
    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_2a
    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_14

    .end local v5    # "arrayIndex":I
    .end local v7    # "arrayarrayIndex":I
    .end local v11    # "count":I
    .end local v21    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_2b
    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_f
.end method

.method public scanFieldInt(J)I
    .locals 9
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2127
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2129
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v3

    .line 2130
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 2131
    const/4 v6, 0x0

    .line 2247
    :goto_0
    return v6

    .line 2135
    :cond_0
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v7, v3

    .line 2136
    .local v1, "charIndex":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_1

    const/16 v0, 0x1a

    .line 2140
    .local v0, "chLocal":C
    :goto_1
    const/4 v5, 0x0

    .line 2141
    .local v5, "quote":Z
    const/16 v7, 0x22

    if-ne v0, v7, :cond_15

    .line 2142
    const/4 v5, 0x1

    .line 2144
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v7, v4

    .line 2145
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_2

    const/16 v0, 0x1a

    .line 2151
    :goto_2
    const/16 v7, 0x30

    if-lt v0, v7, :cond_9

    const/16 v7, 0x39

    if-gt v0, v7, :cond_9

    .line 2152
    add-int/lit8 v6, v0, -0x30

    .line 2155
    .local v6, "value":I
    :goto_3
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v7, v3

    .line 2156
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_3

    const/16 v0, 0x1a

    .line 2159
    :goto_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_4

    const/16 v7, 0x39

    if-gt v0, v7, :cond_4

    .line 2160
    mul-int/lit8 v7, v6, 0xa

    add-int/lit8 v8, v0, -0x30

    add-int v6, v7, v8

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_3

    .line 2136
    .end local v0    # "chLocal":C
    .end local v3    # "offset":I
    .end local v5    # "quote":Z
    .end local v6    # "value":I
    .restart local v4    # "offset":I
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2138
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2145
    .end local v4    # "offset":I
    .restart local v0    # "chLocal":C
    .restart local v3    # "offset":I
    .restart local v5    # "quote":Z
    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2147
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 2156
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":I
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2158
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 2161
    :cond_4
    const/16 v7, 0x2e

    if-ne v0, v7, :cond_5

    .line 2162
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2163
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2164
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_5
    const/16 v7, 0x22

    if-ne v0, v7, :cond_7

    .line 2165
    if-nez v5, :cond_6

    .line 2166
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2167
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2169
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_6
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v2, v7, v4

    .line 2170
    .local v2, "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_8

    const/16 v0, 0x1a

    :goto_5
    move v4, v3

    .line 2178
    .end local v2    # "index":I
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    if-gez v6, :cond_a

    .line 2179
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2180
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2170
    .restart local v2    # "index":I
    :cond_8
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2172
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2183
    .end local v2    # "index":I
    .end local v6    # "value":I
    :cond_9
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2184
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2187
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":I
    :cond_a
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_c

    .line 2188
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2191
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2192
    .restart local v2    # "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_b

    const/16 v7, 0x1a

    .line 2194
    :goto_6
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2196
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2197
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v4

    .line 2198
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2192
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_b
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2194
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_6

    .line 2201
    .end local v2    # "index":I
    :cond_c
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_14

    .line 2202
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v7, v4

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2203
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_e

    .line 2204
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2205
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2208
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2209
    .restart local v2    # "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_d

    const/16 v7, 0x1a

    .line 2211
    :goto_7
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2241
    .end local v2    # "index":I
    :goto_8
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 2209
    .restart local v2    # "index":I
    :cond_d
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2211
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    .line 2213
    .end local v2    # "index":I
    :cond_e
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_10

    .line 2214
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2215
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2218
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2219
    .restart local v2    # "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_f

    const/16 v7, 0x1a

    .line 2221
    :goto_9
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2219
    :cond_f
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2221
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    .line 2223
    .end local v2    # "index":I
    :cond_10
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_12

    .line 2224
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2225
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2228
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v7, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2229
    .restart local v2    # "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_11

    const/16 v7, 0x1a

    .line 2231
    :goto_a
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2229
    :cond_11
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2231
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_a

    .line 2233
    .end local v2    # "index":I
    :cond_12
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_13

    .line 2234
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2235
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2236
    const/16 v7, 0x1a

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2238
    :cond_13
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2239
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2243
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_14
    const/4 v7, -0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2244
    const/4 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .end local v3    # "offset":I
    .end local v6    # "value":I
    .restart local v4    # "offset":I
    :cond_15
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_2
.end method

.method public final scanFieldIntArray(J)[I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2251
    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2253
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v6

    .line 2254
    .local v6, "offset":I
    if-nez v6, :cond_0

    .line 2255
    const/4 v0, 0x0

    .line 2380
    :goto_0
    return-object v0

    .line 2258
    :cond_0
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    add-int v4, v10, v6

    .line 2259
    .local v4, "charIndex":I
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_1

    const/16 v3, 0x1a

    .line 2262
    .local v3, "chLocal":C
    :goto_1
    const/16 v10, 0x5b

    if-eq v3, v10, :cond_2

    .line 2263
    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2264
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 2259
    .end local v3    # "chLocal":C
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2261
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2267
    .restart local v3    # "chLocal":C
    :cond_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2268
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_4

    const/16 v3, 0x1a

    .line 2273
    :goto_2
    const/16 v10, 0x10

    new-array v0, v10, [I

    .line 2274
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 2276
    .local v1, "arrayIndex":I
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_17

    .line 2278
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2279
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_5

    const/16 v3, 0x1a

    :goto_3
    move v6, v7

    .line 2338
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_4
    array-length v10, v0

    if-eq v1, v10, :cond_3

    .line 2339
    new-array v8, v1, [I

    .line 2340
    .local v8, "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2341
    move-object v0, v8

    .line 2344
    .end local v8    # "tmp":[I
    :cond_3
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_f

    .line 2345
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2346
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2347
    const/4 v10, 0x3

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2348
    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 2268
    .end local v0    # "array":[I
    .end local v1    # "arrayIndex":I
    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2270
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 2279
    .end local v6    # "offset":I
    .restart local v0    # "array":[I
    .restart local v1    # "arrayIndex":I
    .restart local v7    # "offset":I
    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2281
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .line 2309
    .end local v1    # "arrayIndex":I
    .local v2, "arrayIndex":I
    .local v5, "nagative":Z
    .local v9, "value":I
    :cond_6
    array-length v10, v0

    if-lt v2, v10, :cond_7

    .line 2310
    array-length v10, v0

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    new-array v8, v10, [I

    .line 2311
    .restart local v8    # "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2312
    move-object v0, v8

    .line 2314
    .end local v8    # "tmp":[I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    if-eqz v5, :cond_8

    neg-int v9, v9

    .end local v9    # "value":I
    :cond_8
    aput v9, v0, v2

    .line 2316
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_c

    .line 2318
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2319
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_b

    const/16 v3, 0x1a

    :goto_5
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .line 2284
    .end local v5    # "nagative":Z
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :goto_6
    const/4 v5, 0x0

    .line 2285
    .restart local v5    # "nagative":Z
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_16

    .line 2287
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2288
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_9

    const/16 v3, 0x1a

    .line 2291
    :goto_7
    const/4 v5, 0x1

    .line 2293
    :goto_8
    const/16 v10, 0x30

    if-lt v3, v10, :cond_e

    const/16 v10, 0x39

    if-gt v3, v10, :cond_e

    .line 2294
    add-int/lit8 v9, v3, -0x30

    .line 2297
    .restart local v9    # "value":I
    :goto_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2298
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_a

    const/16 v3, 0x1a

    .line 2302
    :goto_a
    const/16 v10, 0x30

    if-lt v3, v10, :cond_6

    const/16 v10, 0x39

    if-gt v3, v10, :cond_6

    .line 2303
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v3, -0x30

    add-int v9, v10, v11

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_9

    .line 2288
    .end local v9    # "value":I
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2290
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_7

    .line 2298
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    .restart local v9    # "value":I
    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2300
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_a

    .line 2319
    .end local v2    # "arrayIndex":I
    .end local v7    # "offset":I
    .end local v9    # "value":I
    .restart local v1    # "arrayIndex":I
    .restart local v6    # "offset":I
    :cond_b
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2321
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 2322
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_c
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_15

    .line 2324
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2325
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_d

    const/16 v3, 0x1a

    .line 2328
    :goto_b
    goto/16 :goto_4

    .line 2325
    :cond_d
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2327
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_b

    .line 2331
    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    :cond_e
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2332
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2352
    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_f
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_14

    .line 2353
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 2354
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_10

    .line 2355
    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2356
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2374
    :goto_c
    const/4 v10, 0x4

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 2380
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2358
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_10
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_11

    .line 2359
    const/16 v10, 0xf

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2360
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2361
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_c

    .line 2362
    :cond_11
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_12

    .line 2363
    const/16 v10, 0xd

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2364
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2365
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_c

    .line 2366
    :cond_12
    const/16 v10, 0x1a

    if-ne v3, v10, :cond_13

    .line 2367
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2368
    const/16 v10, 0x14

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2369
    const/16 v10, 0x1a

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_c

    .line 2371
    :cond_13
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2372
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2376
    :cond_14
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2377
    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v6    # "offset":I
    .restart local v5    # "nagative":Z
    .restart local v7    # "offset":I
    :cond_15
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_5

    .end local v1    # "arrayIndex":I
    .end local v6    # "offset":I
    .restart local v2    # "arrayIndex":I
    .restart local v7    # "offset":I
    :cond_16
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_8

    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_17
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_6
.end method

.method public scanFieldLong(J)J
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2384
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2386
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    .line 2387
    .local v2, "offset":I
    if-nez v2, :cond_0

    .line 2388
    const-wide/16 v6, 0x0

    .line 2513
    :goto_0
    return-wide v6

    .line 2394
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int v1, v5, v2

    .line 2395
    .local v1, "index":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_1

    const/16 v0, 0x1a

    .line 2402
    .local v0, "chLocal":C
    :goto_1
    const/4 v4, 0x0

    .line 2403
    .local v4, "quote":Z
    const/16 v5, 0x22

    if-ne v0, v5, :cond_15

    .line 2404
    const/4 v4, 0x1

    .line 2407
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int v1, v5, v3

    .line 2408
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_2

    const/16 v0, 0x1a

    .line 2414
    :goto_2
    const/16 v5, 0x30

    if-lt v0, v5, :cond_9

    const/16 v5, 0x39

    if-gt v0, v5, :cond_9

    .line 2416
    add-int/lit8 v5, v0, -0x30

    int-to-long v6, v5

    .line 2420
    .local v6, "value":J
    :goto_3
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v5, v2

    .line 2421
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_3

    const/16 v0, 0x1a

    .line 2425
    :goto_4
    const/16 v5, 0x30

    if-lt v0, v5, :cond_4

    const/16 v5, 0x39

    if-gt v0, v5, :cond_4

    .line 2426
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v5, v0, -0x30

    int-to-long v10, v5

    add-long v6, v8, v10

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_3

    .line 2395
    .end local v0    # "chLocal":C
    .end local v2    # "offset":I
    .end local v4    # "quote":Z
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2397
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2408
    .end local v3    # "offset":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "offset":I
    .restart local v4    # "quote":Z
    :cond_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2410
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 2421
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2423
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 2427
    :cond_4
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_5

    .line 2428
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2429
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2430
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_5
    const/16 v5, 0x22

    if-ne v0, v5, :cond_7

    .line 2431
    if-nez v4, :cond_6

    .line 2432
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2433
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 2435
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int v1, v5, v3

    .line 2436
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_8

    const/16 v0, 0x1a

    :goto_5
    move v3, v2

    .line 2444
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    .line 2445
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2446
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 2436
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2438
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2449
    .end local v6    # "value":J
    :cond_9
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2450
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2453
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    .restart local v6    # "value":J
    :cond_a
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_c

    .line 2454
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2457
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2458
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_b

    const/16 v5, 0x1a

    .line 2460
    :goto_6
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2462
    const/4 v5, 0x3

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2463
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v2, v3

    .line 2464
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .line 2458
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_b
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2460
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 2467
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_14

    .line 2468
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2469
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_e

    .line 2470
    const/16 v5, 0x10

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2471
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2474
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2475
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_d

    const/16 v5, 0x1a

    .line 2477
    :goto_7
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2507
    :goto_8
    const/4 v5, 0x4

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 2475
    :cond_d
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2477
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_7

    .line 2479
    :cond_e
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_10

    .line 2480
    const/16 v5, 0xf

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2481
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2484
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2485
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_f

    const/16 v5, 0x1a

    .line 2487
    :goto_9
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2485
    :cond_f
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2487
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_9

    .line 2489
    :cond_10
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_12

    .line 2490
    const/16 v5, 0xd

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2491
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2494
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2495
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_11

    const/16 v5, 0x1a

    .line 2497
    :goto_a
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2495
    :cond_11
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2497
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_a

    .line 2499
    :cond_12
    const/16 v5, 0x1a

    if-ne v0, v5, :cond_13

    .line 2500
    const/16 v5, 0x14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2501
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v5, v8

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2502
    const/16 v5, 0x1a

    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2504
    :cond_13
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2505
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2509
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_14
    const/4 v5, -0x1

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2510
    const-wide/16 v6, 0x0

    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_0

    .end local v2    # "offset":I
    .end local v6    # "value":J
    .restart local v3    # "offset":I
    :cond_15
    move v2, v3

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto/16 :goto_2
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 19
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2517
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2519
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v9

    .line 2520
    .local v9, "offset":I
    if-nez v9, :cond_0

    .line 2521
    const/4 v14, 0x0

    .line 2642
    :goto_0
    return-object v14

    .line 2526
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    add-int v8, v15, v9

    .line 2527
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_1

    .line 2528
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unclosed str, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2530
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2534
    .local v1, "chLocal":C
    const/16 v15, 0x22

    if-eq v1, v15, :cond_2

    .line 2535
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2537
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2540
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_2
    const/16 v11, 0x22

    .line 2541
    .local v11, "quoteChar":C
    const/4 v6, 0x0

    .line 2542
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v13, v15, v10

    .line 2543
    .local v13, "startIndex":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2544
    .local v5, "endIndex":I
    const/4 v15, -0x1

    if-ne v5, v15, :cond_3

    .line 2545
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unclosed str, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 2548
    :cond_3
    const/4 v14, 0x0

    .line 2549
    .local v14, "strVal":Ljava/lang/String;
    sget-boolean v15, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v15, :cond_4

    .line 2550
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2557
    :goto_1
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 2559
    :goto_2
    const/4 v12, 0x0

    .line 2560
    .local v12, "slashCount":I
    add-int/lit8 v7, v5, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_5

    .line 2561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2562
    const/4 v6, 0x1

    .line 2563
    add-int/lit8 v12, v12, 0x1

    .line 2560
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2552
    .end local v7    # "i":I
    .end local v12    # "slashCount":I
    :cond_4
    sub-int v4, v5, v13

    .line 2553
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    .line 2554
    .local v3, "chars":[C
    new-instance v14, Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v4}, Ljava/lang/String;-><init>([CII)V

    .restart local v14    # "strVal":Ljava/lang/String;
    goto :goto_1

    .line 2568
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .restart local v7    # "i":I
    .restart local v12    # "slashCount":I
    :cond_5
    rem-int/lit8 v15, v12, 0x2

    if-nez v15, :cond_7

    .line 2574
    sub-int v4, v5, v13

    .line 2575
    .restart local v4    # "chars_len":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    .line 2576
    .restart local v3    # "chars":[C
    if-eqz v6, :cond_8

    .line 2577
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v14

    .line 2589
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v12    # "slashCount":I
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v8, v5

    .line 2590
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_9

    const/16 v1, 0x1a

    .line 2595
    :goto_5
    const/16 v15, 0x2c

    if-ne v1, v15, :cond_b

    .line 2596
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2599
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2600
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_a

    const/16 v15, 0x1a

    .line 2602
    :goto_6
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2604
    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2605
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v9, v10

    .line 2606
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2571
    .end local v9    # "offset":I
    .restart local v7    # "i":I
    .restart local v10    # "offset":I
    .restart local v12    # "slashCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    add-int/lit8 v17, v5, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2572
    goto/16 :goto_2

    .line 2579
    .restart local v3    # "chars":[C
    .restart local v4    # "chars_len":I
    :cond_8
    new-instance v14, Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2580
    .restart local v14    # "strVal":Ljava/lang/String;
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 2581
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 2590
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v12    # "slashCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2592
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2600
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2602
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_6

    .line 2609
    :cond_b
    const/16 v15, 0x7d

    if-ne v1, v15, :cond_11

    .line 2611
    add-int/lit8 v5, v5, 0x1

    move v2, v5

    .line 2612
    .local v2, "charIndex":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v15, :cond_c

    const/16 v1, 0x1a

    .line 2616
    :goto_7
    const/16 v15, 0x2c

    if-ne v1, v15, :cond_d

    .line 2617
    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2618
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2619
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2636
    :goto_8
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v9, v10

    .line 2642
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2612
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2614
    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2620
    :cond_d
    const/16 v15, 0x5d

    if-ne v1, v15, :cond_e

    .line 2621
    const/16 v15, 0xf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2622
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2623
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 2624
    :cond_e
    const/16 v15, 0x7d

    if-ne v1, v15, :cond_f

    .line 2625
    const/16 v15, 0xd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2626
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2627
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    .line 2628
    :cond_f
    const/16 v15, 0x1a

    if-ne v1, v15, :cond_10

    .line 2629
    const/16 v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2630
    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2631
    const/16 v15, 0x1a

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 2633
    :cond_10
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2634
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2638
    .end local v2    # "charIndex":I
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    .restart local v14    # "strVal":Ljava/lang/String;
    :cond_11
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .end local v14    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0
.end method

.method public scanFieldSymbol(J)J
    .locals 11
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3864
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3866
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v5

    .line 3867
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 3868
    const-wide/16 v2, 0x0

    .line 3950
    :goto_0
    return-wide v2

    .line 3871
    :cond_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int v1, v8, v5

    .line 3872
    .local v1, "charIndex":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_1

    const/16 v0, 0x1a

    .line 3876
    .local v0, "chLocal":C
    :goto_1
    const/16 v8, 0x22

    if-eq v0, v8, :cond_2

    .line 3877
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3878
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 3872
    .end local v0    # "chLocal":C
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3874
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 3881
    .restart local v0    # "chLocal":C
    :cond_2
    const-wide/32 v2, -0x7ee3623b

    .line 3882
    .local v2, "hash":J
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v8, v6

    .local v7, "start":I
    move v5, v6

    .line 3884
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v8, v5

    .line 3885
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    .line 3889
    :goto_3
    const/16 v8, 0x22

    if-ne v0, v8, :cond_5

    .line 3890
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int v1, v8, v6

    .line 3891
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_4

    const/16 v0, 0x1a

    .line 3906
    :goto_4
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_7

    .line 3907
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3910
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v8, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3911
    .local v4, "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v8, :cond_6

    const/16 v8, 0x1a

    .line 3913
    :goto_5
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 3915
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 3885
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3887
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 3891
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3893
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 3897
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 3898
    const-wide/32 v8, 0x1000193

    mul-long/2addr v2, v8

    .line 3900
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_e

    .line 3901
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3902
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 3911
    .restart local v4    # "index":I
    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3913
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_5

    .line 3919
    .end local v4    # "index":I
    :cond_7
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    .line 3920
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v8, v5

    .line 3921
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    .line 3924
    :goto_6
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_9

    .line 3925
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3926
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3927
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3944
    :goto_7
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v5, v6

    .line 3950
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3921
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3923
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 3928
    :cond_9
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_a

    .line 3929
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3930
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3931
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 3932
    :cond_a
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    .line 3933
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3934
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3935
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    .line 3936
    :cond_b
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_c

    .line 3937
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3938
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3939
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_7

    .line 3941
    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3942
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3946
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3947
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 55
    .param p1, "strict"    # Z

    .prologue
    .line 3954
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    sub-int v42, v18, v19

    .line 3956
    .local v42, "rest":I
    if-nez p1, :cond_4

    const/16 v18, 0xd

    move/from16 v0, v42

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 3957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "/Date("

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v42

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x2f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v42

    add-int/lit8 v18, v18, -0x2

    .line 3958
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x29

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 3960
    const/16 v41, -0x1

    .line 3961
    .local v41, "plusIndex":I
    const/16 v34, 0x6

    .local v34, "i":I
    :goto_0
    move/from16 v0, v34

    move/from16 v1, v42

    if-ge v0, v1, :cond_2

    .line 3962
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v34

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v30

    .line 3963
    .local v30, "c":C
    const/16 v18, 0x2b

    move/from16 v0, v30

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 3964
    move/from16 v41, v34

    .line 3961
    :cond_0
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 3965
    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v18, 0x39

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 3969
    .end local v30    # "c":C
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 3970
    const/16 v18, 0x0

    .line 4239
    .end local v34    # "i":I
    .end local v41    # "plusIndex":I
    :goto_1
    return v18

    .line 3972
    .restart local v34    # "i":I
    .restart local v41    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v40, v18, 0x6

    .line 3973
    .local v40, "offset":I
    sub-int v18, v41, v40

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v39

    .line 3974
    .local v39, "numberText":Ljava/lang/String;
    const/16 v18, 0xa

    move-object/from16 v0, v39

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v36

    .line 3976
    .local v36, "millis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 3977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3979
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3980
    const/16 v18, 0x1

    goto :goto_1

    .line 3984
    .end local v34    # "i":I
    .end local v36    # "millis":J
    .end local v39    # "numberText":Ljava/lang/String;
    .end local v40    # "offset":I
    .end local v41    # "plusIndex":I
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0xe

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x11

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 3987
    :cond_5
    if-eqz p1, :cond_6

    .line 3988
    const/16 v18, 0x0

    goto :goto_1

    .line 3991
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 3992
    .local v4, "y0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 3993
    .local v5, "y1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 3994
    .local v6, "y2":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 3995
    .local v7, "y3":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 3996
    .local v8, "M0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    .line 3997
    .local v9, "M1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v10

    .line 3998
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4000
    .local v11, "d1":C
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_7

    .line 4001
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 4004
    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4007
    const/16 v18, 0x8

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 4008
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4009
    .local v12, "h0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 4010
    .local v13, "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4011
    .local v14, "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4012
    .local v15, "m1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v16

    .line 4013
    .local v16, "s0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4015
    .local v17, "s1":C
    invoke-static/range {v12 .. v17}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_8

    .line 4016
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4019
    :cond_8
    const/16 v18, 0x11

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 4020
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    .line 4021
    .local v27, "S0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    .line 4022
    .local v28, "S1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    .line 4023
    .local v29, "S2":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 4024
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4026
    :cond_a
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    .line 4027
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4029
    :cond_c
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 4030
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4033
    :cond_e
    add-int/lit8 v18, v27, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v28, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v29, -0x30

    add-int v36, v18, v19

    .line 4038
    .end local v27    # "S0":C
    .end local v28    # "S1":C
    .end local v29    # "S2":C
    .local v36, "millis":I
    :goto_2
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v33, v18, v19

    .line 4039
    .local v33, "hour":I
    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v38, v18, v19

    .line 4040
    .local v38, "minute":I
    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v43, v18, v19

    .line 4045
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .local v43, "seconds":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4050
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4051
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4035
    .end local v33    # "hour":I
    .end local v36    # "millis":I
    .end local v38    # "minute":I
    .end local v43    # "seconds":I
    .restart local v12    # "h0":C
    .restart local v13    # "h1":C
    .restart local v14    # "m0":C
    .restart local v15    # "m1":C
    .restart local v16    # "s0":C
    .restart local v17    # "s1":C
    :cond_f
    const/16 v36, 0x0

    .restart local v36    # "millis":I
    goto :goto_2

    .line 4042
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .end local v36    # "millis":I
    :cond_10
    const/16 v36, 0x0

    .restart local v36    # "millis":I
    move/from16 v43, v36

    .restart local v43    # "seconds":I
    move/from16 v38, v36

    .restart local v38    # "minute":I
    move/from16 v33, v36

    .restart local v33    # "hour":I
    goto :goto_3

    .line 4054
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v33    # "hour":I
    .end local v36    # "millis":I
    .end local v38    # "minute":I
    .end local v43    # "seconds":I
    :cond_11
    const/16 v18, 0xa

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 4055
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4058
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 4059
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4061
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 4062
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4065
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4066
    .restart local v4    # "y0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4067
    .restart local v5    # "y1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 4068
    .restart local v6    # "y2":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4069
    .restart local v7    # "y3":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4070
    .restart local v8    # "M0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    .line 4071
    .restart local v9    # "M1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v10

    .line 4072
    .restart local v10    # "d0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4073
    .restart local v11    # "d1":C
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_15

    .line 4074
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v18, p0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    .line 4077
    invoke-direct/range {v18 .. v26}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4079
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v44

    .line 4080
    .local v44, "t":C
    const/16 v18, 0x54

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    const/16 v18, 0x20

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    if-nez p1, :cond_17

    .line 4081
    :cond_16
    const/16 v18, 0x13

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    .line 4082
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4084
    :cond_17
    const/16 v18, 0x22

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    const/16 v18, 0x1a

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 4085
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4092
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4093
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4095
    :cond_19
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4098
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 4099
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4101
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1c

    .line 4102
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4105
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4106
    .restart local v12    # "h0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 4107
    .restart local v13    # "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4108
    .restart local v14    # "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4109
    .restart local v15    # "m1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v16

    .line 4110
    .restart local v16    # "s0":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4112
    .restart local v17    # "s1":C
    invoke-static/range {v12 .. v17}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_1d

    .line 4113
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4116
    :cond_1d
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v33, v18, v19

    .line 4117
    .restart local v33    # "hour":I
    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v38, v18, v19

    .line 4118
    .restart local v38    # "minute":I
    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v43, v18, v19

    .line 4119
    .restart local v43    # "seconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    .line 4124
    .local v31, "dot":C
    const/16 v18, 0x2e

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 4125
    const/16 v18, 0x15

    move/from16 v0, v42

    move/from16 v1, v18

    if-ge v0, v1, :cond_20

    .line 4126
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4129
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4133
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4135
    const/16 v18, 0x5a

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 4137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_1f

    .line 4138
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v52

    .line 4139
    .local v52, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_1f

    .line 4140
    const/16 v18, 0x0

    aget-object v18, v52, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v50

    .line 4141
    .local v50, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4145
    .end local v50    # "timeZone":Ljava/util/TimeZone;
    .end local v52    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1f
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4148
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    .line 4149
    .restart local v27    # "S0":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_22

    .line 4150
    :cond_21
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4152
    :cond_22
    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v36, v18, v27

    .line 4153
    .restart local v36    # "millis":I
    const/16 v35, 0x1

    .line 4155
    .local v35, "millisLen":I
    const/16 v18, 0x15

    move/from16 v0, v42

    move/from16 v1, v18

    if-le v0, v1, :cond_23

    .line 4156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    .line 4157
    .restart local v28    # "S1":C
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_23

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_23

    .line 4158
    mul-int/lit8 v18, v36, 0xa

    sget-object v19, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v19, v19, v28

    add-int v36, v18, v19

    .line 4159
    const/16 v35, 0x2

    .line 4163
    .end local v28    # "S1":C
    :cond_23
    const/16 v18, 0x2

    move/from16 v0, v35

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 4164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    .line 4165
    .restart local v29    # "S2":C
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_24

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-gt v0, v1, :cond_24

    .line 4166
    mul-int/lit8 v18, v36, 0xa

    sget-object v19, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v19, v19, v29

    add-int v36, v18, v19

    .line 4167
    const/16 v35, 0x3

    .line 4171
    .end local v29    # "S2":C
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4173
    const/16 v54, 0x0

    .line 4174
    .local v54, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v51

    .line 4175
    .local v51, "timeZoneFlag":C
    const/16 v18, 0x2b

    move/from16 v0, v51

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    const/16 v18, 0x2d

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    .line 4176
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v45

    .line 4177
    .local v45, "t0":C
    const/16 v18, 0x30

    move/from16 v0, v45

    move/from16 v1, v18

    if-lt v0, v1, :cond_26

    const/16 v18, 0x31

    move/from16 v0, v45

    move/from16 v1, v18

    if-le v0, v1, :cond_27

    .line 4178
    :cond_26
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4181
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v46

    .line 4182
    .local v46, "t1":C
    const/16 v18, 0x30

    move/from16 v0, v46

    move/from16 v1, v18

    if-lt v0, v1, :cond_28

    const/16 v18, 0x39

    move/from16 v0, v46

    move/from16 v1, v18

    if-le v0, v1, :cond_29

    .line 4183
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4186
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v47

    .line 4187
    .local v47, "t2":C
    const/16 v18, 0x3a

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    .line 4188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v48

    .line 4189
    .local v48, "t3":C
    const/16 v18, 0x30

    move/from16 v0, v48

    move/from16 v1, v18

    if-eq v0, v1, :cond_2a

    .line 4190
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4193
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v49

    .line 4194
    .local v49, "t4":C
    const/16 v18, 0x30

    move/from16 v0, v49

    move/from16 v1, v18

    if-eq v0, v1, :cond_2b

    .line 4195
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4197
    :cond_2b
    const/16 v54, 0x6

    .line 4208
    .end local v48    # "t3":C
    .end local v49    # "t4":C
    :goto_4
    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v18, v18, v45

    mul-int/lit8 v18, v18, 0xa

    sget-object v19, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v19, v19, v46

    add-int v18, v18, v19

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v53, v0

    .line 4209
    .local v53, "timeZoneOffset":I
    const/16 v18, 0x2d

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 4210
    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v53, v0

    .line 4213
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v53

    if-eq v0, v1, :cond_2d

    .line 4214
    invoke-static/range {v53 .. v53}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v52

    .line 4215
    .restart local v52    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2d

    .line 4216
    const/16 v18, 0x0

    aget-object v18, v52, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v50

    .line 4217
    .restart local v50    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4232
    .end local v45    # "t0":C
    .end local v46    # "t1":C
    .end local v47    # "t2":C
    .end local v50    # "timeZone":Ljava/util/TimeZone;
    .end local v52    # "timeZoneIDs":[Ljava/lang/String;
    .end local v53    # "timeZoneOffset":I
    :cond_2d
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v35, 0x14

    add-int v19, v19, v54

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    .line 4233
    .local v32, "end":C
    const/16 v18, 0x1a

    move/from16 v0, v32

    move/from16 v1, v18

    if-eq v0, v1, :cond_32

    const/16 v18, 0x22

    move/from16 v0, v32

    move/from16 v1, v18

    if-eq v0, v1, :cond_32

    .line 4234
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4198
    .end local v32    # "end":C
    .restart local v45    # "t0":C
    .restart local v46    # "t1":C
    .restart local v47    # "t2":C
    :cond_2e
    const/16 v18, 0x30

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    .line 4199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    add-int v18, v18, v35

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v48

    .line 4200
    .restart local v48    # "t3":C
    const/16 v18, 0x30

    move/from16 v0, v48

    move/from16 v1, v18

    if-eq v0, v1, :cond_2f

    .line 4201
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4203
    :cond_2f
    const/16 v54, 0x5

    .line 4204
    goto/16 :goto_4

    .line 4205
    .end local v48    # "t3":C
    :cond_30
    const/16 v54, 0x3

    goto/16 :goto_4

    .line 4221
    .end local v45    # "t0":C
    .end local v46    # "t1":C
    .end local v47    # "t2":C
    :cond_31
    const/16 v18, 0x5a

    move/from16 v0, v51

    move/from16 v1, v18

    if-ne v0, v1, :cond_2d

    .line 4222
    const/16 v54, 0x1

    .line 4223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_2d

    .line 4224
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v52

    .line 4225
    .restart local v52    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v52

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2d

    .line 4226
    const/16 v18, 0x0

    aget-object v18, v52, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v50

    .line 4227
    .restart local v50    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_5

    .line 4236
    .end local v50    # "timeZone":Ljava/util/TimeZone;
    .end local v52    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v32    # "end":C
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v35, 0x14

    add-int v19, v19, v54

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4238
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4239
    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method public final scanLongValue()J
    .locals 10

    .prologue
    .line 1706
    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1710
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 1711
    const/4 v6, 0x1

    .line 1712
    .local v6, "negative":Z
    const-wide/high16 v2, -0x8000000000000000L

    .line 1714
    .local v2, "limit":J
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1717
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1718
    .local v1, "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_0

    .line 1719
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1721
    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1728
    .end local v1    # "index":I
    :goto_0
    const-wide/16 v4, 0x0

    .line 1730
    .local v4, "longValue":J
    :goto_1
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    .line 1732
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v0, v7, -0x30

    .line 1733
    .local v0, "digit":I
    const-wide v8, -0xcccccccccccccccL

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 1734
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1724
    .end local v0    # "digit":I
    .end local v2    # "limit":J
    .end local v4    # "longValue":J
    .end local v6    # "negative":Z
    :cond_1
    const/4 v6, 0x0

    .line 1725
    .restart local v6    # "negative":Z
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v2    # "limit":J
    goto :goto_0

    .line 1737
    .restart local v0    # "digit":I
    .restart local v4    # "longValue":J
    :cond_2
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    .line 1738
    int-to-long v8, v0

    add-long/2addr v8, v2

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 1739
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1741
    :cond_3
    int-to-long v8, v0

    sub-long/2addr v4, v8

    .line 1746
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1749
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1750
    .restart local v1    # "index":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_4

    const/16 v7, 0x1a

    .line 1752
    :goto_2
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_1

    .line 1750
    :cond_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1752
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 1756
    .end local v0    # "digit":I
    .end local v1    # "index":I
    :cond_5
    if-nez v6, :cond_6

    .line 1757
    neg-long v4, v4

    .line 1760
    :cond_6
    return-wide v4
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/16 v2, 0x1a

    .line 1290
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1291
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1293
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    .line 1294
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1297
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1298
    .local v0, "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 1300
    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1305
    .end local v0    # "index":I
    :cond_0
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_3

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_3

    .line 1307
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1313
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1314
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    move v1, v2

    .line 1316
    :goto_2
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1298
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1300
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1314
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1316
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1320
    .end local v0    # "index":I
    :cond_3
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1322
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_6

    .line 1323
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1326
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1327
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 1329
    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1331
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1334
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_6

    .line 1336
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1342
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1343
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    move v1, v2

    .line 1345
    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 1327
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1329
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1343
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1345
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 1350
    .end local v0    # "index":I
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_8

    .line 1351
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1352
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1416
    :cond_7
    :goto_6
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v1, :cond_16

    .line 1417
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1421
    :goto_7
    return-void

    .line 1353
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x53

    if-ne v1, v3, :cond_9

    .line 1354
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1355
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 1356
    :cond_9
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x42

    if-ne v1, v3, :cond_a

    .line 1357
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1358
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    .line 1359
    :cond_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x46

    if-ne v1, v3, :cond_b

    .line 1360
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1361
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1362
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto :goto_6

    .line 1363
    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x44

    if-ne v1, v3, :cond_c

    .line 1364
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1365
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1366
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto :goto_6

    .line 1367
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_7

    .line 1369
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1372
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1373
    .restart local v0    # "index":I
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_10

    move v1, v2

    .line 1375
    :goto_8
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1378
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_e

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_f

    .line 1380
    :cond_e
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1383
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1384
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_11

    move v1, v2

    .line 1386
    :goto_9
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1391
    :cond_f
    :goto_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_13

    .line 1393
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1399
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1400
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_12

    move v1, v2

    .line 1402
    :goto_b
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    .line 1373
    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1375
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    .line 1384
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1386
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 1400
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1402
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    .line 1406
    :cond_13
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_14

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x46

    if-ne v1, v2, :cond_15

    .line 1408
    :cond_14
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1409
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1412
    :cond_15
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1413
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_6

    .line 1419
    .end local v0    # "index":I
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_7
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 36

    .prologue
    .line 1450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v29, v0

    .line 1452
    .local v29, "start":I
    const/16 v27, 0x0

    .line 1453
    .local v27, "overflow":Z
    const/16 v25, 0x0

    .line 1454
    .local v25, "number":Ljava/lang/Number;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1458
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 1459
    const/16 v24, 0x1

    .line 1460
    .local v24, "negative":Z
    const-wide/high16 v20, -0x8000000000000000L

    .line 1462
    .local v20, "limit":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1466
    .local v16, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_2

    const/16 v32, 0x1a

    .line 1468
    :goto_0
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1475
    .end local v16    # "index":I
    :goto_1
    const-wide/16 v22, 0x0

    .line 1477
    .local v22, "longValue":J
    :goto_2
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x30

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x39

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_5

    .line 1479
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    add-int/lit8 v8, v32, -0x30

    .line 1480
    .local v8, "digit":I
    const-wide v32, -0xcccccccccccccccL

    cmp-long v32, v22, v32

    if-gez v32, :cond_0

    .line 1481
    const/16 v27, 0x1

    .line 1484
    :cond_0
    const-wide/16 v32, 0xa

    mul-long v22, v22, v32

    .line 1485
    int-to-long v0, v8

    move-wide/from16 v32, v0

    add-long v32, v32, v20

    cmp-long v32, v22, v32

    if-gez v32, :cond_1

    .line 1486
    const/16 v27, 0x1

    .line 1488
    :cond_1
    int-to-long v0, v8

    move-wide/from16 v32, v0

    sub-long v22, v22, v32

    .line 1493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1497
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_4

    const/16 v32, 0x1a

    .line 1499
    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1466
    .end local v8    # "digit":I
    .end local v22    # "longValue":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1468
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto/16 :goto_0

    .line 1471
    .end local v16    # "index":I
    .end local v20    # "limit":J
    .end local v24    # "negative":Z
    :cond_3
    const/16 v24, 0x0

    .line 1472
    .restart local v24    # "negative":Z
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v20    # "limit":J
    goto/16 :goto_1

    .line 1497
    .restart local v8    # "digit":I
    .restart local v16    # "index":I
    .restart local v22    # "longValue":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1499
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto :goto_3

    .line 1503
    .end local v8    # "digit":I
    .end local v16    # "index":I
    :cond_5
    if-nez v24, :cond_6

    .line 1504
    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    .line 1507
    :cond_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x4c

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 1508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1510
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 1529
    :cond_7
    :goto_4
    const/16 v18, 0x0

    .local v18, "isDouble":Z
    const/4 v12, 0x0

    .line 1530
    .local v12, "exp":Z
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x2e

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 1531
    const/16 v18, 0x1

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1537
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_c

    const/16 v32, 0x1a

    .line 1539
    :goto_5
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1543
    :goto_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x30

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x39

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_e

    .line 1545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_d

    const/16 v32, 0x1a

    .line 1554
    :goto_7
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    .line 1511
    .end local v12    # "exp":Z
    .end local v16    # "index":I
    .end local v18    # "isDouble":Z
    :cond_8
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x53

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 1512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1514
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v25

    goto/16 :goto_4

    .line 1515
    :cond_9
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x42

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    .line 1516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1518
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    goto/16 :goto_4

    .line 1519
    :cond_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x46

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    .line 1520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1522
    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_4

    .line 1523
    :cond_b
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x44

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 1524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1526
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_4

    .line 1537
    .restart local v12    # "exp":Z
    .restart local v16    # "index":I
    .restart local v18    # "isDouble":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1539
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto/16 :goto_5

    .line 1552
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1554
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto/16 :goto_7

    .line 1559
    .end local v16    # "index":I
    :cond_e
    const/16 v31, 0x0

    .line 1560
    .local v31, "type":C
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x65

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x45

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_18

    .line 1562
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1566
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_12

    const/16 v32, 0x1a

    .line 1568
    :goto_8
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1571
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x2b

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x2d

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 1573
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    const/16 v32, 0x1a

    .line 1579
    :goto_9
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1584
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x30

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x39

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_15

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    add-int/lit8 v16, v32, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v32, v0

    move/from16 v0, v16

    move/from16 v1, v32

    if-lt v0, v1, :cond_14

    const/16 v32, 0x1a

    .line 1595
    :goto_b
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    .line 1566
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1568
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto/16 :goto_8

    .line 1577
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1579
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto :goto_9

    .line 1593
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1595
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v32

    goto :goto_b

    .line 1599
    :cond_15
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x44

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v32, v0

    const/16 v33, 0x46

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    .line 1601
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1602
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    .line 1603
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1606
    :cond_17
    const/4 v12, 0x1

    .line 1609
    .end local v16    # "index":I
    :cond_18
    if-nez v18, :cond_1c

    if-nez v12, :cond_1c

    .line 1611
    if-eqz v27, :cond_19

    .line 1612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    sub-int v19, v32, v29

    .line 1613
    .local v19, "len":I
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1614
    .local v7, "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1615
    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 1616
    .local v30, "strVal":Ljava/lang/String;
    new-instance v25, Ljava/math/BigInteger;

    .end local v25    # "number":Ljava/lang/Number;
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1618
    .end local v7    # "chars":[C
    .end local v19    # "len":I
    .end local v30    # "strVal":Ljava/lang/String;
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_19
    if-nez v25, :cond_1a

    .line 1619
    const-wide/32 v32, -0x80000000

    cmp-long v32, v22, v32

    if-lez v32, :cond_1b

    const-wide/32 v32, 0x7fffffff

    cmp-long v32, v22, v32

    if-gez v32, :cond_1b

    .line 1620
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :cond_1a
    :goto_c
    move-object/from16 v26, v25

    .end local v25    # "number":Ljava/lang/Number;
    .local v26, "number":Ljava/lang/Number;
    move-object/from16 v32, v25

    .line 1702
    :goto_d
    return-object v32

    .line 1622
    .end local v26    # "number":Ljava/lang/Number;
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_1b
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    goto :goto_c

    .line 1628
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    sub-int v19, v32, v29

    .line 1629
    .restart local v19    # "len":I
    if-eqz v31, :cond_1d

    .line 1630
    add-int/lit8 v19, v19, -0x1

    .line 1634
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    add-int v33, v29, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    move-object/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1644
    .restart local v7    # "chars":[C
    :goto_e
    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v32, v0

    sget-object v33, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v33, v0

    and-int v32, v32, v33

    if-eqz v32, :cond_1f

    .line 1646
    new-instance v25, Ljava/math/BigDecimal;

    .end local v25    # "number":Ljava/lang/Number;
    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .restart local v25    # "number":Ljava/lang/Number;
    :goto_f
    move-object/from16 v26, v25

    .end local v25    # "number":Ljava/lang/Number;
    .restart local v26    # "number":Ljava/lang/Number;
    move-object/from16 v32, v25

    .line 1702
    goto :goto_d

    .line 1638
    .end local v7    # "chars":[C
    .end local v26    # "number":Ljava/lang/Number;
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_1e
    move/from16 v0, v19

    new-array v7, v0, [C

    .line 1639
    .restart local v7    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    add-int v33, v29, v19

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_e

    .line 1650
    :cond_1f
    const/16 v32, 0x9

    move/from16 v0, v19

    move/from16 v1, v32

    if-gt v0, v1, :cond_27

    if-nez v12, :cond_27

    .line 1651
    const/4 v14, 0x0

    .line 1652
    .local v14, "i":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "i":I
    .local v15, "i":I
    :try_start_0
    aget-char v6, v7, v14

    .line 1653
    .local v6, "c":C
    const/16 v32, 0x2d

    move/from16 v0, v32

    if-eq v6, v0, :cond_20

    const/16 v32, 0x2b

    move/from16 v0, v32

    if-ne v6, v0, :cond_29

    .line 1654
    :cond_20
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "i":I
    .restart local v14    # "i":I
    aget-char v6, v7, v15

    .line 1657
    :goto_10
    add-int/lit8 v17, v6, -0x30

    .line 1658
    .local v17, "intVal":I
    const/16 v28, 0x0

    .line 1659
    .local v28, "power":I
    :goto_11
    move/from16 v0, v19

    if-ge v14, v0, :cond_23

    .line 1660
    aget-char v6, v7, v14

    .line 1662
    const/16 v32, 0x2e

    move/from16 v0, v32

    if-ne v6, v0, :cond_22

    .line 1663
    const/16 v28, 0x1

    .line 1659
    :cond_21
    :goto_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 1666
    :cond_22
    add-int/lit8 v8, v6, -0x30

    .line 1667
    .restart local v8    # "digit":I
    mul-int/lit8 v32, v17, 0xa

    add-int v17, v32, v8

    .line 1669
    if-eqz v28, :cond_21

    .line 1670
    mul-int/lit8 v28, v28, 0xa

    goto :goto_12

    .line 1674
    .end local v8    # "digit":I
    :cond_23
    const/16 v32, 0x46

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_25

    .line 1675
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v13, v32, v33

    .line 1676
    .local v13, "floatVal":F
    if-eqz v24, :cond_24

    .line 1677
    neg-float v13, v13

    .line 1680
    :cond_24
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v26, v25

    .end local v25    # "number":Ljava/lang/Number;
    .restart local v26    # "number":Ljava/lang/Number;
    goto/16 :goto_d

    .line 1683
    .end local v13    # "floatVal":F
    .end local v26    # "number":Ljava/lang/Number;
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_25
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v10, v32, v34

    .line 1684
    .local v10, "doubleVal":D
    if-eqz v24, :cond_26

    .line 1685
    neg-double v10, v10

    .line 1688
    :cond_26
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v26, v25

    .end local v25    # "number":Ljava/lang/Number;
    .restart local v26    # "number":Ljava/lang/Number;
    goto/16 :goto_d

    .line 1691
    .end local v6    # "c":C
    .end local v10    # "doubleVal":D
    .end local v14    # "i":I
    .end local v17    # "intVal":I
    .end local v26    # "number":Ljava/lang/Number;
    .end local v28    # "power":I
    .restart local v25    # "number":Ljava/lang/Number;
    :cond_27
    new-instance v30, Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1692
    .restart local v30    # "strVal":Ljava/lang/String;
    const/16 v32, 0x46

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_28

    .line 1693
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_f

    .line 1695
    :cond_28
    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    goto/16 :goto_f

    .line 1697
    .end local v30    # "strVal":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1698
    .local v9, "ex":Ljava/lang/NumberFormatException;
    new-instance v32, Lcom/alibaba/fastjson/JSONException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v15    # "i":I
    :cond_29
    move v14, v15

    .end local v15    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_10
.end method

.method public final scanString()V
    .locals 20

    .prologue
    .line 985
    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 986
    .local v14, "quoteChar":C
    const/4 v6, 0x0

    .line 987
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, 0x1

    .line 988
    .local v16, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 989
    .local v5, "endIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 990
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unclosed str, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 996
    :cond_0
    sub-int v4, v5, v16

    .line 997
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    .line 998
    .local v3, "chars":[C
    :goto_0
    if-lez v4, :cond_2

    add-int/lit8 v17, v4, -0x1

    aget-char v17, v3, v17

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1001
    const/4 v15, 0x1

    .line 1002
    .local v15, "slashCount":I
    add-int/lit8 v7, v4, -0x2

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 1003
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1004
    add-int/lit8 v15, v15, 0x1

    .line 1002
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1009
    :cond_1
    rem-int/lit8 v17, v15, 0x2

    if-nez v17, :cond_4

    .line 1033
    .end local v7    # "i":I
    .end local v15    # "slashCount":I
    :cond_2
    if-nez v6, :cond_7

    .line 1034
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    .line 1035
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1036
    const/4 v6, 0x1

    .line 1034
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1013
    .restart local v15    # "slashCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1014
    .local v11, "nextIndex":I
    sub-int v12, v11, v5

    .line 1015
    .local v12, "nextLen":I
    add-int v13, v4, v12

    .line 1017
    .local v13, "next_chars_len":I
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    .line 1018
    array-length v0, v3

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v10, v17, 0x2

    .line 1019
    .local v10, "newLen":I
    if-ge v10, v13, :cond_5

    .line 1020
    move v10, v13

    .line 1022
    :cond_5
    new-array v9, v10, [C

    .line 1023
    .local v9, "newChars":[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    move-object v3, v9

    .line 1026
    .end local v9    # "newChars":[C
    .end local v10    # "newLen":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1028
    move v4, v13

    .line 1029
    move v5, v11

    .line 1030
    const/4 v6, 0x1

    .line 1031
    goto :goto_0

    .line 1041
    .end local v7    # "i":I
    .end local v11    # "nextIndex":I
    .end local v12    # "nextLen":I
    .end local v13    # "next_chars_len":I
    .end local v15    # "slashCount":I
    :cond_7
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1042
    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1044
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1046
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1049
    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1050
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_8

    const/16 v17, 0x1a

    .line 1052
    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1055
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1056
    return-void

    .line 1050
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1052
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    goto :goto_3
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 11
    .param p1, "quoteChar"    # C

    .prologue
    const/16 v10, 0x5c

    const/4 v9, -0x1

    .line 1059
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    .line 1060
    .local v6, "startIndex":I
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1061
    .local v2, "endIndex":I
    if-ne v2, v9, :cond_0

    .line 1062
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unclosed str, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1065
    :cond_0
    const/4 v7, 0x0

    .line 1066
    .local v7, "strVal":Ljava/lang/String;
    sget-boolean v8, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v8, :cond_1

    .line 1067
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1074
    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_3

    .line 1076
    :goto_1
    const/4 v5, 0x0

    .line 1077
    .local v5, "slashCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 1078
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 1079
    add-int/lit8 v5, v5, 0x1

    .line 1077
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1069
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    :cond_1
    sub-int v1, v2, v6

    .line 1070
    .local v1, "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1071
    .local v0, "chars":[C
    new-instance v7, Ljava/lang/String;

    .end local v7    # "strVal":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v7    # "strVal":Ljava/lang/String;
    goto :goto_0

    .line 1084
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .restart local v3    # "i":I
    .restart local v5    # "slashCount":I
    :cond_2
    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_4

    .line 1090
    sub-int v1, v2, v6

    .line 1091
    .restart local v1    # "chars_len":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1092
    .restart local v0    # "chars":[C
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v7

    .line 1095
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    :cond_3
    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1098
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1099
    .local v4, "index":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v8, :cond_5

    const/16 v8, 0x1a

    .line 1101
    :goto_3
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1104
    return-object v7

    .line 1087
    .end local v4    # "index":I
    .restart local v3    # "i":I
    .restart local v5    # "slashCount":I
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, p1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1088
    goto :goto_1

    .line 1099
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    .restart local v4    # "index":I
    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1101
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 6
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0xd

    const/4 v0, 0x0

    .line 701
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 713
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v4, :cond_2

    .line 714
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 738
    :goto_1
    return-object v0

    .line 717
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v5, :cond_3

    .line 718
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 721
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_4

    .line 722
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 723
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 727
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    .line 728
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 729
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 733
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    .line 734
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 738
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 22
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quoteChar"    # C

    .prologue
    .line 742
    const/4 v8, 0x0

    .line 744
    .local v8, "hash":I
    const/4 v7, 0x0

    .line 745
    .local v7, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x1

    .line 746
    .local v17, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 747
    .local v6, "endIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 748
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unclosed str, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 754
    :cond_0
    sub-int v5, v6, v17

    .line 755
    .local v5, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    .line 756
    .local v4, "chars":[C
    :goto_0
    if-lez v5, :cond_2

    add-int/lit8 v19, v5, -0x1

    aget-char v19, v4, v19

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 759
    const/16 v16, 0x1

    .line 760
    .local v16, "slashCount":I
    add-int/lit8 v9, v5, -0x2

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_1

    .line 761
    aget-char v19, v4, v9

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 762
    add-int/lit8 v16, v16, 0x1

    .line 760
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 767
    :cond_1
    rem-int/lit8 v19, v16, 0x2

    if-nez v19, :cond_4

    .line 792
    .end local v9    # "i":I
    .end local v16    # "slashCount":I
    :cond_2
    if-nez v7, :cond_a

    .line 793
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v5, :cond_7

    .line 794
    aget-char v3, v4, v9

    .line 795
    .local v3, "ch":C
    mul-int/lit8 v19, v8, 0x1f

    add-int v8, v19, v3

    .line 796
    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v3, v0, :cond_3

    .line 797
    const/4 v7, 0x1

    .line 793
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 771
    .end local v3    # "ch":C
    .restart local v16    # "slashCount":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 772
    .local v13, "nextIndex":I
    sub-int v14, v13, v6

    .line 773
    .local v14, "nextLen":I
    add-int v15, v5, v14

    .line 775
    .local v15, "next_chars_len":I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_6

    .line 776
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v12, v19, 0x2

    .line 777
    .local v12, "newLen":I
    if-ge v12, v15, :cond_5

    .line 778
    move v12, v15

    .line 780
    :cond_5
    new-array v11, v12, [C

    .line 781
    .local v11, "newChars":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v4, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    move-object v4, v11

    .line 784
    .end local v11    # "newChars":[C
    .end local v12    # "newLen":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 786
    move v5, v15

    .line 787
    move v6, v13

    .line 788
    const/4 v7, 0x1

    .line 789
    goto/16 :goto_0

    .line 801
    .end local v13    # "nextIndex":I
    .end local v14    # "nextLen":I
    .end local v15    # "next_chars_len":I
    .end local v16    # "slashCount":I
    :cond_7
    if-eqz v7, :cond_8

    .line 802
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v18

    .line 810
    .end local v9    # "i":I
    .local v18, "strVal":Ljava/lang/String;
    :goto_3
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 813
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 814
    .local v10, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_b

    const/16 v19, 0x1a

    .line 816
    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 819
    return-object v18

    .line 802
    .end local v10    # "index":I
    .end local v18    # "strVal":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_8
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    const/16 v19, 0x0

    .line 804
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v8}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_9
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 807
    .end local v9    # "i":I
    :cond_a
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "strVal":Ljava/lang/String;
    goto :goto_3

    .line 814
    .restart local v10    # "index":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 816
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    goto :goto_4
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 7
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/4 v4, 0x1

    .line 946
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 948
    .local v1, "first":C
    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_0

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    .line 949
    .local v2, "firstFlag":Z
    :goto_0
    if-nez v2, :cond_2

    .line 950
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal identifier : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 951
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 948
    .end local v2    # "firstFlag":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 954
    .restart local v2    # "firstFlag":Z
    :cond_2
    move v3, v1

    .line 956
    .local v3, "hash":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 957
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 959
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v0

    .line 961
    .local v0, "ch":C
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 962
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_3

    .line 973
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 974
    const/16 v4, 0x12

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 976
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v5, "null"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 977
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 978
    const/4 v4, 0x0

    .line 981
    :goto_2
    return-object v4

    .line 967
    :cond_3
    mul-int/lit8 v4, v3, 0x1f

    add-int v3, v4, v0

    .line 969
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_1

    .line 981
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method protected skipComment()V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2a

    .line 916
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 917
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_2

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 920
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 943
    :cond_1
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_5

    .line 926
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 928
    :cond_3
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 929
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_4

    .line 930
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 931
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_3

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 938
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 941
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 1268
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v0, v2, :cond_2

    .line 1269
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 1277
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_2

    .line 1278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 1287
    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1218
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    .line 1217
    :goto_0
    return-object v0

    .line 1218
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1219
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final sub_chars(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 1234
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1240
    :goto_0
    return-object v0

    .line 1238
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1239
    .local v0, "chars":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
