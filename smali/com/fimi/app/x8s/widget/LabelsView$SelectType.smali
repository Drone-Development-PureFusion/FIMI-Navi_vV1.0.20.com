.class public final enum Lcom/fimi/app/x8s/widget/LabelsView$SelectType;
.super Ljava/lang/Enum;
.source "LabelsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/LabelsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/widget/LabelsView$SelectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

.field public static final enum MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

.field public static final enum NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

.field public static final enum SINGLE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

.field public static final enum SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 64
    new-instance v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5, v2}, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .line 66
    new-instance v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .line 68
    new-instance v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    const-string v1, "SINGLE_IRREVOCABLY"

    invoke-direct {v0, v1, v3, v4}, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .line 70
    new-instance v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    const-string v1, "MULTI"

    invoke-direct {v0, v1, v4, v6}, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    .line 62
    new-array v0, v6, [Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->$VALUES:[Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->value:I

    .line 76
    return-void
.end method

.method static get(I)Lcom/fimi/app/x8s/widget/LabelsView$SelectType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 89
    sget-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    sget-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->NONE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    goto :goto_0

    .line 83
    :pswitch_1
    sget-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    goto :goto_0

    .line 85
    :pswitch_2
    sget-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->SINGLE_IRREVOCABLY:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    goto :goto_0

    .line 87
    :pswitch_3
    sget-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->MULTI:Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/widget/LabelsView$SelectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/widget/LabelsView$SelectType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->$VALUES:[Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/widget/LabelsView$SelectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/widget/LabelsView$SelectType;

    return-object v0
.end method
