.class Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$3;
.super Ljava/lang/Object;
.source "X8AiLineHistoryAdapter2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->addData(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$3;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    .param p2, "b"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 152
    invoke-virtual {p2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 148
    check-cast p1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    check-cast p2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$3;->compare(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)I

    move-result v0

    return v0
.end method
