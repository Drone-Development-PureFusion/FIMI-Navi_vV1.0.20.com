.class Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;
.super Ljava/lang/Object;
.source "GglMapLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getCityThread(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;->this$0:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    iput-object p2, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;->this$0:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager$1;->val$location:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->access$000(Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;Landroid/location/Location;)V

    .line 399
    return-void
.end method
