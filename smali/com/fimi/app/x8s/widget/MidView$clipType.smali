.class public final enum Lcom/fimi/app/x8s/widget/MidView$clipType;
.super Ljava/lang/Enum;
.source "MidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/MidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "clipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/widget/MidView$clipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/widget/MidView$clipType;

.field public static final enum bottom:Lcom/fimi/app/x8s/widget/MidView$clipType;

.field public static final enum left:Lcom/fimi/app/x8s/widget/MidView$clipType;

.field public static final enum right:Lcom/fimi/app/x8s/widget/MidView$clipType;

.field public static final enum top:Lcom/fimi/app/x8s/widget/MidView$clipType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/fimi/app/x8s/widget/MidView$clipType;

    const-string v1, "left"

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/widget/MidView$clipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->left:Lcom/fimi/app/x8s/widget/MidView$clipType;

    new-instance v0, Lcom/fimi/app/x8s/widget/MidView$clipType;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/widget/MidView$clipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->top:Lcom/fimi/app/x8s/widget/MidView$clipType;

    new-instance v0, Lcom/fimi/app/x8s/widget/MidView$clipType;

    const-string v1, "right"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/widget/MidView$clipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->right:Lcom/fimi/app/x8s/widget/MidView$clipType;

    new-instance v0, Lcom/fimi/app/x8s/widget/MidView$clipType;

    const-string v1, "bottom"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/widget/MidView$clipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->bottom:Lcom/fimi/app/x8s/widget/MidView$clipType;

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fimi/app/x8s/widget/MidView$clipType;

    sget-object v1, Lcom/fimi/app/x8s/widget/MidView$clipType;->left:Lcom/fimi/app/x8s/widget/MidView$clipType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/app/x8s/widget/MidView$clipType;->top:Lcom/fimi/app/x8s/widget/MidView$clipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/widget/MidView$clipType;->right:Lcom/fimi/app/x8s/widget/MidView$clipType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/widget/MidView$clipType;->bottom:Lcom/fimi/app/x8s/widget/MidView$clipType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->$VALUES:[Lcom/fimi/app/x8s/widget/MidView$clipType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/widget/MidView$clipType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/widget/MidView$clipType;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/widget/MidView$clipType;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/fimi/app/x8s/widget/MidView$clipType;->$VALUES:[Lcom/fimi/app/x8s/widget/MidView$clipType;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/widget/MidView$clipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/widget/MidView$clipType;

    return-object v0
.end method
