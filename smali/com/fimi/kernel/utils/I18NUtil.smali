.class public Lcom/fimi/kernel/utils/I18NUtil;
.super Ljava/lang/Object;
.source "I18NUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getI18NStrin(Lcom/fimi/network/entity/FwContenti18N;)Ljava/lang/String;
    .locals 3
    .param p0, "fwContenti18N"    # Lcom/fimi/network/entity/FwContenti18N;

    .prologue
    .line 15
    const-string v0, ""

    .line 16
    .local v0, "str":Ljava/lang/String;
    const-string/jumbo v1, "zh_CN"

    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/GlobalConfig;->getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getCountryLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/fimi/network/entity/FwContenti18N;->getZh_CN()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string/jumbo v1, "zh_TW"

    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/GlobalConfig;->getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/language/LanguageModel;->getCountryLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/fimi/network/entity/FwContenti18N;->getZh_TW()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/network/entity/FwContenti18N;->getEn_US()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
