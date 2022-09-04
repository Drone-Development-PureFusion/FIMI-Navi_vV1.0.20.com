.class Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$9;
.super Ljava/lang/Object;
.source "X8BatteryItemController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8TabHost$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->showItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/String;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "last"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setLowPowerOpt(IZ)V

    .line 286
    return-void
.end method
