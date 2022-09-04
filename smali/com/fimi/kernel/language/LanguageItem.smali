.class public Lcom/fimi/kernel/language/LanguageItem;
.super Ljava/lang/Object;
.source "LanguageItem.java"


# static fields
.field public static final defaultLanguage:Lcom/fimi/kernel/language/LanguageModel;

.field public static final languageModels:[Lcom/fimi/kernel/language/LanguageModel;


# instance fields
.field private code:Ljava/lang/String;

.field private info:I

.field private isSelect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/kernel/language/LanguageModel;

    const/4 v1, 0x0

    new-instance v2, Lcom/fimi/kernel/language/LanguageModel;

    sget v3, Lcom/fimi/kernel/R$string;->kernal_simplified_chinese:I

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v5, "cn"

    invoke-direct {v2, v3, v4, v5}, Lcom/fimi/kernel/language/LanguageModel;-><init>(ILjava/util/Locale;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/kernel/language/LanguageModel;

    sget v3, Lcom/fimi/kernel/R$string;->kernal_english:I

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v2, v3, v4, v5}, Lcom/fimi/kernel/language/LanguageModel;-><init>(ILjava/util/Locale;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/fimi/kernel/language/LanguageModel;

    sget v3, Lcom/fimi/kernel/R$string;->kernal_korean:I

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    const-string v5, "ko"

    invoke-direct {v2, v3, v4, v5}, Lcom/fimi/kernel/language/LanguageModel;-><init>(ILjava/util/Locale;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/fimi/kernel/language/LanguageModel;

    sget v3, Lcom/fimi/kernel/R$string;->kernal_spanish:I

    new-instance v4, Ljava/util/Locale;

    const-string v5, "es"

    const-string v6, "ES"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "es"

    invoke-direct {v2, v3, v4, v5}, Lcom/fimi/kernel/language/LanguageModel;-><init>(ILjava/util/Locale;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/language/LanguageItem;->languageModels:[Lcom/fimi/kernel/language/LanguageModel;

    .line 23
    new-instance v0, Lcom/fimi/kernel/language/LanguageModel;

    sget v1, Lcom/fimi/kernel/R$string;->kernal_english:I

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "en"

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/kernel/language/LanguageModel;-><init>(ILjava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/fimi/kernel/language/LanguageItem;->defaultLanguage:Lcom/fimi/kernel/language/LanguageModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/kernel/language/LanguageItem;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/kernel/language/LanguageItem;->info:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/fimi/kernel/language/LanguageItem;->isSelect:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/kernel/language/LanguageItem;->code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setInfo(I)V
    .locals 0
    .param p1, "info"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/fimi/kernel/language/LanguageItem;->info:I

    .line 43
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fimi/kernel/language/LanguageItem;->isSelect:Z

    .line 52
    return-void
.end method
