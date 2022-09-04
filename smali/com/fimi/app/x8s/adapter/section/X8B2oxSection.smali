.class public Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;
.super Lcom/fimi/app/x8s/adapter/section/AbsSection;
.source "X8B2oxSection.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8B2oxFile;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p3, "hasHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8B2oxFile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;"
    invoke-direct {p0, p3}, Lcom/fimi/app/x8s/adapter/section/AbsSection;-><init>(Z)V

    .line 33
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->title:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->list:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getContentItemsTotal()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->list:Ljava/util/List;

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
            "Lcom/fimi/app/x8s/entity/X8B2oxFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8B2oxFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->list:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;->title:Ljava/lang/String;

    .line 18
    return-void
.end method
