.class public Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentVal"
.end annotation


# instance fields
.field public isBaseWidth:Z

.field public percent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 685
    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1
    .param p1, "percent"    # F
    .param p2, "isBaseWidth"    # Z

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 689
    iput p1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    .line 690
    iput-boolean p2, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    .line 691
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PercentVal{percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBaseWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
