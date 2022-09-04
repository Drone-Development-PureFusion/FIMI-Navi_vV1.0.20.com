.class Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$1;
.super Ljava/lang/Object;
.source "X8AiD2PExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->openUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentItem()Lcom/fimi/app/x8s/enums/X8AiMapItem;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiMapItem;->AI_POINT_TO_POINT:Lcom/fimi/app/x8s/enums/X8AiMapItem;

    return-object v0
.end method
