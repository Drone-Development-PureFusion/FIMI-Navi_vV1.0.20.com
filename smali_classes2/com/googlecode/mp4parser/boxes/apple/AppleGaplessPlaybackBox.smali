.class public Lcom/googlecode/mp4parser/boxes/apple/AppleGaplessPlaybackBox;
.super Lcom/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox;
.source "AppleGaplessPlaybackBox.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "pgap"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/apple/AppleVariableSignedIntegerBox;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
