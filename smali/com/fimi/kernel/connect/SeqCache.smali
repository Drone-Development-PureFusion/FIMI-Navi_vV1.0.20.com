.class public Lcom/fimi/kernel/connect/SeqCache;
.super Ljava/lang/Object;
.source "SeqCache.java"


# instance fields
.field private final MAX_LEN:I

.field private index:I

.field private seqIndex:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/fimi/kernel/connect/SeqCache;->MAX_LEN:I

    .line 9
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fimi/kernel/connect/SeqCache;->seqIndex:[I

    return-void
.end method


# virtual methods
.method public add2SeqCache(I)V
    .locals 3
    .param p1, "seq"    # I

    .prologue
    .line 12
    iget-object v0, p0, Lcom/fimi/kernel/connect/SeqCache;->seqIndex:[I

    iget v1, p0, Lcom/fimi/kernel/connect/SeqCache;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fimi/kernel/connect/SeqCache;->index:I

    aput p1, v0, v1

    .line 13
    iget v0, p0, Lcom/fimi/kernel/connect/SeqCache;->index:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/kernel/connect/SeqCache;->index:I

    .line 16
    :cond_0
    return-void
.end method

.method public isExist(I)Z
    .locals 5
    .param p1, "seq"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/fimi/kernel/connect/SeqCache;->seqIndex:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 21
    .local v1, "s":I
    if-ne p1, v1, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 26
    .end local v1    # "s":I
    :cond_0
    return v0

    .line 20
    .restart local v1    # "s":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
