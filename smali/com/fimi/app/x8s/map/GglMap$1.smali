.class Lcom/fimi/app/x8s/map/GglMap$1;
.super Ljava/lang/Object;
.source "GglMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/map/GglMap;->snapshot(Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/map/GglMap;

.field final synthetic val$callBack:Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/map/GglMap;Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/map/GglMap;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/fimi/app/x8s/map/GglMap$1;->this$0:Lcom/fimi/app/x8s/map/GglMap;

    iput-object p2, p0, Lcom/fimi/app/x8s/map/GglMap$1;->val$callBack:Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap$1;->val$callBack:Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    .line 461
    return-void
.end method
