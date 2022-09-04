.class public Lcom/fimi/kernel/language/LanguageModel;
.super Ljava/lang/Object;
.source "LanguageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private country:Ljava/lang/String;

.field private internalCoutry:Ljava/lang/String;

.field private languageCode:Ljava/lang/String;

.field private languageName:I

.field locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/util/Locale;Ljava/lang/String;)V
    .locals 1
    .param p1, "languageName"    # I
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "internalCoutry"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/fimi/kernel/language/LanguageModel;->languageName:I

    .line 25
    iput-object p2, p0, Lcom/fimi/kernel/language/LanguageModel;->locale:Ljava/util/Locale;

    .line 26
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/language/LanguageModel;->languageCode:Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/language/LanguageModel;->country:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/fimi/kernel/language/LanguageModel;->internalCoutry:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/kernel/language/LanguageModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fimi/kernel/language/LanguageModel;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/language/LanguageModel;->locale:Ljava/util/Locale;

    .line 72
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public getDefaultCountryLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "en_US"

    return-object v0
.end method

.method public getInternalCoutry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/kernel/language/LanguageModel;->internalCoutry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/kernel/language/LanguageModel;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageName()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/kernel/language/LanguageModel;->languageName:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fimi/kernel/language/LanguageModel;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/fimi/kernel/language/LanguageModel;->country:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setInternalCoutry(Ljava/lang/String;)V
    .locals 0
    .param p1, "internalCoutry"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fimi/kernel/language/LanguageModel;->internalCoutry:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/kernel/language/LanguageModel;->languageCode:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLanguageName(I)V
    .locals 0
    .param p1, "languageName"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fimi/kernel/language/LanguageModel;->languageName:I

    .line 40
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fimi/kernel/language/LanguageModel;->locale:Ljava/util/Locale;

    .line 56
    return-void
.end method
