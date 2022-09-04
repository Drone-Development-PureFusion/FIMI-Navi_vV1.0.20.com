.class synthetic Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;
.super Ljava/lang/Object;
.source "X8MainTopRightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/widget/X8MainTopRightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fimi$x8sdk$cmdsenum$X8FpvSignalState:[I

.field static final synthetic $SwitchMap$com$fimi$x8sdk$cmdsenum$X8GpsNumState:[I

.field static final synthetic $SwitchMap$com$fimi$x8sdk$cmdsenum$X8HandleSignalState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->values()[Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8FpvSignalState:[I

    :try_start_0
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8FpvSignalState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8FpvSignalState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8FpvSignalState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    .line 133
    :goto_2
    invoke-static {}, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->values()[Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8GpsNumState:[I

    :try_start_3
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8GpsNumState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8GpsNumState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8GpsNumState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8GpsNumState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :goto_5
    invoke-static {}, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->values()[Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8HandleSignalState:[I

    :try_start_6
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8HandleSignalState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8HandleSignalState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/fimi/app/x8s/widget/X8MainTopRightView$1;->$SwitchMap$com$fimi$x8sdk$cmdsenum$X8HandleSignalState:[I

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8HandleSignalState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    .line 133
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    .line 160
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
