.class Lorg/greenrobot/greendao/rx/RxDao$6;
.super Ljava/lang/Object;
.source "RxDao.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/greenrobot/greendao/rx/RxDao;->insertInTx([Ljava/lang/Object;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/greenrobot/greendao/rx/RxDao;

.field final synthetic val$entities:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/rx/RxDao;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/greenrobot/greendao/rx/RxDao;

    .prologue
    .line 142
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$6;, "Lorg/greenrobot/greendao/rx/RxDao$6;"
    iput-object p1, p0, Lorg/greenrobot/greendao/rx/RxDao$6;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    iput-object p2, p0, Lorg/greenrobot/greendao/rx/RxDao$6;->val$entities:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$6;, "Lorg/greenrobot/greendao/rx/RxDao$6;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/rx/RxDao$6;->call()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lorg/greenrobot/greendao/rx/RxDao$6;, "Lorg/greenrobot/greendao/rx/RxDao$6;"
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$6;->this$0:Lorg/greenrobot/greendao/rx/RxDao;

    invoke-static {v0}, Lorg/greenrobot/greendao/rx/RxDao;->access$000(Lorg/greenrobot/greendao/rx/RxDao;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/rx/RxDao$6;->val$entities:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/greenrobot/greendao/rx/RxDao$6;->val$entities:[Ljava/lang/Object;

    return-object v0
.end method
