.class public Lcom/xiaomi/account/auth/OAuthConfig$Builder;
.super Ljava/lang/Object;
.source "OAuthConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/auth/OAuthConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

.field private appId:Ljava/lang/String;

.field private authorizeActivityClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private deviceID:Ljava/lang/String;

.field private keepCookies:Z

.field private notUseMiui:Z

.field private platform:I

.field private redirectUrl:Ljava/lang/String;

.field private responseType:Ljava/lang/String;

.field private scopes:[I

.field private skipConfirm:Ljava/lang/Boolean;

.field private state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    sput-object v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui:Z

    .line 86
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes:[I

    .line 87
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl:Ljava/lang/String;

    .line 90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm:Ljava/lang/Boolean;

    .line 92
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies:Z

    .line 96
    sget-object v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz:Ljava/lang/Class;

    .line 100
    iput v2, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform:I

    .line 102
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID:Ljava/lang/String;

    .line 104
    const-string v0, "code"

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v2, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui:Z

    .line 86
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes:[I

    .line 87
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl:Ljava/lang/String;

    .line 90
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm:Ljava/lang/Boolean;

    .line 92
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies:Z

    .line 96
    sget-object v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz:Ljava/lang/Class;

    .line 100
    iput v2, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform:I

    .line 102
    iput-object v1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID:Ljava/lang/String;

    .line 104
    const-string v0, "code"

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType:Ljava/lang/String;

    .line 109
    iget-boolean v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui:Z

    iput-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui:Z

    .line 110
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes:[I

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes:[I

    .line 111
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm:Ljava/lang/Boolean;

    .line 114
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state:Ljava/lang/String;

    .line 115
    iget-boolean v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies:Z

    iput-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies:Z

    .line 116
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz:Ljava/lang/Class;

    .line 117
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    .line 118
    iget v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform:I

    iput v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform:I

    .line 119
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)[I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies:Z

    return v0
.end method

.method static synthetic access$700(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)Lcom/xiaomi/account/openauth/AccountAuth;
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .prologue
    .line 79
    iget v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform:I

    return v0
.end method


# virtual methods
.method public accountAuth(Lcom/xiaomi/account/openauth/AccountAuth;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "accountAuth"    # Lcom/xiaomi/account/openauth/AccountAuth;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->accountAuth:Lcom/xiaomi/account/openauth/AccountAuth;

    .line 166
    return-object p0
.end method

.method public appId(J)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 1
    .param p1, "appId"    # J

    .prologue
    .line 129
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public authorizeActivityClazz(Ljava/lang/Class;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;)",
            "Lcom/xiaomi/account/auth/OAuthConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/account/openauth/AuthorizeActivityBase;>;"
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->authorizeActivityClazz:Ljava/lang/Class;

    .line 160
    return-object p0
.end method

.method public build()Lcom/xiaomi/account/auth/OAuthConfig;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/auth/OAuthConfig;-><init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V

    return-object v0
.end method

.method public deviceID(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->deviceID:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public keepCookies(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "keepCookies"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->keepCookies:Z

    .line 155
    return-object p0
.end method

.method public notUseMiui(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "noMiui"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->notUseMiui:Z

    .line 145
    return-object p0
.end method

.method public platform(I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "platform"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->platform:I

    .line 172
    return-object p0
.end method

.method public redirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "redirectUrl"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "responseType"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public scopes([I)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "scopes"    # [I

    .prologue
    .line 124
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->scopes:[I

    .line 125
    return-object p0
.end method

.method public skipConfirm(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 1
    .param p1, "skipConfirm"    # Z

    .prologue
    .line 139
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm:Ljava/lang/Boolean;

    .line 140
    return-object p0
.end method

.method public state(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->state:Ljava/lang/String;

    .line 150
    return-object p0
.end method
