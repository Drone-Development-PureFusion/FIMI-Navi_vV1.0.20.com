.class public Lcom/fimi/widget/sticklistview/BaseSortModel;
.super Ljava/lang/Object;
.source "BaseSortModel.java"


# instance fields
.field private pinyin:Ljava/lang/String;

.field private sortLetter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/BaseSortModel;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getSortLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/BaseSortModel;->sortLetter:Ljava/lang/String;

    return-object v0
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/BaseSortModel;->pinyin:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setSortLetter(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortLetters"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/BaseSortModel;->sortLetter:Ljava/lang/String;

    .line 22
    return-void
.end method
