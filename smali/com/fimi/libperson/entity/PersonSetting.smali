.class public Lcom/fimi/libperson/entity/PersonSetting;
.super Ljava/util/Observable;
.source "PersonSetting.java"


# instance fields
.field private content:Ljava/lang/String;

.field private displayTv:Z

.field private id:I

.field private isCheckedButton:Z

.field private isOPen:Ljava/lang/Boolean;

.field private mFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

.field private mSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

.field private mSettingAdaptState:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

.field private mThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

.field private newHandModel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->isOPen:Ljava/lang/Boolean;

    .line 18
    iput-boolean v1, p0, Lcom/fimi/libperson/entity/PersonSetting;->displayTv:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFourAdapt()Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->mFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->id:I

    return v0
.end method

.method public getIsOPen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->isOPen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNewHandModel()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->newHandModel:I

    return v0
.end method

.method public getSecondAdapt()Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->mSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    return-object v0
.end method

.method public getSettingAdaptState()Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->mSettingAdaptState:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    return-object v0
.end method

.method public getThirdAdapt()Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->mThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    return-object v0
.end method

.method public isCheckedButton()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->isCheckedButton:Z

    return v0
.end method

.method public isDisplayTv()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->displayTv:Z

    return v0
.end method

.method public setCheckedButton(Z)V
    .locals 0
    .param p1, "checkedButton"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->isCheckedButton:Z

    .line 107
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->content:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/fimi/libperson/entity/PersonSetting;->setChanged()V

    .line 29
    invoke-virtual {p0}, Lcom/fimi/libperson/entity/PersonSetting;->notifyObservers()V

    .line 30
    return-void
.end method

.method public setDisplayTv(Z)V
    .locals 0
    .param p1, "displayTv"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->displayTv:Z

    .line 99
    return-void
.end method

.method public setFourAdapt(Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;)V
    .locals 0
    .param p1, "fourAdapt"    # Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->mFourAdapt:Lcom/fimi/libperson/adapter/PersettingFourAdapt$State;

    .line 78
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->id:I

    .line 38
    return-void
.end method

.method public setIsOPen(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isOPen"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/libperson/entity/PersonSetting;->isOPen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/fimi/libperson/entity/PersonSetting;->isOPen:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/fimi/libperson/entity/PersonSetting;->setChanged()V

    .line 88
    invoke-virtual {p0}, Lcom/fimi/libperson/entity/PersonSetting;->notifyObservers()V

    .line 89
    iput-object p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->isOPen:Ljava/lang/Boolean;

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNewHandModel(I)V
    .locals 0
    .param p1, "newHandModel"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->newHandModel:I

    .line 115
    return-void
.end method

.method public setSecondAdapt(Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;)V
    .locals 0
    .param p1, "secondAdapt"    # Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->mSecondAdapt:Lcom/fimi/libperson/adapter/PersettingSecondAdapt$State;

    .line 58
    return-void
.end method

.method public setSettingAdaptState(Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;)V
    .locals 0
    .param p1, "mSettingAdaptState"    # Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->mSettingAdaptState:Lcom/fimi/libperson/adapter/PersonSettingAdapt$State;

    .line 47
    return-void
.end method

.method public setThirdAdapt(Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;)V
    .locals 0
    .param p1, "thirdAdapt"    # Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/libperson/entity/PersonSetting;->mThirdAdapt:Lcom/fimi/libperson/adapter/PersettingThirdAdapt$State;

    .line 68
    return-void
.end method
