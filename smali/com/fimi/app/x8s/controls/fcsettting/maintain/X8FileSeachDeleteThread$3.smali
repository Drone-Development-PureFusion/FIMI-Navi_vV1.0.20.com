.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$3;
.super Ljava/lang/Object;
.source "X8FileSeachDeleteThread.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->sortFileOfDate(Ljava/util/List;)V
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 127
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 128
    const/4 v2, -0x1

    .line 134
    :goto_0
    return v2

    .line 130
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 131
    const/4 v2, 0x0

    goto :goto_0

    .line 134
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 124
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method
