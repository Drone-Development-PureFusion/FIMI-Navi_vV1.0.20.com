.class Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$1;
.super Ljava/lang/Object;
.source "X8AiSurroundExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentItem()Lcom/fimi/app/x8s/enums/X8AiMapItem;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiMapItem;->AI_SURROUND:Lcom/fimi/app/x8s/enums/X8AiMapItem;

    return-object v0
.end method
