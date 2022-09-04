.class public Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8CameraItemArrayController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;
.implements Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;


# instance fields
.field private arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private context:Landroid/content/Context;

.field keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

.field private paramKey:Ljava/lang/String;

.field paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paramValue:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

.field private x8RgCameraResolution:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;Ljava/lang/String;Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "manager"    # Lcom/fimi/x8sdk/controller/CameraManager;
    .param p3, "paramType"    # Ljava/lang/String;
    .param p4, "itemListener"    # Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->params:Ljava/util/List;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    .line 49
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->keyMap:Ljava/util/Map;

    .line 55
    invoke-static {}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getInstance()Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    .line 56
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 57
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    .line 58
    const-string v2, "sharpness"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v2

    if-ltz v2, :cond_0

    .line 73
    :goto_0
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    .line 74
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/fimi/app/x8s/R$array;->x8_style_array:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "styleArray":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 64
    .local v0, "style":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->params:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "style":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->params:Ljava/util/List;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 68
    .end local v1    # "styleArray":[Ljava/lang/String;
    :cond_2
    const-string v2, "record_mode"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8RgCameraResolution:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8RgCameraResolution:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    return-object v0
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8RgCameraResolution:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 171
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->context:Landroid/content/Context;

    .line 132
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rg_camera_resolution:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8RgCameraResolution:Landroid/widget/RadioGroup;

    .line 133
    sget v0, Lcom/fimi/app/x8s/R$id;->paramRecycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 134
    new-instance v0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->params:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    invoke-virtual {v0, p0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->setItemClickListener(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 137
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->context:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 138
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 139
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/fimi/app/x8s/widget/DividerGridItemDecoration;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->context:Landroid/content/Context;

    const/4 v3, 0x3

    const v4, 0x106000d

    invoke-direct {v1, v2, v3, v4}, Lcom/fimi/app/x8s/widget/DividerGridItemDecoration;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 140
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 142
    return-void
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 7
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 182
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 184
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getParam()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sharpness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->params:Ljava/util/List;

    .line 186
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->params:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 224
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_1
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video_resolution"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v2

    if-ltz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, "index":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->keyMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 194
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_resolution(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->updateAddContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v0    # "index":I
    :cond_2
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_timelapse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v2

    if-ltz v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 202
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->keyMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 203
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_timelapse(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->updateAddContent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video_timelapse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v2

    if-ltz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 212
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->keyMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 213
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setPhoto_timelapse(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->listener:Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/fimi/app/x8s/viewHolder/SubParamItemListener;->updateAddContent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onItemClickListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 228
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramValue:Ljava/lang/String;

    .line 229
    const-string v1, "capture_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    sget v1, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_8:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 233
    .local v0, "index":I
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->keyMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 234
    sput v0, Lcom/fimi/kernel/Constants;->panoramaType:I

    .line 249
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v2, "\\s+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    const-string v3, "photo_timelapse"

    invoke-virtual {v1, v2, v3, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 243
    :cond_2
    const-string v1, "record_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    const-string v2, "\\s+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    const-string/jumbo v3, "video_timelapse"

    invoke-virtual {v1, v2, v3, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v1, p2, p1, p0}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0
.end method

.method public setRgCameraResolutionVisibility()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8RgCameraResolution:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 127
    return-void
.end method

.method public updateParamList(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "paramKey"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "optionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 77
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 78
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->keyMap:Ljava/util/Map;

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 80
    .local v2, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    const-string/jumbo v4, "video_resolution"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    if-eqz p3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 89
    .local v1, "index":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v5, v1}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    .line 122
    .end local v1    # "index":I
    .end local v2    # "iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 91
    .restart local v2    # "iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    const-string v4, "capture_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 94
    if-eqz p3, :cond_6

    .line 95
    sget v3, Lcom/fimi/app/x8s/R$string;->x8_timelapse_capture_8:I

    invoke-virtual {p0, v3}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    sget v6, Lcom/fimi/kernel/Constants;->panoramaType:I

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_timelapse()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_timelapse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 99
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_timelapse()Ljava/lang/String;

    move-result-object p3

    .line 103
    :goto_2
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 104
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v5, v1}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_1

    .line 101
    .end local v1    # "index":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getPhoto_timelapse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 107
    :cond_6
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 109
    :cond_7
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    const-string v4, "record_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    if-eqz p3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_timelapse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 112
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_timelapse()Ljava/lang/String;

    move-result-object p3

    .line 116
    :goto_3
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 117
    .restart local v1    # "index":I
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->arrayParamsAdapter:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->paramKey:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v5, v1}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 114
    .end local v1    # "index":I
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v4}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getVideo_timelapse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_3
.end method
