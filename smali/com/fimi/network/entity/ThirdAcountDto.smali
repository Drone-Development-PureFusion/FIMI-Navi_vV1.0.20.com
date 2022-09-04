.class public Lcom/fimi/network/entity/ThirdAcountDto;
.super Lcom/fimi/network/entity/BaseModel;
.source "ThirdAcountDto.java"


# instance fields
.field private country:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private loginChannel:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private passWord:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thirdId:Ljava/lang/String;

.field private userImgUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/fimi/network/entity/BaseModel;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/fimi/network/entity/ThirdAcountDto;

    invoke-direct {v0}, Lcom/fimi/network/entity/ThirdAcountDto;-><init>()V

    .line 107
    .local v0, "t":Lcom/fimi/network/entity/ThirdAcountDto;
    const-string v1, "cn"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setCountry(Ljava/lang/String;)V

    .line 108
    const-string v1, "moweiru@fimi.cn"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setEmail(Ljava/lang/String;)V

    .line 109
    const-string v1, "cn"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setCountry(Ljava/lang/String;)V

    .line 110
    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setName(Ljava/lang/String;)V

    .line 111
    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setNickName(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "\u5907\u6ce8"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setNote(Ljava/lang/String;)V

    .line 113
    const-string v1, "15013027566"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setPhone(Ljava/lang/String;)V

    .line 114
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setSex(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "\u4e2a\u6027\u7b7e\u540d"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setSignature(Ljava/lang/String;)V

    .line 116
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setStatus(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v1, "\u7528\u6237\u5934\u50cfURL"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setUserImgUrl(Ljava/lang/String;)V

    .line 118
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/fimi/network/entity/ThirdAcountDto;->setLoginChannel(Ljava/lang/String;)V

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 121
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->loginChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->thirdId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/network/entity/ThirdAcountDto;->userImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->country:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->email:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setLoginChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "loginChannel"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->loginChannel:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->nickName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->note:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->passWord:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->phone:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->sex:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->signature:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->status:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setThirdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "thirdId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->thirdId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUserImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "userImgUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/network/entity/ThirdAcountDto;->userImgUrl:Ljava/lang/String;

    .line 90
    return-void
.end method
