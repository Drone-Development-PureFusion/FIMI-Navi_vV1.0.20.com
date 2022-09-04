.class public Lcom/twitter/sdk/android/core/models/UserBuilder;
.super Ljava/lang/Object;
.source "UserBuilder.java"


# instance fields
.field private contributorsEnabled:Z

.field private createdAt:Ljava/lang/String;

.field private defaultProfile:Z

.field private defaultProfileImage:Z

.field private description:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private entities:Lcom/twitter/sdk/android/core/models/UserEntities;

.field private favouritesCount:I

.field private followRequestSent:Z

.field private followersCount:I

.field private friendsCount:I

.field private geoEnabled:Z

.field private id:J

.field private idStr:Ljava/lang/String;

.field private isTranslator:Z

.field private lang:Ljava/lang/String;

.field private listedCount:I

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private profileBackgroundColor:Ljava/lang/String;

.field private profileBackgroundImageUrl:Ljava/lang/String;

.field private profileBackgroundImageUrlHttps:Ljava/lang/String;

.field private profileBackgroundTile:Z

.field private profileBannerUrl:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;

.field private profileImageUrlHttps:Ljava/lang/String;

.field private profileLinkColor:Ljava/lang/String;

.field private profileSidebarBorderColor:Ljava/lang/String;

.field private profileSidebarFillColor:Ljava/lang/String;

.field private profileTextColor:Ljava/lang/String;

.field private profileUseBackgroundImage:Z

.field private protectedUser:Z

.field private screenName:Ljava/lang/String;

.field private showAllInlineMedia:Z

.field private status:Lcom/twitter/sdk/android/core/models/Tweet;

.field private statusesCount:I

.field private timeZone:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private utcOffset:I

.field private verified:Z

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

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->id:J

    return-void
.end method


# virtual methods
.method public build()Lcom/twitter/sdk/android/core/models/User;
    .locals 47

    .prologue
    .line 277
    new-instance v3, Lcom/twitter/sdk/android/core/models/User;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->contributorsEnabled:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->createdAt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->defaultProfile:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->defaultProfileImage:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->email:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->entities:Lcom/twitter/sdk/android/core/models/UserEntities;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->favouritesCount:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->followRequestSent:Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->followersCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->friendsCount:I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->geoEnabled:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->id:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->idStr:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->isTranslator:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->lang:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->listedCount:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->location:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundColor:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundImageUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundTile:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBannerUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileImageUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileImageUrlHttps:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileLinkColor:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileSidebarBorderColor:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileSidebarFillColor:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileTextColor:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileUseBackgroundImage:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->protectedUser:Z

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->screenName:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->showAllInlineMedia:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->status:Lcom/twitter/sdk/android/core/models/Tweet;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->statusesCount:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->timeZone:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->url:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->utcOffset:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->verified:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->withheldInCountries:Ljava/util/List;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/UserBuilder;->withheldScope:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-direct/range {v3 .. v46}, Lcom/twitter/sdk/android/core/models/User;-><init>(ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/core/models/UserEntities;IZIIZJLjava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLcom/twitter/sdk/android/core/models/Tweet;ILjava/lang/String;Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;)V

    return-object v3
.end method

.method public setContributorsEnabled(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "contributorsEnabled"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->contributorsEnabled:Z

    .line 68
    return-object p0
.end method

.method public setCreatedAt(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->createdAt:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setDefaultProfile(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "defaultProfile"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->defaultProfile:Z

    .line 78
    return-object p0
.end method

.method public setDefaultProfileImage(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "defaultProfileImage"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->defaultProfileImage:Z

    .line 83
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->description:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->email:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setEntities(Lcom/twitter/sdk/android/core/models/UserEntities;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "entities"    # Lcom/twitter/sdk/android/core/models/UserEntities;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->entities:Lcom/twitter/sdk/android/core/models/UserEntities;

    .line 98
    return-object p0
.end method

.method public setFavouritesCount(I)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "favouritesCount"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->favouritesCount:I

    .line 103
    return-object p0
.end method

.method public setFollowRequestSent(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "followRequestSent"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->followRequestSent:Z

    .line 108
    return-object p0
.end method

.method public setFollowersCount(I)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "followersCount"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->followersCount:I

    .line 113
    return-object p0
.end method

.method public setFriendsCount(I)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "friendsCount"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->friendsCount:I

    .line 118
    return-object p0
.end method

.method public setGeoEnabled(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "geoEnabled"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->geoEnabled:Z

    .line 123
    return-object p0
.end method

.method public setId(J)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->id:J

    .line 128
    return-object p0
.end method

.method public setIdStr(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "idStr"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->idStr:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setIsTranslator(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "isTranslator"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->isTranslator:Z

    .line 138
    return-object p0
.end method

.method public setLang(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->lang:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setListedCount(I)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "listedCount"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->listedCount:I

    .line 148
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->location:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->name:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setProfileBackgroundColor(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileBackgroundColor"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundColor:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setProfileBackgroundImageUrl(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileBackgroundImageUrl"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundImageUrl:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public setProfileBackgroundImageUrlHttps(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileBackgroundImageUrlHttps"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundImageUrlHttps:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setProfileBackgroundTile(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileBackgroundTile"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBackgroundTile:Z

    .line 178
    return-object p0
.end method

.method public setProfileBannerUrl(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileBannerUrl"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileBannerUrl:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileImageUrl"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileImageUrl:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setProfileImageUrlHttps(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileImageUrlHttps"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileImageUrlHttps:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setProfileLinkColor(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileLinkColor"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileLinkColor:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public setProfileSidebarBorderColor(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileSidebarBorderColor"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileSidebarBorderColor:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public setProfileSidebarFillColor(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileSidebarFillColor"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileSidebarFillColor:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setProfileTextColor(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileTextColor"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileTextColor:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public setProfileUseBackgroundImage(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "profileUseBackgroundImage"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->profileUseBackgroundImage:Z

    .line 218
    return-object p0
.end method

.method public setProtectedUser(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "protectedUser"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->protectedUser:Z

    .line 223
    return-object p0
.end method

.method public setScreenName(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->screenName:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setShowAllInlineMedia(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "showAllInlineMedia"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->showAllInlineMedia:Z

    .line 233
    return-object p0
.end method

.method public setStatus(Lcom/twitter/sdk/android/core/models/Tweet;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "status"    # Lcom/twitter/sdk/android/core/models/Tweet;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->status:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 238
    return-object p0
.end method

.method public setStatusesCount(I)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "statusesCount"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->statusesCount:I

    .line 243
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->timeZone:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->url:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public setUtcOffset(I)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "utcOffset"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->utcOffset:I

    .line 258
    return-object p0
.end method

.method public setVerified(Z)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->verified:Z

    .line 263
    return-object p0
.end method

.method public setWithheldInCountries(Ljava/util/List;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/sdk/android/core/models/UserBuilder;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "withheldInCountries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->withheldInCountries:Ljava/util/List;

    .line 268
    return-object p0
.end method

.method public setWithheldScope(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/UserBuilder;
    .locals 0
    .param p1, "withheldScope"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserBuilder;->withheldScope:Ljava/lang/String;

    .line 273
    return-object p0
.end method
