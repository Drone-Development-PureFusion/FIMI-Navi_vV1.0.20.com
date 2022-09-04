.class public Lcom/fimi/kernel/dataparser/BaseRespJson;
.super Ljava/lang/Object;
.source "BaseRespJson.java"


# static fields
.field public static final ERROR_APP_NOT_READY:I = -0x16

.field public static final ERROR_CARD_PROTECTED:I = -0x12

.field public static final ERROR_HDMI_INSERTED:I = -0x10

.field public static final ERROR_INVALID_OPERATION:I = -0xe

.field public static final ERROR_INVALID_OPTION_VALUE:I = -0xd

.field public static final ERROR_INVALID_PARAM:I = -0x19

.field public static final ERROR_INVALID_PATH:I = -0x1a

.field public static final ERROR_INVALID_TOKEN:I = -0x4

.field public static final ERROR_INVALID_TYPE:I = -0x18

.field public static final ERROR_JSON_PACKAGE_ERROR:I = -0x7

.field public static final ERROR_JSON_PACKAGE_TIMEOUT:I = -0x8

.field public static final ERROR_JSON_SYNTAX_ERROR:I = -0x9

.field public static final ERROR_NO_MORE_MEMORY:I = -0x13

.field public static final ERROR_NO_MORE_SPACE:I = -0x11

.field public static final ERROR_OPERATION_UNSUPPORTED:I = -0x17

.field public static final ERROR_PIV_NOT_ALLOWED:I = -0x14

.field public static final ERROR_REACH_MAX_CLNT:I = -0x5

.field public static final ERROR_SESSION_START_FAIL:I = -0x3

.field public static final ERROR_SYSTEM_BUSY:I = -0x15

.field public static final ERROR_UNKNOWN_ERROR:I = -0x1


# instance fields
.field protected msg_id:I

.field protected param:Ljava/lang/String;

.field protected rval:I

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->rval:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 80
    :pswitch_1
    const-string v0, "ERROR_APP_NOT_READY"

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v0, "ERROR_CARD_PROTECTED"

    goto :goto_0

    .line 84
    :pswitch_3
    const-string v0, "ERROR_HDMI_INSERTED"

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v0, "ERROR_INVALID_OPERATION"

    goto :goto_0

    .line 88
    :pswitch_5
    const-string v0, "ERROR_INVALID_OPTION_VALUE"

    goto :goto_0

    .line 90
    :pswitch_6
    const-string v0, "ERROR_INVALID_PARAM"

    goto :goto_0

    .line 92
    :pswitch_7
    const-string v0, "ERROR_INVALID_PATH"

    goto :goto_0

    .line 94
    :pswitch_8
    const-string v0, "ERROR_INVALID_TOKEN"

    goto :goto_0

    .line 96
    :pswitch_9
    const-string v0, "ERROR_UNKNOWN_ERROR"

    goto :goto_0

    .line 98
    :pswitch_a
    const-string v0, "ERROR_SYSTEM_BUSY"

    goto :goto_0

    .line 100
    :pswitch_b
    const-string v0, "ERROR_SESSION_START_FAIL"

    goto :goto_0

    .line 102
    :pswitch_c
    const-string v0, "ERROR_REACH_MAX_CLNT"

    goto :goto_0

    .line 104
    :pswitch_d
    const-string v0, "ERROR_PIV_NOT_ALLOWED"

    goto :goto_0

    .line 106
    :pswitch_e
    const-string v0, "ERROR_OPERATION_UNSUPPORTED"

    goto :goto_0

    .line 108
    :pswitch_f
    const-string v0, "ERROR_NO_MORE_SPACE"

    goto :goto_0

    .line 110
    :pswitch_10
    const-string v0, "ERROR_JSON_SYNTAX_ERROR"

    goto :goto_0

    .line 112
    :pswitch_11
    const-string v0, "ERROR_JSON_PACKAGE_TIMEOUT"

    goto :goto_0

    .line 114
    :pswitch_12
    const-string v0, "ERROR_JSON_PACKAGE_ERROR"

    goto :goto_0

    .line 116
    :pswitch_13
    const-string v0, "ERROR_NO_MORE_MEMORY"

    goto :goto_0

    .line 118
    :pswitch_14
    const-string v0, "ERROR_INVALID_TYPE"

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_7
        :pswitch_6
        :pswitch_14
        :pswitch_e
        :pswitch_1
        :pswitch_a
        :pswitch_d
        :pswitch_13
        :pswitch_2
        :pswitch_f
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->msg_id:I

    return v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getRval()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->rval:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->msg_id:I

    .line 61
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->param:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setRval(I)V
    .locals 0
    .param p1, "rval"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->rval:I

    .line 53
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/BaseRespJson;->type:Ljava/lang/String;

    .line 69
    return-void
.end method
