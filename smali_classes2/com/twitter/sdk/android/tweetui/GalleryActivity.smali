.class public Lcom/twitter/sdk/android/tweetui/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    }
.end annotation


# static fields
.field public static final GALLERY_ITEM:Ljava/lang/String; = "GALLERY_ITEM"

.field static final MEDIA_ENTITY:Ljava/lang/String; = "MEDIA_ENTITY"


# instance fields
.field galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

.field final galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryScribeClientImpl;

    .line 38
    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    .line 37
    return-void
.end method


# virtual methods
.method getGalleryItem()Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;
    .locals 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MEDIA_ENTITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 110
    .local v0, "entity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;-><init>(ILjava/util/List;)V

    .line 114
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "GALLERY_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    goto :goto_0
.end method

.method getOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$1;-><init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V

    return-object v0
.end method

.method getSwipeToDismissCallback()Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity$2;-><init>(Lcom/twitter/sdk/android/tweetui/GalleryActivity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->scribeDismissEvent()V

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 121
    const/4 v0, 0x0

    sget v1, Lcom/twitter/sdk/android/tweetui/R$anim;->tw__slide_out:I

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->overridePendingTransition(II)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v3, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__gallery_activity:I

    invoke-virtual {p0, v3}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getGalleryItem()Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->scribeShowEvent()V

    .line 52
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/GalleryAdapter;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getSwipeToDismissCallback()Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/twitter/sdk/android/tweetui/GalleryAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;)V

    .line 53
    .local v0, "adapter":Lcom/twitter/sdk/android/tweetui/GalleryAdapter;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v3, v3, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntities:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/twitter/sdk/android/tweetui/GalleryAdapter;->addAll(Ljava/util/List;)V

    .line 55
    sget v3, Lcom/twitter/sdk/android/tweetui/R$id;->tw__view_pager:I

    invoke-virtual {p0, v3}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 57
    .local v2, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/twitter/sdk/android/tweetui/R$dimen;->tw__gallery_page_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    .local v1, "marginPixels":I
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 59
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 60
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 61
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget v3, v3, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntityIndex:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 62
    return-void
.end method

.method scribeDismissEvent()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->dismiss()V

    .line 130
    return-void
.end method

.method scribeImpressionEvent(I)V
    .locals 4
    .param p1, "mediaEntityPosition"    # I

    .prologue
    .line 133
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-object v2, v2, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->mediaEntities:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 134
    .local v0, "mediaEntity":Lcom/twitter/sdk/android/core/models/MediaEntity;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryItem:Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;

    iget-wide v2, v2, Lcom/twitter/sdk/android/tweetui/GalleryActivity$GalleryItem;->tweetId:J

    invoke-static {v2, v3, v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromMediaEntity(JLcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v1

    .line 135
    .local v1, "scribeItem":Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v2, v1}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->impression(Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;)V

    .line 136
    return-void
.end method

.method scribeNavigateEvent()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->navigate()V

    .line 140
    return-void
.end method

.method scribeShowEvent()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->galleryScribeClient:Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/GalleryScribeClient;->show()V

    .line 126
    return-void
.end method
