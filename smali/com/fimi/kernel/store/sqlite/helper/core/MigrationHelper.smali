.class public Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# static fields
.field private static final CONVERSION_CLASS_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "MIGRATION HELPER - CLASS DOESN\'T MATCH WITH THE CURRENT PARAMETERS"

.field private static instance:Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generateTempTables(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .locals 15
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v13, v0

    if-ge v6, v13, :cond_3

    .line 49
    new-instance v3, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v13, p2, v6

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 51
    .local v3, "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    const-string v4, ""

    .line 52
    .local v4, "divider":Ljava/lang/String;
    iget-object v10, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 53
    .local v10, "tableName":Ljava/lang/String;
    iget-object v13, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v14, "_TEMP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "tempTableName":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v9, "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v2, "createTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v13, "CREATE TABLE "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget-object v13, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v13, v13

    if-ge v8, v13, :cond_2

    .line 61
    iget-object v13, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v13, v13, v8

    iget-object v1, v13, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 63
    .local v1, "columnName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->getColumns(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 64
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v12, 0x0

    .line 69
    .local v12, "type":Ljava/lang/String;
    :try_start_0
    iget-object v13, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v13, v13, v8

    iget-object v13, v13, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    invoke-direct {p0, v13}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->getTypeByClass(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 74
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v13, v3, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v13, v13, v8

    iget-boolean v13, v13, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    if-eqz v13, :cond_0

    .line 77
    const-string v13, " PRIMARY KEY"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    const-string v4, ","

    .line 60
    .end local v12    # "type":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 70
    .restart local v12    # "type":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 71
    .local v5, "exception":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 83
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v5    # "exception":Ljava/lang/Exception;
    .end local v12    # "type":Ljava/lang/String;
    :cond_2
    const-string v13, ");"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v7, "insertTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v13, "INSERT INTO "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v13, ","

    invoke-static {v13, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v13, ") SELECT "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v13, ","

    invoke-static {v13, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v13, " FROM "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 48
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 98
    .end local v2    # "createTableStringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    .end local v4    # "divider":Ljava/lang/String;
    .end local v7    # "insertTableStringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "j":I
    .end local v9    # "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "tableName":Ljava/lang/String;
    .end local v11    # "tempTableName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getColumns(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 156
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " limit 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 157
    if-eqz v2, :cond_0

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    .line 164
    .end local v1    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_1
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    if-eqz v2, :cond_1

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_2
    throw v4
.end method

.method public static getInstance()Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->instance:Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;

    invoke-direct {v0}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;-><init>()V

    sput-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->instance:Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;

    .line 30
    :cond_0
    sget-object v0, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->instance:Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;

    return-object v0
.end method

.method private getTypeByClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "TEXT"

    .line 144
    :goto_0
    return-object v1

    .line 140
    :cond_0
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_1
    const-string v1, "INTEGER"

    goto :goto_0

    .line 143
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    const-string v1, "BOOLEAN"

    goto :goto_0

    .line 147
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MIGRATION HELPER - CLASS DOESN\'T MATCH WITH THE CURRENT PARAMETERS"

    const-string v2, " - Class: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    throw v0
.end method

.method private varargs restoreData(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .locals 11
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, p2

    if-ge v3, v9, :cond_2

    .line 108
    new-instance v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v9, p2, v3

    invoke-direct {v1, p1, v9}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 109
    .local v1, "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    iget-object v7, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 110
    .local v7, "tableName":Ljava/lang/String;
    iget-object v9, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v10, "_TEMP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "tempTableName":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v6, "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v9, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v9, v9

    if-ge v5, v9, :cond_1

    .line 114
    iget-object v9, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v9, v9, v5

    iget-object v0, v9, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 116
    .local v0, "columnName":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->getColumns(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v4, "insertTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v9, "INSERT INTO "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v9, ","

    invoke-static {v9, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v9, ") SELECT "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v9, ","

    invoke-static {v9, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v9, " FROM "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v2, "dropTableStringBuilder":Ljava/lang/StringBuilder;
    const-string v9, "DROP TABLE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 134
    .end local v1    # "daoConfig":Lorg/greenrobot/greendao/internal/DaoConfig;
    .end local v2    # "dropTableStringBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "insertTableStringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "j":I
    .end local v6    # "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "tableName":Ljava/lang/String;
    .end local v8    # "tempTableName":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public varargs migrate(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "daoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    invoke-direct {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->generateTempTables(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    .line 36
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fimi/kernel/store/sqlite/dao/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/fimi/kernel/store/sqlite/helper/core/MigrationHelper;->restoreData(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    .line 39
    return-void
.end method
