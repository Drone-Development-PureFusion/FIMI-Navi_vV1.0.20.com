.class public Lcom/fimi/kernel/utils/DataValidatorUtil;
.super Ljava/lang/Object;
.source "DataValidatorUtil.java"


# static fields
.field public static final REGEX_CHINESE:Ljava/lang/String; = "^[\u4e00-\u9fa5],{0,}$"

.field public static final REGEX_EMAIL:Ljava/lang/String; = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]{2,6}+$"

.field public static final REGEX_ID_CARD:Ljava/lang/String; = "(^\\d{18}$)|(^\\d{15}$)"

.field public static final REGEX_IP_ADDR:Ljava/lang/String; = "(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)"

.field public static final REGEX_PASSWORD:Ljava/lang/String; = "^[a-zA-Z0-9]{6,16}$"

.field private static final REGEX_PHONE_NUMBER:Ljava/lang/String; = "^(0(10|2\\d|[3-9]\\d\\d)[- ]{0,3}\\d{7,8}|0?1[3584]\\d{9})$"

.field public static final REGEX_URL:Ljava/lang/String; = "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&=]*)?"

.field public static final REGEX_USERNAME:Ljava/lang/String; = "^[a-zA-Z]\\w{5,17}$"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 1
    .param p0, "chinese"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "^[\u4e00-\u9fa5],{0,}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]{2,6}+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard(Ljava/lang/String;)Z
    .locals 1
    .param p0, "idCard"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "(^\\d{18}$)|(^\\d{15}$)"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIPAddr(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isMobile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mobile"    # Ljava/lang/String;

    .prologue
    .line 74
    const-string v0, "^1[0-9]{10}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPassword(Ljava/lang/String;)Z
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "^[a-zA-Z0-9]{6,16}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&=]*)?"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUsername(Ljava/lang/String;)Z
    .locals 1
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "^[a-zA-Z]\\w{5,17}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
