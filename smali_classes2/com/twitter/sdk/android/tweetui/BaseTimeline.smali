.class abstract Lcom/twitter/sdk/android/tweetui/BaseTimeline;
.super Ljava/lang/Object;
.source "BaseTimeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/BaseTimeline$TweetsCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decrementMaxId(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p0, "maxId"    # Ljava/lang/Long;

    .prologue
    .line 40
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method abstract getTimelineType()Ljava/lang/String;
.end method
