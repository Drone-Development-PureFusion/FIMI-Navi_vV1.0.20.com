.class final Lcom/fimi/album/biz/DateComparator$1;
.super Ljava/lang/Object;
.source "DateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/biz/DateComparator;->createDateComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fimi/album/entity/MediaModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/entity/MediaModel;)I
    .locals 4
    .param p1, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "t1"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getCreateDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 19
    .local v0, "firstCreateTime":Ljava/lang/Long;
    invoke-virtual {p2}, Lcom/fimi/album/entity/MediaModel;->getCreateDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 20
    .local v1, "seconedCreateTime":Ljava/lang/Long;
    invoke-virtual {v1, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/fimi/album/entity/MediaModel;

    check-cast p2, Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/album/biz/DateComparator$1;->compare(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/entity/MediaModel;)I

    move-result v0

    return v0
.end method
