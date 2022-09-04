.class public Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;
.super Ljava/lang/Exception;
.source "OkHttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ecode:I

.field private emsg:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput p1, p0, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;->ecode:I

    .line 25
    iput-object p2, p0, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;->emsg:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getEcode()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;->ecode:I

    return v0
.end method

.method public getEmsg()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/exception/OkHttpException;->emsg:Ljava/lang/Object;

    return-object v0
.end method
