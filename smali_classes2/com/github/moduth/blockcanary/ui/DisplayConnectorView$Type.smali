.class public final enum Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;
.super Ljava/lang/Enum;
.source "DisplayConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

.field public static final enum END:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

.field public static final enum NODE:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

.field public static final enum START:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->START:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    new-instance v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    const-string v1, "NODE"

    invoke-direct {v0, v1, v3}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->NODE:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    new-instance v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->END:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->START:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->NODE:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->END:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->$VALUES:[Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    return-object v0
.end method

.method public static values()[Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->$VALUES:[Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    invoke-virtual {v0}, [Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    return-object v0
.end method
