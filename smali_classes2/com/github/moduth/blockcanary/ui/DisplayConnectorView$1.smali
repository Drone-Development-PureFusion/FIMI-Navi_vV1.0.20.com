.class synthetic Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$1;
.super Ljava/lang/Object;
.source "DisplayConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$moduth$blockcanary$ui$DisplayConnectorView$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->values()[Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$1;->$SwitchMap$com$github$moduth$blockcanary$ui$DisplayConnectorView$Type:[I

    :try_start_0
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$1;->$SwitchMap$com$github$moduth$blockcanary$ui$DisplayConnectorView$Type:[I

    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->NODE:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$1;->$SwitchMap$com$github$moduth$blockcanary$ui$DisplayConnectorView$Type:[I

    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->START:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    invoke-virtual {v1}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
