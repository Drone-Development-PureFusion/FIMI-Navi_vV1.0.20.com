.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;
.super Lcom/fimi/widget/impl/NoDoubleClickListener;
.source "X8FlightlogTopBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;
    .param p2, "x0"    # I

    .prologue
    .line 127
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-direct {p0, p2}, Lcom/fimi/widget/impl/NoDoubleClickListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Lcom/fimi/widget/CustomLoadManage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    new-instance v1, Lcom/fimi/widget/CustomLoadManage;

    invoke-direct {v1}, Lcom/fimi/widget/CustomLoadManage;-><init>()V

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;Lcom/fimi/widget/CustomLoadManage;)Lcom/fimi/widget/CustomLoadManage;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Lcom/fimi/widget/CustomLoadManage;

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/widget/CustomLoadManage;->x8ShowNoClick(Landroid/content/Context;)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_collect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;Z)Z

    .line 141
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/base/EventMessage;

    const-string/jumbo v2, "x8_flightlog_event_key"

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fimi/kernel/base/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 142
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_selector_flightlog_btn_collect_end:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;->access$202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightlogTopBarController;Z)Z

    goto :goto_0
.end method
