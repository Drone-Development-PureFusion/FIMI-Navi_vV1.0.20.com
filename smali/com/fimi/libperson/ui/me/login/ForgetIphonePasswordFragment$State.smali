.class public final enum Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;
.super Ljava/lang/Enum;
.source "ForgetIphonePasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

.field public static final enum IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

.field public static final enum NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    const-string v1, "IPHONE"

    invoke-direct {v0, v1, v2}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    new-instance v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    const-string v1, "NEW_PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->IPHONE:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->NEW_PASSWORD:Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->$VALUES:[Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    return-object v0
.end method

.method public static values()[Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->$VALUES:[Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    invoke-virtual {v0}, [Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fimi/libperson/ui/me/login/ForgetIphonePasswordFragment$State;

    return-object v0
.end method
