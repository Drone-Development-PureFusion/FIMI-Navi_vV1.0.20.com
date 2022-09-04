.class public Lcom/fimi/network/entity/RestPswDto;
.super Lcom/fimi/network/entity/BaseModel;
.source "RestPswDto.java"


# instance fields
.field private checkPsw:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private confirmPassword:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/fimi/network/entity/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckPsw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/network/entity/RestPswDto;->checkPsw:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/network/entity/RestPswDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/network/entity/RestPswDto;->confirmPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/network/entity/RestPswDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/network/entity/RestPswDto;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/network/entity/RestPswDto;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckPsw(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkPsw"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/fimi/network/entity/RestPswDto;->checkPsw:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/fimi/network/entity/RestPswDto;->code:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setConfirmPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "confirmPassword"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/network/entity/RestPswDto;->confirmPassword:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fimi/network/entity/RestPswDto;->email:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/fimi/network/entity/RestPswDto;->password:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/network/entity/RestPswDto;->phone:Ljava/lang/String;

    .line 54
    return-void
.end method
