.class public Lcom/fimi/kernel/animutils/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/animutils/LineIterator;->finished:Z

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "reader":Ljava/io/Reader;
    iput-object p1, p0, Lcom/fimi/kernel/animutils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    .line 60
    :goto_0
    return-void

    .line 58
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/fimi/kernel/animutils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public static closeQuietly(Lcom/fimi/kernel/animutils/LineIterator;)V
    .locals 0
    .param p0, "iterator"    # Lcom/fimi/kernel/animutils/LineIterator;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/fimi/kernel/animutils/LineIterator;->close()V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/animutils/LineIterator;->finished:Z

    .line 139
    iget-object v0, p0, Lcom/fimi/kernel/animutils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lcom/fimi/kernel/animutils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/animutils/LineIterator;->cachedLine:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    iget-object v4, p0, Lcom/fimi/kernel/animutils/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 85
    :goto_0
    return v2

    .line 74
    :cond_0
    iget-boolean v4, p0, Lcom/fimi/kernel/animutils/LineIterator;->finished:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 75
    goto :goto_0

    .line 79
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/fimi/kernel/animutils/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/kernel/animutils/LineIterator;->finished:Z

    move v2, v3

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p0, v1}, Lcom/fimi/kernel/animutils/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    iput-object v1, p0, Lcom/fimi/kernel/animutils/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/fimi/kernel/animutils/LineIterator;->close()V

    .line 90
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/fimi/kernel/animutils/LineIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/fimi/kernel/animutils/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/fimi/kernel/animutils/LineIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more lines"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/animutils/LineIterator;->cachedLine:Ljava/lang/String;

    .line 126
    .local v0, "currentLine":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/kernel/animutils/LineIterator;->cachedLine:Ljava/lang/String;

    .line 127
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
