.class public Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;
.super Lcom/fimi/widget/sticklistview/BaseSortModel;
.source "CountryCodeEntity.java"


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/BaseSortModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/CountryCodeEntity;->name:Ljava/lang/String;

    .line 17
    return-void
.end method
