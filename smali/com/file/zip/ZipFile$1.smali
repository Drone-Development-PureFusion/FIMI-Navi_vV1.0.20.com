.class Lcom/file/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/file/zip/ZipFile;
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
        "Lcom/file/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/file/zip/ZipFile;


# direct methods
.method constructor <init>(Lcom/file/zip/ZipFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/file/zip/ZipFile$1;->this$0:Lcom/file/zip/ZipFile;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipEntry;)I
    .locals 8
    .param p1, "e1"    # Lcom/file/zip/ZipEntry;
    .param p2, "e2"    # Lcom/file/zip/ZipEntry;

    .prologue
    .line 961
    if-ne p1, p2, :cond_0

    .line 962
    const/4 v4, 0x0

    .line 974
    :goto_0
    return v4

    .line 965
    :cond_0
    iget-object v4, p0, Lcom/file/zip/ZipFile$1;->this$0:Lcom/file/zip/ZipFile;

    invoke-static {v4}, Lcom/file/zip/ZipFile;->access$0(Lcom/file/zip/ZipFile;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/file/zip/ZipFile$OffsetEntry;

    .line 966
    .local v0, "off1":Lcom/file/zip/ZipFile$OffsetEntry;
    iget-object v4, p0, Lcom/file/zip/ZipFile$1;->this$0:Lcom/file/zip/ZipFile;

    invoke-static {v4}, Lcom/file/zip/ZipFile;->access$0(Lcom/file/zip/ZipFile;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/file/zip/ZipFile$OffsetEntry;

    .line 967
    .local v1, "off2":Lcom/file/zip/ZipFile$OffsetEntry;
    if-nez v0, :cond_1

    .line 968
    const/4 v4, 0x1

    goto :goto_0

    .line 970
    :cond_1
    if-nez v1, :cond_2

    .line 971
    const/4 v4, -0x1

    goto :goto_0

    .line 973
    :cond_2
    invoke-static {v0}, Lcom/file/zip/ZipFile$OffsetEntry;->access$0(Lcom/file/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/file/zip/ZipFile$OffsetEntry;->access$0(Lcom/file/zip/ZipFile$OffsetEntry;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 974
    .local v2, "val":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    const/4 v4, -0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/file/zip/ZipEntry;

    check-cast p2, Lcom/file/zip/ZipEntry;

    invoke-virtual {p0, p1, p2}, Lcom/file/zip/ZipFile$1;->compare(Lcom/file/zip/ZipEntry;Lcom/file/zip/ZipEntry;)I

    move-result v0

    return v0
.end method
