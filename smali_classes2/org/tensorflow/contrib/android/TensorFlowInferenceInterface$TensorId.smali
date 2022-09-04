.class Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;
.super Ljava/lang/Object;
.source "TensorFlowInferenceInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TensorId"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field outputIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 590
    new-instance v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;

    invoke-direct {v2}, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;-><init>()V

    .line 591
    .local v2, "tid":Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 592
    .local v0, "colonIndex":I
    if-gez v0, :cond_0

    .line 593
    iput v4, v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;->outputIndex:I

    .line 594
    iput-object p0, v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;->name:Ljava/lang/String;

    .line 604
    :goto_0
    return-object v2

    .line 598
    :cond_0
    add-int/lit8 v3, v0, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;->outputIndex:I

    .line 599
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Ljava/lang/NumberFormatException;
    iput v4, v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;->outputIndex:I

    .line 602
    iput-object p0, v2, Lorg/tensorflow/contrib/android/TensorFlowInferenceInterface$TensorId;->name:Ljava/lang/String;

    goto :goto_0
.end method
