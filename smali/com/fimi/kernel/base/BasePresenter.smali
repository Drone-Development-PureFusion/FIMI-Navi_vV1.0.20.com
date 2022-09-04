.class public abstract Lcom/fimi/kernel/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mView:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/fimi/kernel/base/BasePresenter;, "Lcom/fimi/kernel/base/BasePresenter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachVM(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/fimi/kernel/base/BasePresenter;, "Lcom/fimi/kernel/base/BasePresenter<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/fimi/kernel/base/BasePresenter;->mView:Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public detachVM()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/fimi/kernel/base/BasePresenter;, "Lcom/fimi/kernel/base/BasePresenter<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/base/BasePresenter;->mView:Ljava/lang/Object;

    .line 17
    return-void
.end method
