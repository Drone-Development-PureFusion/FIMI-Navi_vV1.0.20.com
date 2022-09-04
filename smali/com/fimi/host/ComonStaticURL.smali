.class public Lcom/fimi/host/ComonStaticURL;
.super Ljava/lang/Object;
.source "ComonStaticURL.java"


# static fields
.field private static staticUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://paas-beijing6-static-file.fimi.com/h5/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://fimiapp-web-us.mi-ae.com/h5/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/host/ComonStaticURL;->staticUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCommonFormateLocalURL(I)Ljava/lang/String;
    .locals 8
    .param p0, "resourceId"    # I

    .prologue
    .line 51
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v5

    const-string v6, "service_item_key"

    const-class v7, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v5, v6, v7}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/region/ServiceItem;

    .line 58
    .local v2, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    const-string v1, ""

    .line 59
    .local v1, "iCountry":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 60
    :cond_0
    const-string v1, "en"

    .line 85
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {v7}, Lcom/fimi/host/common/ProductEnum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "formatUrl":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 62
    .end local v0    # "formatUrl":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v6, Lcom/fimi/host/common/ProductEnum;->GH2:Lcom/fimi/host/common/ProductEnum;

    if-ne v5, v6, :cond_4

    .line 63
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    :cond_2
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "en"

    goto :goto_0

    .line 68
    :cond_4
    sget-object v5, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v6, Lcom/fimi/host/common/ProductEnum;->FIMIAPP:Lcom/fimi/host/common/ProductEnum;

    if-ne v5, v6, :cond_6

    .line 69
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 72
    :cond_5
    const-string v1, "en"

    goto :goto_0

    .line 74
    :cond_6
    sget-object v5, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    sget-object v6, Lcom/fimi/host/common/ProductEnum;->X8S:Lcom/fimi/host/common/ProductEnum;

    if-ne v5, v6, :cond_8

    .line 75
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_7
    const-string v1, "en"

    goto :goto_0

    .line 81
    :cond_8
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCommonFormateURL(I)Ljava/lang/String;
    .locals 10
    .param p0, "resourceId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 91
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v3, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v5

    const-string v6, "service_item_key"

    const-class v7, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v5, v6, v7}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/region/ServiceItem;

    .line 93
    .local v2, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v5

    sget v6, Lcom/fimi/kernel/R$string;->region_Mainland_China:I

    if-ne v5, v6, :cond_0

    .line 94
    sget-object v5, Lcom/fimi/host/ComonStaticURL;->staticUrls:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :goto_0
    invoke-static {}, Lcom/fimi/kernel/FimiAppContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/kernel/GlobalConfig;->getInstance()Lcom/fimi/kernel/GlobalConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/GlobalConfig;->getLanguageModel()Lcom/fimi/kernel/language/LanguageModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/kernel/language/LanguageModel;->getInternalCoutry()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "iCountry":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lcom/fimi/kernel/Constants;->productType:Lcom/fimi/host/common/ProductEnum;

    invoke-virtual {v6}, Lcom/fimi/host/common/ProductEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "formatUrl":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v5, "?language="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 96
    .end local v0    # "formatUrl":Ljava/lang/String;
    .end local v1    # "iCountry":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/fimi/host/ComonStaticURL;->staticUrls:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getFaqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/fimi/kernel/R$string;->kernel_faq:I

    invoke-static {v0}, Lcom/fimi/host/ComonStaticURL;->getCommonFormateURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGuideBookUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/fimi/kernel/R$string;->kernal_gh2_guidebook:I

    invoke-static {v0}, Lcom/fimi/host/ComonStaticURL;->getCommonFormateURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPolicyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/fimi/kernel/R$string;->kernel_policy:I

    invoke-static {v0}, Lcom/fimi/host/ComonStaticURL;->getCommonFormateLocalURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/fimi/kernel/R$string;->kernel_privacy:I

    invoke-static {v0}, Lcom/fimi/host/ComonStaticURL;->getCommonFormateLocalURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
