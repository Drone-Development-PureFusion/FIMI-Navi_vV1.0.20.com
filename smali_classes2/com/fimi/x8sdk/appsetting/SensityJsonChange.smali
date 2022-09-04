.class public Lcom/fimi/x8sdk/appsetting/SensityJsonChange;
.super Ljava/lang/Object;
.source "SensityJsonChange.java"


# instance fields
.field private newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

.field private oldValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;Lcom/fimi/x8sdk/appsetting/ValueSensity;)V
    .locals 0
    .param p1, "oldV"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;
    .param p2, "newV"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;->newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .line 13
    iput-object p1, p0, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;->oldValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .line 14
    return-void
.end method


# virtual methods
.method public getNewValue()Lcom/fimi/x8sdk/appsetting/ValueSensity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;->newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    return-object v0
.end method

.method public getOldValue()Lcom/fimi/x8sdk/appsetting/ValueSensity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;->oldValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    return-object v0
.end method

.method public setNewValue(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V
    .locals 0
    .param p1, "newValue"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;->newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .line 22
    return-void
.end method

.method public setOldValue(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V
    .locals 0
    .param p1, "oldValue"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/fimi/x8sdk/appsetting/SensityJsonChange;->oldValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .line 30
    return-void
.end method
