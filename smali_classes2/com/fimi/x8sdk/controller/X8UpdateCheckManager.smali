.class public Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;
.super Ljava/lang/Object;
.source "X8UpdateCheckManager.java"


# static fields
.field private static x8UpdateCheckManager:Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

.field private static x8UpdateCheckPresenter:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->x8UpdateCheckManager:Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->x8UpdateCheckPresenter:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->x8UpdateCheckManager:Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;

    return-object v0
.end method


# virtual methods
.method public queryCurSystemStatus()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->x8UpdateCheckPresenter:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->queryCurSystemStatus()V

    .line 29
    return-void
.end method

.method public setOnIUpdateCheckAction(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iUpdateCheckAction"    # Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;

    .prologue
    .line 24
    sget-object v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->x8UpdateCheckPresenter:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->setIUpdateCheckAction(Landroid/content/Context;Lcom/fimi/x8sdk/ivew/IUpdateCheckAction;)V

    .line 25
    return-void
.end method

.method public setPresenterLockMotor(I)V
    .locals 1
    .param p1, "lock"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/fimi/x8sdk/controller/X8UpdateCheckManager;->x8UpdateCheckPresenter:Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/X8UpdateCheckPresenter;->setPresenterLockMotor(I)V

    .line 33
    return-void
.end method
