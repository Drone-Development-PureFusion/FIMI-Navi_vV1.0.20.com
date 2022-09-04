.class Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$2;
.super Ljava/lang/Object;
.source "CountrySelectListActivity.java"

# interfaces
.implements Lcom/fimi/widget/sticklistview/LetterSideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$2;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$2;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mAdapter:Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/adapter/CountryLetterSortAdapter;->getPositionForSection(I)I

    move-result v0

    .line 111
    .local v0, "jumpPos":I
    iget-object v1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$2;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    iget-object v1, v1, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->mStickyLV:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setSelection(I)V

    .line 112
    return-void
.end method
