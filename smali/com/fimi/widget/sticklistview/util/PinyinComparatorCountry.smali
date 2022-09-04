.class public Lcom/fimi/widget/sticklistview/util/PinyinComparatorCountry;
.super Ljava/lang/Object;
.source "PinyinComparatorCountry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;)I
    .locals 2
    .param p1, "o1"    # Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;
    .param p2, "o2"    # Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;

    .prologue
    .line 12
    invoke-virtual {p1}, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p2}, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    return v0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p2}, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->getSortLetter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->getSortLetter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;

    check-cast p2, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/widget/sticklistview/util/PinyinComparatorCountry;->compare(Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;)I

    move-result v0

    return v0
.end method
