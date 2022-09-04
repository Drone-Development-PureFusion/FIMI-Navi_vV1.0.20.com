.class Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$1;
.super Ljava/lang/Object;
.source "X8ShotAsyncTask.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$1;->this$0:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "btp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask$1;->this$0:Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;->access$002(Lcom/fimi/app/x8s/manager/X8ShotAsyncTask;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method
