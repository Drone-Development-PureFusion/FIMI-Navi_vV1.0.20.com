.class public Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;
.super Ljava/lang/Object;
.source "FimiMediaPlayer.java"

# interfaces
.implements Lcom/fimi/soul/media/player/FimiMediaPlayer$OnMediaCodecSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/soul/media/player/FimiMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMediaCodecSelector"
.end annotation


# static fields
.field public static sInstance:Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 963
    new-instance v0, Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;

    invoke-direct {v0}, Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;-><init>()V

    sput-object v0, Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;->sInstance:Lcom/fimi/soul/media/player/FimiMediaPlayer$DefaultMediaCodecSelector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCodecSelect(Lcom/fimi/soul/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;
    .locals 18
    .param p1, "mp"    # Lcom/fimi/soul/media/player/IMediaPlayer;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "profile"    # I
    .param p4, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 968
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-ge v10, v11, :cond_0

    .line 969
    const/4 v10, 0x0

    .line 1023
    :goto_0
    return-object v10

    .line 971
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 972
    const/4 v10, 0x0

    goto :goto_0

    .line 974
    :cond_1
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "onSelectCodec: mime=%s, profile=%d, level=%d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v3, "candidateCodecList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/soul/media/player/FimiMediaCodecInfo;>;"
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v7

    .line 977
    .local v7, "numCodecs":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_6

    .line 978
    invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 979
    .local v5, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "  found codec: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 977
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 983
    :cond_3
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    .line 984
    .local v9, "types":[Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 987
    array-length v11, v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_2

    aget-object v8, v9, v10

    .line 988
    .local v8, "type":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 987
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 991
    :cond_5
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "    mime: %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 995
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/fimi/soul/media/player/FimiMediaCodecInfo;

    move-result-object v2

    .line 996
    .local v2, "candidate":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    if-eqz v2, :cond_4

    .line 999
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "candidate codec: %s rank=%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v2, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->dumpProfileLevels(Ljava/lang/String;)V

    goto :goto_3

    .line 1005
    .end local v2    # "candidate":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    .end local v5    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "types":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1006
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1009
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;

    .line 1011
    .local v1, "bestCodec":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;

    .line 1012
    .local v4, "codec":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    iget v11, v4, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    iget v12, v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    if-le v11, v12, :cond_8

    .line 1013
    move-object v1, v4

    goto :goto_4

    .line 1017
    .end local v4    # "codec":Lcom/fimi/soul/media/player/FimiMediaCodecInfo;
    :cond_9
    iget v10, v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    sget v11, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->RANK_LAST_CHANCE:I

    if-ge v10, v11, :cond_a

    .line 1018
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v12, "unaccetable codec: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1022
    :cond_a
    invoke-static {}, Lcom/fimi/soul/media/player/FimiMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "selected codec: %s rank=%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget v15, v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mRank:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v10, v1, Lcom/fimi/soul/media/player/FimiMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method
