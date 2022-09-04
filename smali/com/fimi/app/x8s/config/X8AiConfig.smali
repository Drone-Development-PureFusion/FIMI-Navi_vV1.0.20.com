.class public Lcom/fimi/app/x8s/config/X8AiConfig;
.super Ljava/lang/Object;
.source "X8AiConfig.java"


# static fields
.field private static instance:Lcom/fimi/app/x8s/config/X8AiConfig;


# instance fields
.field private aiFlyGravitationHeight:I

.field private aiFlyGravitationLevel:I

.field private aiFlyGravitationRotate:I

.field private isAiAerialPhotographCourse:Z

.field private isAiAutoPhotoCustomCourse:Z

.field private isAiAutoPhotoVerticalCourse:Z

.field private isAiFixedwingCourse:Z

.field private isAiFlyGravitation:Z

.field private isAiFollowLockupCourse:Z

.field private isAiFollowNormalCourse:Z

.field private isAiFollowParallelCourse:Z

.field private isAiHeadingLock:Z

.field private isAiLineCourse:Z

.field private isAiLineCourseFpv:Z

.field private isAiLineCourseHistory:Z

.field private isAiLineCurve:Z

.field private isAiP2PCourse:Z

.field private isAiSar:Z

.field private isAiScrew:Z

.field private isAiSurroundCourse:Z

.field private isAiTripodCourse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/fimi/app/x8s/config/X8AiConfig;

    invoke-direct {v0}, Lcom/fimi/app/x8s/config/X8AiConfig;-><init>()V

    sput-object v0, Lcom/fimi/app/x8s/config/X8AiConfig;->instance:Lcom/fimi/app/x8s/config/X8AiConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/fimi/app/x8s/config/X8AiConfig;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/fimi/app/x8s/config/X8AiConfig;->instance:Lcom/fimi/app/x8s/config/X8AiConfig;

    return-object v0
.end method


# virtual methods
.method public getAiFlyGravitationHeight()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationHeight:I

    return v0
.end method

.method public getAiFlyGravitationLevel()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationLevel:I

    return v0
.end method

.method public getAiFlyGravitationRotate()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationRotate:I

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 160
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiP2PCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiP2PCourse:Z

    .line 161
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourse:Z

    .line 162
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCourseFpv"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseFpv:Z

    .line 163
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCourseHistory"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseHistory:Z

    .line 165
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiSurroundCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSurroundCourse:Z

    .line 166
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiAutoPhotoCustomCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoCustomCourse:Z

    .line 167
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiAutoPhotoVerticalCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoVerticalCourse:Z

    .line 168
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFollowNormalCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowNormalCourse:Z

    .line 169
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFollowParallelCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowParallelCourse:Z

    .line 170
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFollowLockupCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowLockupCourse:Z

    .line 172
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiTripodCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiTripodCourse:Z

    .line 173
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiAerialPhotographCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAerialPhotographCourse:Z

    .line 174
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFixedwingCourse"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFixedwingCourse:Z

    .line 175
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiHeadingLock"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiHeadingLock:Z

    .line 176
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiScrew"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiScrew:Z

    .line 177
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiSar"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSar:Z

    .line 178
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFlyGravitation"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFlyGravitation:Z

    .line 179
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "aiFlyGravitationLevel"

    invoke-virtual {v0, v1, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationLevel:I

    .line 180
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "aiFlyGravitationHeight"

    invoke-virtual {v0, v1, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationHeight:I

    .line 181
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "aiFlyGravitationRotate"

    invoke-virtual {v0, v1, v3}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationRotate:I

    .line 183
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCurve"

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCurve:Z

    .line 184
    return-void
.end method

.method public isAiAerialPhotographCourse()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAerialPhotographCourse:Z

    return v0
.end method

.method public isAiAutoPhotoCustomCourse()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoCustomCourse:Z

    return v0
.end method

.method public isAiAutoPhotoVerticalCourse()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoVerticalCourse:Z

    return v0
.end method

.method public isAiFixedwingCourse()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFixedwingCourse:Z

    return v0
.end method

.method public isAiFlyGravitation()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFlyGravitation:Z

    return v0
.end method

.method public isAiFollowLockupCourse()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowLockupCourse:Z

    return v0
.end method

.method public isAiFollowNormalCourse()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowNormalCourse:Z

    return v0
.end method

.method public isAiFollowParallelCourse()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowParallelCourse:Z

    return v0
.end method

.method public isAiHeadingLock()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiHeadingLock:Z

    return v0
.end method

.method public isAiLineCourse()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourse:Z

    return v0
.end method

.method public isAiLineCourseFpv()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseFpv:Z

    return v0
.end method

.method public isAiLineCourseHistory()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseHistory:Z

    return v0
.end method

.method public isAiLineCurve()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCurve:Z

    return v0
.end method

.method public isAiP2PCourse()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiP2PCourse:Z

    return v0
.end method

.method public isAiSar()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSar:Z

    return v0
.end method

.method public isAiScrew()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiScrew:Z

    return v0
.end method

.method public isAiSurroundCourse()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSurroundCourse:Z

    return v0
.end method

.method public isAiTripodCourse()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiTripodCourse:Z

    return v0
.end method

.method public setAiAerialPhotographCourse(Z)V
    .locals 3
    .param p1, "aiAerialPhotographCourse"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAerialPhotographCourse:Z

    .line 130
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiAerialPhotographCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAerialPhotographCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public setAiAutoPhotoCustomCourse(Z)V
    .locals 3
    .param p1, "aiAutoPhotoCustomCourse"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoCustomCourse:Z

    .line 243
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiAutoPhotoCustomCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoCustomCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public setAiAutoPhotoVerticalCourse(Z)V
    .locals 3
    .param p1, "aiAutoPhotoVerticalCourse"    # Z

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoVerticalCourse:Z

    .line 253
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiAutoPhotoVerticalCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiAutoPhotoVerticalCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 254
    return-void
.end method

.method public setAiFixedwingCourse(Z)V
    .locals 3
    .param p1, "aiFixedwingCourse"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFixedwingCourse:Z

    .line 140
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFixedwingCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFixedwingCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 142
    return-void
.end method

.method public setAiFlyGravitation(Z)V
    .locals 3
    .param p1, "aiFlyGravitation"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFlyGravitation:Z

    .line 93
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFlyGravitation"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFlyGravitation:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public setAiFlyGravitationHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationHeight:I

    .line 71
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "aiFlyGravitationHeight"

    iget v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 72
    return-void
.end method

.method public setAiFlyGravitationLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationLevel:I

    .line 80
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "aiFlyGravitationLevel"

    iget v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public setAiFlyGravitationRotate(I)V
    .locals 3
    .param p1, "clockwise"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationRotate:I

    .line 62
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "aiFlyGravitationRotate"

    iget v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->aiFlyGravitationRotate:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveInt(Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public setAiFollowLockupCourse(Z)V
    .locals 3
    .param p1, "aiFollowLockupCourse"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowLockupCourse:Z

    .line 280
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFollowLockupCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowLockupCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 282
    return-void
.end method

.method public setAiFollowNormalCourse(Z)V
    .locals 3
    .param p1, "aiFollowNormalCourse"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowNormalCourse:Z

    .line 262
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFollowNormalCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowNormalCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 263
    return-void
.end method

.method public setAiFollowParallelCourse(Z)V
    .locals 3
    .param p1, "aiFollowParallelCourse"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowParallelCourse:Z

    .line 270
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiFollowParallelCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiFollowParallelCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public setAiHeadingLock(Z)V
    .locals 3
    .param p1, "aiHeadingLock"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiHeadingLock:Z

    .line 150
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiHeadingLock"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiHeadingLock:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public setAiLineCourse(Z)V
    .locals 2
    .param p1, "aiLineCourse"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourse:Z

    .line 204
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCourse"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 206
    return-void
.end method

.method public setAiLineCourseFpv(Z)V
    .locals 3
    .param p1, "aiLineCourseFpv"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseFpv:Z

    .line 214
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCourseFpv"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseFpv:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public setAiLineCourseHistory(Z)V
    .locals 3
    .param p1, "aiLineCourseHistory"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseHistory:Z

    .line 223
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCourseHistory"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCourseHistory:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public setAiLineCurve(Z)V
    .locals 2
    .param p1, "isAiLineCurve"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiLineCurve:Z

    .line 57
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiLineCurve"

    invoke-virtual {v0, v1, p1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public setAiP2PCourse(Z)V
    .locals 3
    .param p1, "aiP2PCourse"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiP2PCourse:Z

    .line 195
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiP2PCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiP2PCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 196
    return-void
.end method

.method public setAiSar(Z)V
    .locals 3
    .param p1, "aiSar"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSar:Z

    .line 102
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiSar"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSar:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public setAiScrew(Z)V
    .locals 3
    .param p1, "aiScrew"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiScrew:Z

    .line 111
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiScrew"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiScrew:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public setAiSurroundCourse(Z)V
    .locals 3
    .param p1, "aiSurroundCourse"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSurroundCourse:Z

    .line 233
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiSurroundCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiSurroundCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public setAiTripodCourse(Z)V
    .locals 3
    .param p1, "aiTripodCourse"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiTripodCourse:Z

    .line 121
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "isAiTripodCourse"

    iget-boolean v2, p0, Lcom/fimi/app/x8s/config/X8AiConfig;->isAiTripodCourse:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 122
    return-void
.end method
