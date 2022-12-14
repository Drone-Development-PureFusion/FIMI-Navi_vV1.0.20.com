.class public Lcom/twitter/sdk/android/core/models/Tweet;
.super Ljava/lang/Object;
.source "Tweet.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/models/Identifiable;


# static fields
.field public static final INVALID_ID:J = -0x1L


# instance fields
.field public final card:Lcom/twitter/sdk/android/core/models/Card;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card"
    .end annotation
.end field

.field public final coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "coordinates"
    .end annotation
.end field

.field public final createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public final currentUserRetweet:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_user_retweet"
    .end annotation
.end field

.field public final displayTextRange:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_text_range"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final entities:Lcom/twitter/sdk/android/core/models/TweetEntities;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entities"
    .end annotation
.end field

.field public final extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extended_entities"
    .end annotation
.end field

.field public final favoriteCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field public final favorited:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorited"
    .end annotation
.end field

.field public final filterLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_level"
    .end annotation
.end field

.field public final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public final idStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id_str"
    .end annotation
.end field

.field public final inReplyToScreenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_screen_name"
    .end annotation
.end field

.field public final inReplyToStatusId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id"
    .end annotation
.end field

.field public final inReplyToStatusIdStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id_str"
    .end annotation
.end field

.field public final inReplyToUserId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id"
    .end annotation
.end field

.field public final inReplyToUserIdStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id_str"
    .end annotation
.end field

.field public final lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field public final place:Lcom/twitter/sdk/android/core/models/Place;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place"
    .end annotation
.end field

.field public final possiblySensitive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "possibly_sensitive"
    .end annotation
.end field

.field public final quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status"
    .end annotation
.end field

.field public final quotedStatusId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status_id"
    .end annotation
.end field

.field public final quotedStatusIdStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quoted_status_id_str"
    .end annotation
.end field

.field public final retweetCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweet_count"
    .end annotation
.end field

.field public final retweeted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted"
    .end annotation
.end field

.field public final retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted_status"
    .end annotation
.end field

.field public final scopes:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scopes"
    .end annotation
.end field

.field public final source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "full_text"
        }
        value = "text"
    .end annotation
.end field

.field public final truncated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "truncated"
    .end annotation
.end field

.field public final user:Lcom/twitter/sdk/android/core/models/User;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field public final withheldCopyright:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_copyright"
    .end annotation
.end field

.field public final withheldInCountries:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_in_countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final withheldScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "withheld_scope"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 40

    .prologue
    .line 284
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/twitter/sdk/android/core/models/TweetEntities;->EMPTY:Lcom/twitter/sdk/android/core/models/TweetEntities;

    sget-object v6, Lcom/twitter/sdk/android/core/models/TweetEntities;->EMPTY:Lcom/twitter/sdk/android/core/models/TweetEntities;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-string v12, "0"

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v16, "0"

    const-wide/16 v17, 0x0

    const-string v19, "0"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-string v26, "0"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v39}, Lcom/twitter/sdk/android/core/models/Tweet;-><init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/Tweet;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Card;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/Tweet;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Card;)V
    .locals 3
    .param p1, "coordinates"    # Lcom/twitter/sdk/android/core/models/Coordinates;
    .param p2, "createdAt"    # Ljava/lang/String;
    .param p3, "currentUserRetweet"    # Ljava/lang/Object;
    .param p4, "entities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p5, "extendedEntities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;
    .param p6, "favoriteCount"    # Ljava/lang/Integer;
    .param p7, "favorited"    # Z
    .param p8, "filterLevel"    # Ljava/lang/String;
    .param p9, "id"    # J
    .param p11, "idStr"    # Ljava/lang/String;
    .param p12, "inReplyToScreenName"    # Ljava/lang/String;
    .param p13, "inReplyToStatusId"    # J
    .param p15, "inReplyToStatusIdStr"    # Ljava/lang/String;
    .param p16, "inReplyToUserId"    # J
    .param p18, "inReplyToUserIdStr"    # Ljava/lang/String;
    .param p19, "lang"    # Ljava/lang/String;
    .param p20, "place"    # Lcom/twitter/sdk/android/core/models/Place;
    .param p21, "possiblySensitive"    # Z
    .param p22, "scopes"    # Ljava/lang/Object;
    .param p23, "quotedStatusId"    # J
    .param p25, "quotedStatusIdStr"    # Ljava/lang/String;
    .param p26, "quotedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p27, "retweetCount"    # I
    .param p28, "retweeted"    # Z
    .param p29, "retweetedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p30, "source"    # Ljava/lang/String;
    .param p31, "text"    # Ljava/lang/String;
    .param p33, "truncated"    # Z
    .param p34, "user"    # Lcom/twitter/sdk/android/core/models/User;
    .param p35, "withheldCopyright"    # Z
    .param p37, "withheldScope"    # Ljava/lang/String;
    .param p38, "card"    # Lcom/twitter/sdk/android/core/models/Card;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/Coordinates;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Lcom/twitter/sdk/android/core/models/TweetEntities;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Place;",
            "Z",
            "Ljava/lang/Object;",
            "J",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "IZ",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/twitter/sdk/android/core/models/User;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/models/Card;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    .local p32, "displayTextRange":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p36, "withheldInCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/Tweet;->coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

    .line 300
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->createdAt:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/twitter/sdk/android/core/models/Tweet;->currentUserRetweet:Ljava/lang/Object;

    .line 302
    if-nez p4, :cond_0

    sget-object p4, Lcom/twitter/sdk/android/core/models/TweetEntities;->EMPTY:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .end local p4    # "entities":Lcom/twitter/sdk/android/core/models/TweetEntities;
    :cond_0
    iput-object p4, p0, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 303
    if-nez p5, :cond_1

    sget-object p5, Lcom/twitter/sdk/android/core/models/TweetEntities;->EMPTY:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .end local p5    # "extendedEntities":Lcom/twitter/sdk/android/core/models/TweetEntities;
    :cond_1
    iput-object p5, p0, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 304
    iput-object p6, p0, Lcom/twitter/sdk/android/core/models/Tweet;->favoriteCount:Ljava/lang/Integer;

    .line 305
    iput-boolean p7, p0, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    .line 306
    iput-object p8, p0, Lcom/twitter/sdk/android/core/models/Tweet;->filterLevel:Ljava/lang/String;

    .line 307
    iput-wide p9, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    .line 308
    iput-object p11, p0, Lcom/twitter/sdk/android/core/models/Tweet;->idStr:Ljava/lang/String;

    .line 309
    iput-object p12, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToScreenName:Ljava/lang/String;

    .line 310
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusId:J

    .line 311
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusIdStr:Ljava/lang/String;

    .line 312
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToUserId:J

    .line 313
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToUserIdStr:Ljava/lang/String;

    .line 314
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->lang:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->place:Lcom/twitter/sdk/android/core/models/Place;

    .line 316
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->possiblySensitive:Z

    .line 317
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->scopes:Ljava/lang/Object;

    .line 318
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatusId:J

    .line 319
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatusIdStr:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 321
    move/from16 v0, p27

    iput v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweetCount:I

    .line 322
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweeted:Z

    .line 323
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 324
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->source:Ljava/lang/String;

    .line 325
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    .line 326
    invoke-static/range {p32 .. p32}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->displayTextRange:Ljava/util/List;

    .line 327
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->truncated:Z

    .line 328
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    .line 329
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->withheldCopyright:Z

    .line 330
    invoke-static/range {p36 .. p36}, Lcom/twitter/sdk/android/core/models/ModelUtils;->getSafeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->withheldInCountries:Ljava/util/List;

    .line 331
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->withheldScope:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    .line 333
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 342
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 343
    :cond_1
    instance-of v2, p1, Lcom/twitter/sdk/android/core/models/Tweet;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 344
    check-cast v0, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 345
    .local v0, "other":Lcom/twitter/sdk/android/core/models/Tweet;
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    iget-wide v4, v0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    long-to-int v0, v0

    return v0
.end method
