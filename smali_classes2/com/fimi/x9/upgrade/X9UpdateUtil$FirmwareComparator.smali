.class public Lcom/fimi/x9/upgrade/X9UpdateUtil$FirmwareComparator;
.super Ljava/lang/Object;
.source "X9UpdateUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x9/upgrade/X9UpdateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirmwareComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;

    .prologue
    .line 118
    move-object v0, p1

    check-cast v0, Lcom/fimi/network/entity/UpfirewareDto;

    .local v0, "firmwareInfo1":Lcom/fimi/network/entity/UpfirewareDto;
    move-object v1, p2

    .line 119
    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    .line 120
    .local v1, "firmwareInfo2":Lcom/fimi/network/entity/UpfirewareDto;
    invoke-virtual {v0}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getType()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 121
    .local v2, "result":I
    :goto_0
    return v2

    .line 120
    .end local v2    # "result":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
