.class public abstract Lcom/fimi/app/x8s/adapter/section/AbsSection;
.super Ljava/lang/Object;
.source "AbsSection.java"


# instance fields
.field private hasHeader:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "hasHeader"    # Z

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lcom/fimi/app/x8s/adapter/section/AbsSection;->hasHeader:Z

    .line 21
    return-void
.end method


# virtual methods
.method public abstract getContentItemsTotal()I
.end method

.method public final getSectionItemsTotal()I
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/section/AbsSection;->getContentItemsTotal()I

    move-result v0

    .line 25
    .local v0, "contentItemsTotal":I
    iget-boolean v1, p0, Lcom/fimi/app/x8s/adapter/section/AbsSection;->hasHeader:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHasHeader()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/fimi/app/x8s/adapter/section/AbsSection;->hasHeader:Z

    return v0
.end method

.method public setHasHeader(Z)V
    .locals 0
    .param p1, "hasHeader"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/fimi/app/x8s/adapter/section/AbsSection;->hasHeader:Z

    .line 14
    return-void
.end method
