.class public final enum Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;
.super Ljava/lang/Enum;
.source "SearchTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/SearchTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

.field public static final enum FILTERED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

.field public static final enum MIXED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

.field public static final enum POPULAR:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

.field public static final enum RECENT:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;


# instance fields
.field final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    new-instance v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    const-string v1, "RECENT"

    const-string v2, "recent"

    invoke-direct {v0, v1, v3, v2}, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->RECENT:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    .line 133
    new-instance v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    const-string v1, "POPULAR"

    const-string v2, "popular"

    invoke-direct {v0, v1, v4, v2}, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->POPULAR:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    .line 134
    new-instance v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    const-string v1, "MIXED"

    const-string v2, "mixed"

    invoke-direct {v0, v1, v5, v2}, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->MIXED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    .line 135
    new-instance v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    const-string v1, "FILTERED"

    const-string v2, "filtered"

    invoke-direct {v0, v1, v6, v2}, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->FILTERED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    sget-object v1, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->RECENT:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->POPULAR:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->MIXED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->FILTERED:Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->$VALUES:[Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->type:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->$VALUES:[Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    invoke-virtual {v0}, [Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/sdk/android/tweetui/SearchTimeline$ResultType;

    return-object v0
.end method
