.class public final enum Lcom/fimi/album/widget/DownloadStateView$State;
.super Ljava/lang/Enum;
.source "DownloadStateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/album/widget/DownloadStateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/album/widget/DownloadStateView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/album/widget/DownloadStateView$State;

.field public static final enum DOWNLOADING:Lcom/fimi/album/widget/DownloadStateView$State;

.field public static final enum DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

.field public static final enum PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/fimi/album/widget/DownloadStateView$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/album/widget/DownloadStateView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    new-instance v0, Lcom/fimi/album/widget/DownloadStateView$State;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3}, Lcom/fimi/album/widget/DownloadStateView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOADING:Lcom/fimi/album/widget/DownloadStateView$State;

    new-instance v0, Lcom/fimi/album/widget/DownloadStateView$State;

    const-string v1, "DOWNLOAD_FAIL"

    invoke-direct {v0, v1, v4}, Lcom/fimi/album/widget/DownloadStateView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v1, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOADING:Lcom/fimi/album/widget/DownloadStateView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->$VALUES:[Lcom/fimi/album/widget/DownloadStateView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/album/widget/DownloadStateView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/fimi/album/widget/DownloadStateView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/widget/DownloadStateView$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/album/widget/DownloadStateView$State;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->$VALUES:[Lcom/fimi/album/widget/DownloadStateView$State;

    invoke-virtual {v0}, [Lcom/fimi/album/widget/DownloadStateView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/album/widget/DownloadStateView$State;

    return-object v0
.end method
