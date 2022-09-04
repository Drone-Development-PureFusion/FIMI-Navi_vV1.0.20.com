.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$1;
.super Ljava/lang/Object;
.source "X8FileSeachDeleteThread.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->sort(Ljava/util/List;)V
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
        "Lcom/fimi/app/x8s/entity/X8B2oxFile;",
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
    .line 99
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fimi/app/x8s/entity/X8B2oxFile;Lcom/fimi/app/x8s/entity/X8B2oxFile;)I
    .locals 3
    .param p1, "arg0"    # Lcom/fimi/app/x8s/entity/X8B2oxFile;
    .param p2, "arg1"    # Lcom/fimi/app/x8s/entity/X8B2oxFile;

    .prologue
    .line 102
    const/4 v0, 0x1

    .line 104
    .local v0, "mark":I
    invoke-virtual {p2}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 105
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    check-cast p2, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$1;->compare(Lcom/fimi/app/x8s/entity/X8B2oxFile;Lcom/fimi/app/x8s/entity/X8B2oxFile;)I

    move-result v0

    return v0
.end method
