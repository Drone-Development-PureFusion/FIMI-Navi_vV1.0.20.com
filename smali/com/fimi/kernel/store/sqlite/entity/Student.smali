.class public Lcom/fimi/kernel/store/sqlite/entity/Student;
.super Ljava/lang/Object;
.source "Student.java"


# instance fields
.field public age:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "age"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->id:Ljava/lang/Long;

    .line 45
    iput-object p2, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->name:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->age:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->number:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->age:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->id:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fimi/kernel/store/sqlite/entity/Student;->number:Ljava/lang/String;

    .line 23
    return-void
.end method
