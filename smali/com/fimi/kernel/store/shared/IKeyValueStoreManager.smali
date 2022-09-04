.class public interface abstract Lcom/fimi/kernel/store/shared/IKeyValueStoreManager;
.super Ljava/lang/Object;
.source "IKeyValueStoreManager.java"

# interfaces
.implements Lcom/fimi/kernel/store/shared/IStoreManager;


# virtual methods
.method public abstract contain(Ljava/lang/String;)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List;"
        }
    .end annotation
.end method

.method public abstract getLong(Ljava/lang/String;)J
.end method

.method public abstract getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeKey(Ljava/lang/String;)V
.end method

.method public abstract saveBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract saveInt(Ljava/lang/String;I)V
.end method

.method public abstract saveListObject(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract saveLong(Ljava/lang/String;J)V
.end method

.method public abstract saveObject(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract saveString(Ljava/lang/String;Ljava/lang/String;)V
.end method
