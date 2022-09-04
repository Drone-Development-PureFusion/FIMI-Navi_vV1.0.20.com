.class Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel$1;
.super Ljava/lang/Object;
.source "TensorFlowObjectDetectionAPIModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;->recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel$1;->this$0:Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;)I
    .locals 2
    .param p1, "lhs"    # Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;
    .param p2, "rhs"    # Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;

    .prologue
    .line 180
    invoke-virtual {p2}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;

    check-cast p2, Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/tensortfloow/TensorFlowObjectDetectionAPIModel$1;->compare(Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;Lcom/fimi/app/x8s/tensortfloow/Classifier$Recognition;)I

    move-result v0

    return v0
.end method
