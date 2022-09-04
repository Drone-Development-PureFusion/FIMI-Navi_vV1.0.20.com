.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment$1;
.super Ljava/lang/Object;
.source "PlayBackMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->initMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/PlayBackMapFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 113
    :cond_0
    return-void
.end method
