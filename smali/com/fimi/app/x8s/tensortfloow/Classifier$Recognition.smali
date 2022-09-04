.class public Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;
.super Ljava/lang/Object;
.source "Classifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/tensortfloow/Classifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recognition"
.end annotation


# instance fields
.field private final confidence:Ljava/lang/Float;

.field private final id:Ljava/lang/String;

.field private location:Landroid/graphics/RectF;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "confidence"    # Ljava/lang/Float;
    .param p4, "location"    # Landroid/graphics/RectF;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->id:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->title:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->confidence:Ljava/lang/Float;

    .line 55
    iput-object p4, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->location:Landroid/graphics/RectF;

    .line 56
    return-void
.end method


# virtual methods
.method public getConfidence()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->confidence:Ljava/lang/Float;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->location:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "location"    # Landroid/graphics/RectF;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->location:Landroid/graphics/RectF;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    const-string v0, ""

    .line 81
    .local v0, "resultString":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->confidence:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(%.1f%%) "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->confidence:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->location:Landroid/graphics/RectF;

    if-eqz v1, :cond_3

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->location:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
