.class public Lcom/googlecode/mp4parser/boxes/apple/AppleTVEpisodeNumberBox;
.super Lcom/googlecode/mp4parser/boxes/apple/Utf8AppleDataBox;
.source "AppleTVEpisodeNumberBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "tven"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/apple/Utf8AppleDataBox;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
