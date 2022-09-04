.class Lcom/fimi/app/x8s/widget/LabelsView$1;
.super Ljava/lang/Object;
.source "LabelsView.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/LabelsView;->setLabels(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/app/x8s/widget/LabelsView$LabelTextProvider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/LabelsView;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/LabelsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/LabelsView;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/LabelsView$1;->this$0:Lcom/fimi/app/x8s/widget/LabelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLabelText(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 365
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fimi/app/x8s/widget/LabelsView$1;->getLabelText(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLabelText(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "label"    # Landroid/widget/TextView;
    .param p2, "position"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
