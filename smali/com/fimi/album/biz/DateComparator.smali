.class public Lcom/fimi/album/biz/DateComparator;
.super Ljava/lang/Object;
.source "DateComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDateComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/fimi/album/biz/DateComparator$1;

    invoke-direct {v0}, Lcom/fimi/album/biz/DateComparator$1;-><init>()V

    return-object v0
.end method
