.class Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/database/DatabaseOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptedHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/DatabaseOpenHelper;Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "version"    # I
    .param p5, "loadLibs"    # Z

    .prologue
    .line 171
    iput-object p1, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->this$0:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    .line 173
    if-eqz p5, :cond_0

    .line 174
    invoke-static {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->this$0:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    .line 181
    return-void
.end method

.method public onOpen(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->this$0:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onOpen(Lorg/greenrobot/greendao/database/Database;)V

    .line 191
    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->this$0:Lorg/greenrobot/greendao/database/DatabaseOpenHelper;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper$EncryptedHelper;->wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V

    .line 186
    return-void
.end method

.method protected wrap(Lnet/sqlcipher/database/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;
    .locals 1
    .param p1, "sqLiteDatabase"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .prologue
    .line 194
    new-instance v0, Lorg/greenrobot/greendao/database/EncryptedDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/EncryptedDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;)V

    return-object v0
.end method
