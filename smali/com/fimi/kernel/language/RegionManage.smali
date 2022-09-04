.class public Lcom/fimi/kernel/language/RegionManage;
.super Ljava/lang/Object;
.source "RegionManage.java"


# instance fields
.field private mCountrySelect:Ljava/lang/String;

.field private mServiceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/kernel/language/RegionManage;->mServiceType:I

    return-void
.end method


# virtual methods
.method public getCountryType()I
    .locals 5

    .prologue
    .line 17
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v2

    const-string v3, "service_item_key"

    const-class v4, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/region/ServiceItem;

    .line 18
    .local v1, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 19
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 20
    iput v0, p0, Lcom/fimi/kernel/language/RegionManage;->mServiceType:I

    .line 32
    :cond_0
    iget v2, p0, Lcom/fimi/kernel/language/RegionManage;->mServiceType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 33
    const/4 v2, 0x0

    iput v2, p0, Lcom/fimi/kernel/language/RegionManage;->mServiceType:I

    .line 35
    :cond_1
    iget v2, p0, Lcom/fimi/kernel/language/RegionManage;->mServiceType:I

    return v2

    .line 18
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
