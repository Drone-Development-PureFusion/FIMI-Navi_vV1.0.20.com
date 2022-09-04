.class final enum Lcom/fimi/app/x8s/media/H264Frame$State;
.super Ljava/lang/Enum;
.source "H264Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/media/H264Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/app/x8s/media/H264Frame$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum B1:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum B2:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum a1:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum a2:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum a3:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum a4:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum a5:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum a6:Lcom/fimi/app/x8s/media/H264Frame$State;

.field public static final enum pload:Lcom/fimi/app/x8s/media/H264Frame$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "a1"

    invoke-direct {v0, v1, v3}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a1:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "a2"

    invoke-direct {v0, v1, v4}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a2:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "a3"

    invoke-direct {v0, v1, v5}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a3:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "B1"

    invoke-direct {v0, v1, v6}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->B1:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "pload"

    invoke-direct {v0, v1, v7}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "a4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a4:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "a5"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a5:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "a6"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->a6:Lcom/fimi/app/x8s/media/H264Frame$State;

    new-instance v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    const-string v1, "B2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fimi/app/x8s/media/H264Frame$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->B2:Lcom/fimi/app/x8s/media/H264Frame$State;

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/fimi/app/x8s/media/H264Frame$State;

    sget-object v1, Lcom/fimi/app/x8s/media/H264Frame$State;->a1:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/app/x8s/media/H264Frame$State;->a2:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/app/x8s/media/H264Frame$State;->a3:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/app/x8s/media/H264Frame$State;->B1:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/app/x8s/media/H264Frame$State;->pload:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/app/x8s/media/H264Frame$State;->a4:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fimi/app/x8s/media/H264Frame$State;->a5:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fimi/app/x8s/media/H264Frame$State;->a6:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fimi/app/x8s/media/H264Frame$State;->B2:Lcom/fimi/app/x8s/media/H264Frame$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->$VALUES:[Lcom/fimi/app/x8s/media/H264Frame$State;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/app/x8s/media/H264Frame$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/media/H264Frame$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/app/x8s/media/H264Frame$State;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/fimi/app/x8s/media/H264Frame$State;->$VALUES:[Lcom/fimi/app/x8s/media/H264Frame$State;

    invoke-virtual {v0}, [Lcom/fimi/app/x8s/media/H264Frame$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/app/x8s/media/H264Frame$State;

    return-object v0
.end method
