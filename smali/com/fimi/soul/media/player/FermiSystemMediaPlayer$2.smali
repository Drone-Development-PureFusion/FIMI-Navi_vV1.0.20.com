.class Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$2;
.super Ljava/lang/Object;
.source "FermiSystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$2;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer$2;->this$0:Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;->access$002(Lcom/fimi/soul/media/player/FermiSystemMediaPlayer;Z)Z

    .line 230
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 232
    return-void
.end method
