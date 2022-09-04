.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$4;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->initActions2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentItem()Lcom/fimi/app/x8s/enums/X8AiMapItem;
    .locals 1

    .prologue
    .line 642
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiMapItem;->AI_LINE:Lcom/fimi/app/x8s/enums/X8AiMapItem;

    return-object v0
.end method
