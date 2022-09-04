.class public Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;
.super Lcom/fimi/app/x8s/adapter/section/AbsSection;
.source "X8FlightLogSection.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "hasHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/adapter/section/AbsSection;-><init>(Z)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->list:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->list:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/x8sdk/entity/X8FlightLogFile;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->list:Ljava/util/List;

    .line 29
    return-void
.end method
