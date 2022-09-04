.class public Lcom/fimi/kernel/store/sqlite/helper/StudentHelper;
.super Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;
.source "StudentHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper",
        "<",
        "Lcom/fimi/kernel/store/sqlite/entity/Student;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .locals 0
    .param p1, "dao"    # Lorg/greenrobot/greendao/AbstractDao;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/fimi/kernel/store/sqlite/helper/core/BaseDbHelper;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 16
    return-void
.end method
