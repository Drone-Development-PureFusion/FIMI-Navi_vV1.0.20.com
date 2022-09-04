.class public final enum Lcom/fimi/kernel/fds/FdsUploadState;
.super Ljava/lang/Enum;
.source "FdsUploadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/kernel/fds/FdsUploadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/kernel/fds/FdsUploadState;

.field public static final enum FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

.field public static final enum IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

.field public static final enum LOADING:Lcom/fimi/kernel/fds/FdsUploadState;

.field public static final enum STOP:Lcom/fimi/kernel/fds/FdsUploadState;

.field public static final enum SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

.field public static final enum WAIT:Lcom/fimi/kernel/fds/FdsUploadState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/kernel/fds/FdsUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadState;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v4}, Lcom/fimi/kernel/fds/FdsUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->WAIT:Lcom/fimi/kernel/fds/FdsUploadState;

    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/fimi/kernel/fds/FdsUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->LOADING:Lcom/fimi/kernel/fds/FdsUploadState;

    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadState;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcom/fimi/kernel/fds/FdsUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/fimi/kernel/fds/FdsUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/fds/FdsUploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fimi/kernel/fds/FdsUploadState;

    sget-object v1, Lcom/fimi/kernel/fds/FdsUploadState;->IDLE:Lcom/fimi/kernel/fds/FdsUploadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/kernel/fds/FdsUploadState;->WAIT:Lcom/fimi/kernel/fds/FdsUploadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fimi/kernel/fds/FdsUploadState;->LOADING:Lcom/fimi/kernel/fds/FdsUploadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->$VALUES:[Lcom/fimi/kernel/fds/FdsUploadState;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/kernel/fds/FdsUploadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/fds/FdsUploadState;

    return-object v0
.end method

.method public static values()[Lcom/fimi/kernel/fds/FdsUploadState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->$VALUES:[Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-virtual {v0}, [Lcom/fimi/kernel/fds/FdsUploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/kernel/fds/FdsUploadState;

    return-object v0
.end method
