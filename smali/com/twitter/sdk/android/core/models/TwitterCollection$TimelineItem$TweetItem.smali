.class public final Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem$TweetItem;
.super Ljava/lang/Object;
.source "TwitterCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TweetItem"
.end annotation


# instance fields
.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TwitterCollection$TimelineItem$TweetItem;->id:Ljava/lang/Long;

    .line 142
    return-void
.end method
