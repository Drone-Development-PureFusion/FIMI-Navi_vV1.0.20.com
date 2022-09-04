.class abstract Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimelineListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/twitter/sdk/android/core/models/Identifiable;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    .local p2, "timeline":Lcom/twitter/sdk/android/tweetui/Timeline;, "Lcom/twitter/sdk/android/tweetui/Timeline<TT;>;"
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    .local p2, "delegate":Lcom/twitter/sdk/android/tweetui/TimelineDelegate;, "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getCount()I

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
    .line 68
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->notifyDataSetChanged()V

    .line 89
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->notifyDataSetInvalidated()V

    .line 94
    return-void
.end method

.method public refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
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
    .line 58
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    .local p1, "cb":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    .line 59
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 78
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 83
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;, "Lcom/twitter/sdk/android/tweetui/TimelineListAdapter<TT;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TimelineListAdapter;->delegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    return-void
.end method
