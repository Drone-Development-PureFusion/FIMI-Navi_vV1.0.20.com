.class Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$2;
.super Ljava/lang/Object;
.source "X8FlightLogAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->sort(Ljava/util/List;)V
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
        "Lcom/fimi/x8sdk/entity/X8FlightLogFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$2;->this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/x8sdk/entity/X8FlightLogFile;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)I
    .locals 4
    .param p1, "arg0"    # Lcom/fimi/x8sdk/entity/X8FlightLogFile;
    .param p2, "arg1"    # Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "mark":I
    invoke-virtual {p2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFileLogCollectState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getFileLogCollectState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int v0, v2, v3

    .line 353
    .local v0, "a":I
    if-eqz v0, :cond_1

    .line 354
    if-gez v0, :cond_0

    const/4 v1, 0x1

    .line 358
    :goto_0
    return v1

    .line 354
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getPlaybackFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getPlaybackFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 348
    check-cast p1, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    check-cast p2, Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$2;->compare(Lcom/fimi/x8sdk/entity/X8FlightLogFile;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)I

    move-result v0

    return v0
.end method
