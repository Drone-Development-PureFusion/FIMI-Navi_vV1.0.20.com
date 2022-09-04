.class public Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;
.super Ljava/lang/Object;
.source "BaseDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 0
    .param p1, "dao"    # Lorg/greenrobot/greendao/AbstractDao;

    .prologue
    .line 32
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    .line 34
    return-void
.end method


# virtual methods
.method public count()J
    .locals 2

    .prologue
    .line 113
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 75
    return-void
.end method

.method public varargs delete([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 79
    return-void
.end method

.method public deleteByKey(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public detach(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->detach(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 39
    return-void
.end method

.method public save(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 47
    return-void
.end method

.method public varargs save([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 51
    return-void
.end method

.method public saveOrUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 59
    return-void
.end method

.method public varargs saveOrUpdate([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 92
    return-void
.end method

.method public varargs update([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;, "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper<TT;TK;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;->mDao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    .line 88
    return-void
.end method
