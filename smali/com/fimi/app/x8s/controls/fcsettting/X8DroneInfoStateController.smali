.class public Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8DroneInfoStateController.java"

# interfaces
.implements Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;,
        Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
    }
.end annotation


# instance fields
.field private adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8DroneInfoState;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

.field private parentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 54
    return-void
.end method


# virtual methods
.method public checkError(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)Z
    .locals 3
    .param p1, "mode"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "ret":Z
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$1;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8DroneInfoStateController$Mode:[I

    invoke-virtual {p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 145
    :goto_0
    return v0

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->isGpsError()Z

    move-result v0

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    invoke-static {}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->isCompassError()Z

    move-result v0

    .line 130
    goto :goto_0

    .line 132
    :pswitch_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getErrorCodeState()Lcom/fimi/x8sdk/modulestate/ErrorCodeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/ErrorCodeState;->isMagneticError()Z

    move-result v0

    .line 133
    goto :goto_0

    .line 135
    :pswitch_3
    invoke-static {}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->isImuError()Z

    move-result v0

    .line 136
    goto :goto_0

    .line 138
    :pswitch_4
    invoke-static {}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->isBatteryError()Z

    move-result v0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_5
    invoke-static {}, Lcom/fimi/app/x8s/manager/X8DroneInfoStatemManager;->isGcError()Z

    move-result v0

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public getEvent(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)I
    .locals 3
    .param p1, "mode"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "event":I
    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$1;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8DroneInfoStateController$Mode:[I

    invoke-virtual {p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 192
    :goto_0
    return v0

    .line 188
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getInfo(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)Ljava/lang/String;
    .locals 4
    .param p1, "mode"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .prologue
    .line 149
    const-string v1, ""

    .line 150
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$1;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8DroneInfoStateController$Mode:[I

    invoke-virtual {p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 180
    :goto_0
    return-object v1

    .line 153
    :pswitch_0
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_state_exception:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    goto :goto_0

    .line 156
    :pswitch_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_state_exception:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    goto :goto_0

    .line 159
    :pswitch_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->getMagnetic()I

    move-result v0

    .line 160
    .local v0, "magnetic":I
    if-ltz v0, :cond_0

    const/16 v2, 0x14

    if-gt v0, v2, :cond_0

    .line 161
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_magnetic_field_error1:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 162
    :cond_0
    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v2, 0x28

    if-gt v0, v2, :cond_1

    .line 163
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_magnetic_field_error2:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :cond_1
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_item_magnetic_field_error3:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    goto :goto_0

    .line 169
    .end local v0    # "magnetic":I
    :pswitch_3
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_state_exception:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    goto :goto_0

    .line 172
    :pswitch_4
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_state_exception:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    goto :goto_0

    .line 176
    :pswitch_5
    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fc_state_exception:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getListener()Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->listener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

    return-object v0
.end method

.method public getMode(I)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GPS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 98
    .local v0, "mode":Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GPS:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->CAMP:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->MAGNETIC:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->IMU:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 110
    goto :goto_0

    .line 112
    :pswitch_4
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->BATTERY:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    .line 113
    goto :goto_0

    .line 115
    :pswitch_5
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->GIMBAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->list:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/fimi/app/x8s/R$layout;->x8_main_all_setting_drone_info_state:I

    move-object v7, p1

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->parentView:Landroid/view/View;

    .line 62
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->parentView:Landroid/view/View;

    sget v8, Lcom/fimi/app/x8s/R$id;->ryv_drone_state:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 64
    .local v3, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 68
    .local v4, "res":Landroid/content/res/Resources;
    sget v7, Lcom/fimi/app/x8s/R$array;->x8_drone_info_state_array:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "states":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 71
    new-instance v5, Lcom/fimi/app/x8s/entity/X8DroneInfoState;

    invoke-direct {v5}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;-><init>()V

    .line 72
    .local v5, "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setName(Ljava/lang/String;)V

    .line 73
    sget-object v7, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NA:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setState(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getMode(I)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setMode(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)V

    .line 75
    sget v7, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setInfo(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getMode()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getEvent(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setErrorEvent(I)V

    .line 77
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->list:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    .end local v5    # "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    :cond_0
    new-instance v7, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    iget-object v8, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->list:Ljava/util/List;

    invoke-direct {v7, v8}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;-><init>(Ljava/util/List;)V

    iput-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    .line 81
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-virtual {v7, p0}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->setOnEventClickListener(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$OnEventClickListener;)V

    .line 82
    iget-object v7, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-virtual {v3, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->initActions()V

    .line 84
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 8
    .param p1, "b"    # Z

    .prologue
    .line 207
    if-eqz p1, :cond_4

    .line 208
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/entity/X8DroneInfoState;

    .line 209
    .local v4, "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    invoke-virtual {v4}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getMode()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->checkError(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)Z

    move-result v0

    .line 210
    .local v0, "error":Z
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v4}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getMode()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getInfo(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setInfo(Ljava/lang/String;)V

    .line 212
    sget-object v6, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->ERROR:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    invoke-virtual {v4, v6}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setState(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;)V

    .line 236
    :goto_1
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 215
    :cond_0
    sget v6, Lcom/fimi/app/x8s/R$string;->x8_fc_state_normal:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "s":Ljava/lang/String;
    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NORMAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    .line 218
    .local v3, "st":Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;
    sget-object v6, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->MAGNETIC:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getMode()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 219
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSingal()Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fimi/x8sdk/dataparser/AutoFcSignalState;->getMagnetic()I

    move-result v1

    .line 220
    .local v1, "magnetic":I
    if-ltz v1, :cond_2

    const/16 v6, 0x14

    if-gt v1, v6, :cond_2

    .line 221
    sget v6, Lcom/fimi/app/x8s/R$string;->x8_fc_item_magnetic_field_error1:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .end local v1    # "magnetic":I
    :cond_1
    :goto_2
    invoke-virtual {v4, v2}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setInfo(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4, v3}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setState(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;)V

    .line 234
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 222
    .restart local v1    # "magnetic":I
    :cond_2
    const/16 v6, 0x15

    if-lt v1, v6, :cond_3

    const/16 v6, 0x28

    if-gt v1, v6, :cond_3

    .line 223
    sget v6, Lcom/fimi/app/x8s/R$string;->x8_fc_item_magnetic_field_error2:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->MIDDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    goto :goto_2

    .line 226
    :cond_3
    sget v6, Lcom/fimi/app/x8s/R$string;->x8_fc_item_magnetic_field_error3:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->ERROR:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    goto :goto_2

    .line 241
    .end local v0    # "error":Z
    .end local v1    # "magnetic":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "st":Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;
    .end local v4    # "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    :cond_4
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fimi/app/x8s/entity/X8DroneInfoState;

    .line 242
    .restart local v4    # "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    sget-object v6, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;->NA:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;

    invoke-virtual {v4, v6}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setState(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$State;)V

    .line 243
    sget v6, Lcom/fimi/app/x8s/R$string;->x8_na:I

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->setInfo(Ljava/lang/String;)V

    .line 244
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->adapter:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    invoke-virtual {v6}, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 247
    .end local v4    # "state":Lcom/fimi/app/x8s/entity/X8DroneInfoState;
    :cond_5
    return-void
.end method

.method public onItemClick(ILcom/fimi/app/x8s/entity/X8DroneInfoState;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "obj"    # Lcom/fimi/app/x8s/entity/X8DroneInfoState;

    .prologue
    .line 197
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$1;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8DroneInfoStateController$Mode:[I

    invoke-virtual {p2}, Lcom/fimi/app/x8s/entity/X8DroneInfoState;->getMode()Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->listener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;->onCalibrationItemClick()V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneInfoStateController;->listener:Lcom/fimi/app/x8s/interfaces/IX8DroneStateListener;

    .line 47
    return-void
.end method
