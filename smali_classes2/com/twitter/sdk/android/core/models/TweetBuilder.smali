.class public Lcom/twitter/sdk/android/core/models/TweetBuilder;
.super Ljava/lang/Object;
.source "TweetBuilder.java"


# instance fields
.field private card:Lcom/twitter/sdk/android/core/models/Card;

.field private coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

.field private createdAt:Ljava/lang/String;

.field private currentUserRetweet:Ljava/lang/Object;

.field private displayTextRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

.field private extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

.field private favoriteCount:Ljava/lang/Integer;

.field private favorited:Z

.field private filterLevel:Ljava/lang/String;

.field private id:J

.field private idStr:Ljava/lang/String;

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToStatusIdStr:Ljava/lang/String;

.field private inReplyToUserId:J

.field private inReplyToUserIdStr:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private place:Lcom/twitter/sdk/android/core/models/Place;

.field private possiblySensitive:Z

.field private quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

.field private quotedStatusId:J

.field private quotedStatusIdStr:Ljava/lang/String;

.field private retweetCount:I

.field private retweeted:Z

.field private retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

.field private scopes:Ljava/lang/Object;

.field private source:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private truncated:Z

.field private user:Lcom/twitter/sdk/android/core/models/User;

.field private withheldCopyright:Z

.field private withheldInCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private withheldScope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->id:J

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/core/models/Tweet;
    .locals 42

    .prologue
    .line 267
    new-instance v3, Lcom/twitter/sdk/android/core/models/Tweet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->createdAt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->currentUserRetweet:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->favoriteCount:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->favorited:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->filterLevel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->id:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->idStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToScreenName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToStatusId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToStatusIdStr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToUserId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToUserIdStr:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->lang:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->place:Lcom/twitter/sdk/android/core/models/Place;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->possiblySensitive:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->scopes:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatusId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatusIdStr:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweetCount:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweeted:Z

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->source:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->text:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->displayTextRange:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->truncated:Z

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->user:Lcom/twitter/sdk/android/core/models/User;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldCopyright:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldInCountries:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldScope:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->card:Lcom/twitter/sdk/android/core/models/Card;

    move-object/from16 v41, v0

    invoke-direct/range {v3 .. v41}, Lcom/twitter/sdk/android/core/models/Tweet;-><init>(Lcom/twitter/sdk/android/core/models/Coordinates;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/sdk/android/core/models/TweetEntities;Lcom/twitter/sdk/android/core/models/TweetEntities;Ljava/lang/Integer;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Place;ZLjava/lang/Object;JLjava/lang/String;Lcom/twitter/sdk/android/core/models/Tweet;IZLcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/twitter/sdk/android/core/models/User;ZLjava/util/List;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/Card;)V

    return-object v3
.end method

.method public copy(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 2
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 229
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

    .line 230
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->createdAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->createdAt:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->currentUserRetweet:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->currentUserRetweet:Ljava/lang/Object;

    .line 232
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 233
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 234
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->favoriteCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->favoriteCount:Ljava/lang/Integer;

    .line 235
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->favorited:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->favorited:Z

    .line 236
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->filterLevel:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->filterLevel:Ljava/lang/String;

    .line 237
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->id:J

    .line 238
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->idStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->idStr:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToScreenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToScreenName:Ljava/lang/String;

    .line 240
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusId:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToStatusId:J

    .line 241
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusIdStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToStatusIdStr:Ljava/lang/String;

    .line 242
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToUserId:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToUserId:J

    .line 243
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->inReplyToStatusIdStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToUserIdStr:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->lang:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->lang:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->place:Lcom/twitter/sdk/android/core/models/Place;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->place:Lcom/twitter/sdk/android/core/models/Place;

    .line 246
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->possiblySensitive:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->possiblySensitive:Z

    .line 247
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->scopes:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->scopes:Ljava/lang/Object;

    .line 248
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatusId:J

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatusId:J

    .line 249
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatusIdStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatusIdStr:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 251
    iget v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->retweetCount:I

    iput v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweetCount:I

    .line 252
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->retweeted:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweeted:Z

    .line 253
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 254
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->source:Ljava/lang/String;

    .line 255
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->text:Ljava/lang/String;

    .line 256
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->displayTextRange:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->displayTextRange:Ljava/util/List;

    .line 257
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->truncated:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->truncated:Z

    .line 258
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->user:Lcom/twitter/sdk/android/core/models/User;

    .line 259
    iget-boolean v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->withheldCopyright:Z

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldCopyright:Z

    .line 260
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->withheldInCountries:Ljava/util/List;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldInCountries:Ljava/util/List;

    .line 261
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->withheldScope:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldScope:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/Tweet;->card:Lcom/twitter/sdk/android/core/models/Card;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->card:Lcom/twitter/sdk/android/core/models/Card;

    .line 263
    return-object p0
.end method

.method public setCard(Lcom/twitter/sdk/android/core/models/Card;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "card"    # Lcom/twitter/sdk/android/core/models/Card;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->card:Lcom/twitter/sdk/android/core/models/Card;

    .line 225
    return-object p0
.end method

.method public setCoordinates(Lcom/twitter/sdk/android/core/models/Coordinates;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "coordinates"    # Lcom/twitter/sdk/android/core/models/Coordinates;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->coordinates:Lcom/twitter/sdk/android/core/models/Coordinates;

    .line 60
    return-object p0
.end method

.method public setCreatedAt(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->createdAt:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public setCurrentUserRetweet(Ljava/lang/Object;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "currentUserRetweet"    # Ljava/lang/Object;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->currentUserRetweet:Ljava/lang/Object;

    .line 70
    return-object p0
.end method

.method public setDisplayTextRange(Ljava/util/List;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/twitter/sdk/android/core/models/TweetBuilder;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "displayTextRange":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->displayTextRange:Ljava/util/List;

    .line 195
    return-object p0
.end method

.method public setEntities(Lcom/twitter/sdk/android/core/models/TweetEntities;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "entities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->entities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 75
    return-object p0
.end method

.method public setExtendedEntities(Lcom/twitter/sdk/android/core/models/TweetEntities;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "extendedEntities"    # Lcom/twitter/sdk/android/core/models/TweetEntities;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->extendedEntities:Lcom/twitter/sdk/android/core/models/TweetEntities;

    .line 80
    return-object p0
.end method

.method public setFavoriteCount(Ljava/lang/Integer;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "favoriteCount"    # Ljava/lang/Integer;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->favoriteCount:Ljava/lang/Integer;

    .line 85
    return-object p0
.end method

.method public setFavorited(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "favorited"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->favorited:Z

    .line 90
    return-object p0
.end method

.method public setFilterLevel(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "filterLevel"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->filterLevel:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setId(J)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->id:J

    .line 100
    return-object p0
.end method

.method public setIdStr(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "idStr"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->idStr:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setInReplyToScreenName(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "inReplyToScreenName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToScreenName:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public setInReplyToStatusId(J)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 1
    .param p1, "inReplyToStatusId"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToStatusId:J

    .line 115
    return-object p0
.end method

.method public setInReplyToStatusIdStr(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "inReplyToStatusIdStr"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToStatusIdStr:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setInReplyToUserId(J)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 1
    .param p1, "inReplyToUserId"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToUserId:J

    .line 125
    return-object p0
.end method

.method public setInReplyToUserIdStr(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "inReplyToUserIdStr"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->inReplyToUserIdStr:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->lang:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setPlace(Lcom/twitter/sdk/android/core/models/Place;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "place"    # Lcom/twitter/sdk/android/core/models/Place;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->place:Lcom/twitter/sdk/android/core/models/Place;

    .line 140
    return-object p0
.end method

.method public setPossiblySensitive(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "possiblySensitive"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->possiblySensitive:Z

    .line 145
    return-object p0
.end method

.method public setQuotedStatus(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "quotedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 165
    return-object p0
.end method

.method public setQuotedStatusId(J)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 1
    .param p1, "quotedStatusId"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatusId:J

    .line 155
    return-object p0
.end method

.method public setQuotedStatusIdStr(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "quotedStatusIdStr"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->quotedStatusIdStr:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setRetweetCount(I)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "retweetCount"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweetCount:I

    .line 170
    return-object p0
.end method

.method public setRetweeted(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "retweeted"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweeted:Z

    .line 175
    return-object p0
.end method

.method public setRetweetedStatus(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "retweetedStatus"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->retweetedStatus:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 180
    return-object p0
.end method

.method public setScopes(Ljava/lang/Object;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "scopes"    # Ljava/lang/Object;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->scopes:Ljava/lang/Object;

    .line 150
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->source:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->text:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setTruncated(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "truncated"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->truncated:Z

    .line 200
    return-object p0
.end method

.method public setUser(Lcom/twitter/sdk/android/core/models/User;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "user"    # Lcom/twitter/sdk/android/core/models/User;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->user:Lcom/twitter/sdk/android/core/models/User;

    .line 205
    return-object p0
.end method

.method public setWithheldCopyright(Z)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "withheldCopyright"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldCopyright:Z

    .line 210
    return-object p0
.end method

.method public setWithheldInCountries(Ljava/util/List;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/sdk/android/core/models/TweetBuilder;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "withheldInCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldInCountries:Ljava/util/List;

    .line 215
    return-object p0
.end method

.method public setWithheldScope(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/TweetBuilder;
    .locals 0
    .param p1, "withheldScope"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetBuilder;->withheldScope:Ljava/lang/String;

    .line 220
    return-object p0
.end method
