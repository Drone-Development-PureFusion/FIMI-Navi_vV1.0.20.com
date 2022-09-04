.class public Lcom/fimi/x8sdk/common/Constants$X8S_Fw_Type;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "X8S_Fw_Type"
.end annotation


# static fields
.field public static final BATTERY:B = 0x5t

.field public static final CAMERA:B = 0x4t

.field public static final CV:B = 0x9t

.field public static final ESC:B = 0xet

.field public static final FC:B = 0x0t

.field public static final FC_RL:B = 0xct

.field public static final GIMBAL:B = 0x3t

.field public static final NOFLYZONE:B = 0xat

.field public static final RC:B = 0x1t

.field public static final RC_RL:B = 0xbt

.field public static final SERVO:B = -0x1t

.field public static final ULTRASONIC:B = 0xdt


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/common/Constants;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/common/Constants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/common/Constants;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/x8sdk/common/Constants$X8S_Fw_Type;->this$0:Lcom/fimi/x8sdk/common/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
