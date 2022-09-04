.class public Lcom/fimi/x8sdk/appsetting/SensityJson;
.super Ljava/lang/Object;
.source "SensityJson.java"


# instance fields
.field private newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;


# direct methods
.method public constructor <init>(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V
    .locals 0
    .param p1, "newValue"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/appsetting/SensityJson;->setNewValue(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getNewValue()Lcom/fimi/x8sdk/appsetting/ValueSensity;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fimi/x8sdk/appsetting/SensityJson;->newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    return-object v0
.end method

.method public setNewValue(Lcom/fimi/x8sdk/appsetting/ValueSensity;)V
    .locals 0
    .param p1, "newValue"    # Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fimi/x8sdk/appsetting/SensityJson;->newValue:Lcom/fimi/x8sdk/appsetting/ValueSensity;

    .line 19
    return-void
.end method
