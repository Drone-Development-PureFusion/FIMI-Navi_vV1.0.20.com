.class public final Lcom/twitter/sdk/android/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AspectRatioFrameLayout:[I

.field public static final AspectRatioFrameLayout_tw__frame_layout_aspect_ratio:I = 0x0

.field public static final AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust:I = 0x1

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5

.field public static final ToggleImageButton:[I

.field public static final ToggleImageButton_contentDescriptionOff:I = 0x2

.field public static final ToggleImageButton_contentDescriptionOn:I = 0x1

.field public static final ToggleImageButton_state_toggled_on:I = 0x0

.field public static final ToggleImageButton_toggleOnClick:I = 0x3

.field public static final tw__TweetView:[I

.field public static final tw__TweetView_tw__action_color:I = 0x3

.field public static final tw__TweetView_tw__action_highlight_color:I = 0x4

.field public static final tw__TweetView_tw__container_bg_color:I = 0x1

.field public static final tw__TweetView_tw__primary_text_color:I = 0x2

.field public static final tw__TweetView_tw__tweet_actions_enabled:I = 0x5

.field public static final tw__TweetView_tw__tweet_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->AspectRatioFrameLayout:[I

    .line 409
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->RecyclerView:[I

    .line 415
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->ToggleImageButton:[I

    .line 420
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/twitter/sdk/android/R$styleable;->tw__TweetView:[I

    return-void

    .line 406
    :array_0
    .array-data 4
        0x7f0100af
        0x7f0100b0
    .end array-data

    .line 409
    :array_1
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f010152
        0x7f010153
        0x7f010154
        0x7f010155
        0x7f010156
        0x7f010157
        0x7f010158
        0x7f010159
        0x7f01015a
    .end array-data

    .line 415
    :array_2
    .array-data 4
        0x7f0101b2
        0x7f0101b3
        0x7f0101b4
        0x7f0101b5
    .end array-data

    .line 420
    :array_3
    .array-data 4
        0x7f010219
        0x7f01021a
        0x7f01021b
        0x7f01021c
        0x7f01021d
        0x7f01021e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
