.class public Lcom/fimi/kernel/animutils/ClosedInputStream;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lcom/fimi/kernel/animutils/ClosedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/fimi/kernel/animutils/ClosedInputStream;

    invoke-direct {v0}, Lcom/fimi/kernel/animutils/ClosedInputStream;-><init>()V

    sput-object v0, Lcom/fimi/kernel/animutils/ClosedInputStream;->CLOSED_INPUT_STREAM:Lcom/fimi/kernel/animutils/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    return v0
.end method
