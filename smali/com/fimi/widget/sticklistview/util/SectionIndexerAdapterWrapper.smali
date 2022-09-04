.class Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;
.super Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
.source "SectionIndexerAdapterWrapper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field final mSectionIndexerDelegate:Landroid/widget/SectionIndexer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;)V

    .line 15
    check-cast p2, Landroid/widget/SectionIndexer;

    .end local p2    # "delegate":Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;
    iput-object p2, p0, Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    .line 16
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;->mSectionIndexerDelegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
