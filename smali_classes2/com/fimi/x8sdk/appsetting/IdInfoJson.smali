.class public Lcom/fimi/x8sdk/appsetting/IdInfoJson;
.super Ljava/lang/Object;
.source "IdInfoJson.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getA()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->a:I

    return v0
.end method

.method public getB()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->b:I

    return v0
.end method

.method public getC()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->c:I

    return v0
.end method

.method public getD()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->d:I

    return v0
.end method

.method public setA(I)V
    .locals 0
    .param p1, "a"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->a:I

    .line 19
    return-void
.end method

.method public setB(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->b:I

    .line 27
    return-void
.end method

.method public setC(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->c:I

    .line 35
    return-void
.end method

.method public setD(I)V
    .locals 0
    .param p1, "d"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/fimi/x8sdk/appsetting/IdInfoJson;->d:I

    .line 43
    return-void
.end method
