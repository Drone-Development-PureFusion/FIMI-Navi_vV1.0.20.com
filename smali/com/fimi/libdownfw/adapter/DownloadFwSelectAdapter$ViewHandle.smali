.class Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;
.super Ljava/lang/Object;
.source "DownloadFwSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHandle"
.end annotation


# instance fields
.field cbSelect:Landroid/view/View;

.field final synthetic this$0:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

.field tvInfo:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field vLinOne:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->this$0:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;
    .param p2, "x1"    # Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;-><init>(Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;)V

    return-void
.end method
