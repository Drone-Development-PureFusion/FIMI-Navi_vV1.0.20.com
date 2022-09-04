.class public Lorg/jdom/CDATA;
.super Lorg/jdom/Text;
.source "CDATA.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: CDATA.java,v $ $Revision: 1.30 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/jdom/Text;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/jdom/Text;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lorg/jdom/CDATA;->setText(Ljava/lang/String;)Lorg/jdom/Text;

    .line 94
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 148
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "CDATA section"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_2

    .line 152
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const-string v1, ""

    iput-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    .line 124
    :goto_0
    return-object p0

    .line 120
    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 121
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "CDATA section"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_1
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 168
    const-string v1, "[CDATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 170
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method
