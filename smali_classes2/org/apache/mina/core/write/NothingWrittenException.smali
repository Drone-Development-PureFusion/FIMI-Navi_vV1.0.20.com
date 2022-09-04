.class public Lorg/apache/mina/core/write/NothingWrittenException;
.super Lorg/apache/mina/core/write/WriteException;
.source "NothingWrittenException.java"


# static fields
.field private static final serialVersionUID:J = -0x57dfb5a1d2d4337dL


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/write/WriteException;-><init>(Lorg/apache/mina/core/write/WriteRequest;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
