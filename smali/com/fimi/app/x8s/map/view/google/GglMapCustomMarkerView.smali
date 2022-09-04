.class public Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;
.super Lcom/fimi/app/x8s/map/view/AbsMapCustomMarkerView;
.source "GglMapCustomMarkerView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/view/AbsMapCustomMarkerView;-><init>()V

    return-void
.end method

.method public static dipToPx(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 116
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 99
    .local v3, "width":I
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 101
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public createCurrentPointView(Landroid/content/Context;III)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "actionRes"    # I
    .param p4, "nPos"    # I

    .prologue
    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_map_custom_mark_view4:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/fimi/app/x8s/R$id;->img_point:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    :cond_0
    sget v4, Lcom/fimi/app/x8s/R$id;->img_action:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 84
    .local v2, "imageView2":Landroid/widget/ImageView;
    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    :cond_1
    sget v4, Lcom/fimi/app/x8s/R$id;->tv_index:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    .local v0, "heightView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {v3, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic createCurrentPointView(Landroid/content/Context;III)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCurrentPointView(Landroid/content/Context;III)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public createCustomMarkerView(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I

    .prologue
    .line 68
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public createCustomMarkerView(Landroid/content/Context;IFI)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F
    .param p4, "npos"    # I

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$layout;->x8_map_custom_mark_view:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 37
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/fimi/app/x8s/R$id;->point_heightValue:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "heightView":Landroid/widget/TextView;
    sget v5, Lcom/fimi/app/x8s/R$id;->tv_pos:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 39
    .local v3, "tvPos":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p3, v5, v6}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget v5, Lcom/fimi/app/x8s/R$id;->markerIcon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 46
    :cond_0
    invoke-static {v4, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic createCustomMarkerView(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerView(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public createCustomMarkerView(Landroid/content/Context;IF)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCustomMarkerView2(Landroid/content/Context;II)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "nPos"    # I

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$layout;->x8_map_custom_mark_view2:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/fimi/app/x8s/R$id;->point_heightValue:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, "heightView":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget v3, Lcom/fimi/app/x8s/R$id;->markerIcon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 60
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    :cond_0
    invoke-static {v2, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic createCustomMarkerView2(Landroid/content/Context;II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createCustomMarkerView2(Landroid/content/Context;II)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public createCustomMarkerViewForP2P(Landroid/content/Context;IFI)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F
    .param p4, "npos"    # I

    .prologue
    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_map_custom_mark_view_for_point:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 25
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/fimi/app/x8s/R$id;->point_heightValue:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    .local v0, "heightView":Landroid/widget/TextView;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p3, v4, v5}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    sget v4, Lcom/fimi/app/x8s/R$id;->markerIcon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 29
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 32
    :cond_0
    invoke-static {v3, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    return-object v4
.end method

.method public createInreterstMarkerView0(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I

    .prologue
    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_custom_mark_view3:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createInreterstMarkerView0(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->createInreterstMarkerView0(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public createMapPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F
    .param p4, "npos"    # I
    .param p5, "isSelect"    # Z
    .param p6, "isRelation"    # Z

    .prologue
    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_with_pio_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 148
    .local v6, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->myview:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;

    .local v0, "imageView":Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 149
    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setPioValue(IFIZZ)V

    .line 150
    invoke-static {v6, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createMapPointAngleNoPioView(Landroid/content/Context;IFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F
    .param p4, "npos"    # I
    .param p5, "angle"    # F
    .param p6, "isSelect"    # Z
    .param p7, "isRelation"    # Z

    .prologue
    .line 185
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_no_pio_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 186
    .local v7, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->myview:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;

    .local v0, "imageView":Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 187
    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setValueNoPio(IFIFZZ)V

    .line 188
    invoke-static {v7, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createMapPointNoAngleNoPioView(Landroid/content/Context;IFIZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F
    .param p4, "npos"    # I
    .param p5, "isSelect"    # Z
    .param p6, "isRelation"    # Z

    .prologue
    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_no_pio_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 131
    .local v7, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->myview:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;

    .line 132
    .local v0, "imageView":Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setValueNoPio(IFIFZZ)V

    .line 133
    invoke-static {v7, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createMapPointWithPioView(Landroid/content/Context;IFIIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "heightVale"    # F
    .param p4, "npos"    # I
    .param p5, "poi"    # I
    .param p6, "angle"    # F
    .param p7, "isSelect"    # Z
    .param p8, "isRelation"    # Z

    .prologue
    .line 166
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_with_pio_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 167
    .local v8, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->myview:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;

    .local v0, "imageView":Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 168
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setValueWithPio(IFIIFZZ)V

    .line 169
    invoke-static {v8, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createPointEventNoPioView(Landroid/content/Context;IIFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionRes"    # I
    .param p3, "angleRes"    # I
    .param p4, "heightVale"    # F
    .param p5, "npos"    # I
    .param p6, "angle"    # F
    .param p7, "isSelect"    # Z
    .param p8, "isRelation"    # Z

    .prologue
    .line 205
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_event_no_pio_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 206
    .local v8, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->myview:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;

    .local v0, "imageView":Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 207
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setPointEventNoPioValue(IIFIFZZ)V

    .line 208
    invoke-static {v8, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createPointEventWithPioView(Landroid/content/Context;IIFIFZZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionRes"    # I
    .param p3, "angleRes"    # I
    .param p4, "heightVale"    # F
    .param p5, "npos"    # I
    .param p6, "angle"    # F
    .param p7, "isSelect"    # Z
    .param p8, "isRelation"    # Z

    .prologue
    .line 224
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_event_with_pio_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 225
    .local v8, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->myview:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;

    .local v0, "imageView":Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 226
    invoke-virtual/range {v0 .. v7}, Lcom/fimi/app/x8s/widget/X8MapPointMarkerViewGroup;->setPointEventValue(IIFIFZZ)V

    .line 227
    invoke-static {v8, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public createPointWithSmallArrow(Landroid/content/Context;IFZ)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # I
    .param p3, "angle"    # F
    .param p4, "isShow"    # Z

    .prologue
    .line 238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_map_marker_arrow_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/fimi/app/x8s/R$id;->markerIcon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 240
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 242
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 244
    :cond_0
    if-nez p4, :cond_1

    .line 245
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    :cond_1
    invoke-static {v1, p1}, Lcom/fimi/app/x8s/map/view/google/GglMapCustomMarkerView;->loadBitmapFromView(Landroid/view/View;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    return-object v2
.end method
