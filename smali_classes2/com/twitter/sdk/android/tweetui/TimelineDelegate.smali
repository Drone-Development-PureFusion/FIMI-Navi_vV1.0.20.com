.class Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
.super Ljava/lang/Object;
.source "TimelineDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;,
        Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;,
        Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;,
        Lcom/twitter/sdk/android/tweetui/TimelineDelegate$DefaultCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/twitter/sdk/android/core/models/Identifiable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CAPACITY:J = 0xc8L


# instance fields
.field itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final listAdapterObservable:Landroid/database/DataSetObservable;

.field final timeline:Lcom/twitter/sdk/android/tweetui/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<TT;>;"
        }
    .end annotation
.end field

.field final timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p1, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<TT;>;"
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0, v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;Landroid/database/DataSetObservable;Ljava/util/List;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetui/Timeline;Landroid/database/DataSetObservable;Ljava/util/List;)V
    .locals 2
    .param p2, "observable"    # Landroid/database/DataSetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<TT;>;",
            "Landroid/database/DataSetObservable;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p1, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<TT;>;"
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeline must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    .line 59
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    .line 60
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->listAdapterObservable:Landroid/database/DataSetObservable;

    .line 66
    :goto_0
    if-nez p3, :cond_2

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    .line 71
    :goto_1
    return-void

    .line 63
    :cond_1
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->listAdapterObservable:Landroid/database/DataSetObservable;

    goto :goto_0

    .line 69
    :cond_2
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->isLastPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->previous()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Identifiable;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 132
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Identifiable;

    .line 133
    .local v0, "item":Lcom/twitter/sdk/android/core/models/Identifiable;
    invoke-interface {v0}, Lcom/twitter/sdk/android/core/models/Identifiable;->getId()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTimeline()Lcom/twitter/sdk/android/tweetui/Timeline;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    return-object v0
.end method

.method isLastPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadNext(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "minPosition"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->withinMaxCapacity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->startTimelineRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/tweetui/Timeline;->next(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 177
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v1, "Request already in flight"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0

    .line 175
    :cond_1
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v1, "Max capacity reached"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0
.end method

.method loadPrevious(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "maxPosition"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p2, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->withinMaxCapacity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->startTimelineRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timeline:Lcom/twitter/sdk/android/tweetui/Timeline;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/tweetui/Timeline;->previous(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v1, "Request already in flight"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0

    .line 190
    :cond_1
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v1, "Max capacity reached"

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/core/Callback;->failure(Lcom/twitter/sdk/android/core/TwitterException;)V

    goto :goto_0
.end method

.method public next(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p1, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->positionForNext()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v1, p0, p1, v2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$NextCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->loadNext(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 91
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->listAdapterObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 318
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 325
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->listAdapterObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 326
    return-void
.end method

.method public previous()V
    .locals 3

    .prologue
    .line 97
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->positionForPrevious()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v1, p0, v2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$PreviousCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->loadPrevious(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 99
    return-void
.end method

.method public refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p1, "developerCb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->resetCursors()V

    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;->positionForNext()Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->timelineStateHolder:Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;

    invoke-direct {v1, p0, p1, v2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate$RefreshCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TimelineStateHolder;)V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->loadNext(Ljava/lang/Long;Lcom/twitter/sdk/android/core/Callback;)V

    .line 83
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 300
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->listAdapterObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public setItemById(Lcom/twitter/sdk/android/core/models/Identifiable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    .local p1, "item":Lcom/twitter/sdk/android/core/models/Identifiable;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    invoke-interface {p1}, Lcom/twitter/sdk/android/core/models/Identifiable;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/Identifiable;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/models/Identifiable;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->notifyDataSetChanged()V

    .line 148
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 309
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->listAdapterObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method withinMaxCapacity()Z
    .locals 4

    .prologue
    .line 154
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
