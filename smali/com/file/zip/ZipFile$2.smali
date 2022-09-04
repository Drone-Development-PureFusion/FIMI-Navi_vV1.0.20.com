.class Lcom/file/zip/ZipFile$2;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/file/zip/ZipFile;->getInputStream(Lcom/file/zip/ZipEntry;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/file/zip/ZipFile;

.field private final synthetic val$inflater:Ljava/util/zip/Inflater;


# direct methods
.method constructor <init>(Lcom/file/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/io/InputStream;
    .param p3, "$anonymous1"    # Ljava/util/zip/Inflater;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/file/zip/ZipFile$2;->this$0:Lcom/file/zip/ZipFile;

    iput-object p4, p0, Lcom/file/zip/ZipFile$2;->val$inflater:Ljava/util/zip/Inflater;

    .line 340
    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 344
    iget-object v0, p0, Lcom/file/zip/ZipFile$2;->val$inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 345
    return-void
.end method
