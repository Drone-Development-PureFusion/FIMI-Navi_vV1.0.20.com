.class public final enum Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;
.super Ljava/lang/Enum;
.source "ForgetPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

.field public static final enum EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

.field public static final enum NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

.field public static final enum VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    const-string v1, "VERIFICATION_CODE"

    invoke-direct {v0, v1, v3}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    const-string v1, "NEW_PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->EMAIL:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->VERIFICATION_CODE:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->$VALUES:[Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->$VALUES:[Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    invoke-virtual {v0}, [Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/libperson/ui/me/login/ForgetPasswordFragment$State;

    return-object v0
.end method
