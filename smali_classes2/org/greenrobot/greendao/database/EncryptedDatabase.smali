.class public Lorg/greenrobot/greendao/database/EncryptedDatabase;
.super Ljava/lang/Object;
.source "EncryptedDatabase.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/Database;


# instance fields
.field private final delegate:Lnet/sqlcipher/database/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 0
    .param p1, "delegate"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 28
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 43
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 78
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;

    iget-object v1, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v1, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteStatement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/database/EncryptedDatabaseStatement;-><init>(Lnet/sqlcipher/database/SQLiteStatement;)V

    return-object v0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    .line 48
    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public getRawDatabase()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public getSQLiteDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/greenrobot/greendao/database/EncryptedDatabase;->delegate:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V

    .line 58
    return-void
.end method
