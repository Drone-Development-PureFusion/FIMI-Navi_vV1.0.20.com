.class public Lorg/dom4j/rule/Rule;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private action:Lorg/dom4j/rule/Action;

.field private appearenceCount:I

.field private importPrecedence:I

.field private mode:Ljava/lang/String;

.field private pattern:Lorg/dom4j/rule/Pattern;

.field private priority:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;)V
    .locals 2
    .param p1, "pattern"    # Lorg/dom4j/rule/Pattern;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 46
    invoke-interface {p1}, Lorg/dom4j/rule/Pattern;->getPriority()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;Lorg/dom4j/rule/Action;)V
    .locals 0
    .param p1, "pattern"    # Lorg/dom4j/rule/Pattern;
    .param p2, "action"    # Lorg/dom4j/rule/Action;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;)V

    .line 51
    iput-object p2, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V
    .locals 2
    .param p1, "that"    # Lorg/dom4j/rule/Rule;
    .param p2, "pattern"    # Lorg/dom4j/rule/Pattern;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    .line 65
    iget v0, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    .line 66
    iget-wide v0, p1, Lorg/dom4j/rule/Rule;->priority:D

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 67
    iget v0, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    .line 68
    iget-object v0, p1, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 69
    iput-object p2, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 70
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v0, p1, Lorg/dom4j/rule/Rule;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Lorg/dom4j/rule/Rule;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v0

    .line 89
    :goto_0
    return v0

    .restart local p1    # "that":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public compareTo(Lorg/dom4j/rule/Rule;)I
    .locals 6
    .param p1, "that"    # Lorg/dom4j/rule/Rule;

    .prologue
    .line 102
    iget v1, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v2, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    sub-int v0, v1, v2

    .line 104
    .local v0, "answer":I
    if-nez v0, :cond_0

    .line 105
    iget-wide v2, p0, Lorg/dom4j/rule/Rule;->priority:D

    iget-wide v4, p1, Lorg/dom4j/rule/Rule;->priority:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 107
    if-nez v0, :cond_0

    .line 108
    iget v1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iget v2, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    sub-int v0, v1, v2

    .line 112
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 73
    instance-of v1, p1, Lorg/dom4j/rule/Rule;

    if-eqz v1, :cond_0

    .line 74
    check-cast p1, Lorg/dom4j/rule/Rule;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    return v0
.end method

.method public getAction()Lorg/dom4j/rule/Action;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-object v0
.end method

.method public getAppearenceCount()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    return v0
.end method

.method public getImportPrecedence()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    return v0
.end method

.method public final getMatchType()S
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchType()S

    move-result v0

    return v0
.end method

.method public final getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Lorg/dom4j/rule/Pattern;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-wide v0
.end method

.method public getUnionRules()[Lorg/dom4j/rule/Rule;
    .locals 6

    .prologue
    .line 141
    iget-object v4, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v4}, Lorg/dom4j/rule/Pattern;->getUnionPatterns()[Lorg/dom4j/rule/Pattern;

    move-result-object v2

    .line 143
    .local v2, "patterns":[Lorg/dom4j/rule/Pattern;
    if-nez v2, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 154
    :cond_0
    return-object v0

    .line 147
    :cond_1
    array-length v3, v2

    .line 148
    .local v3, "size":I
    new-array v0, v3, [Lorg/dom4j/rule/Rule;

    .line 150
    .local v0, "answer":[Lorg/dom4j/rule/Rule;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 151
    new-instance v4, Lorg/dom4j/rule/Rule;

    aget-object v5, v2, v1

    invoke-direct {v4, p0, v5}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V

    aput-object v4, v0, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final matches(Lorg/dom4j/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/dom4j/Node;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0, p1}, Lorg/dom4j/rule/Pattern;->matches(Lorg/dom4j/Node;)Z

    move-result v0

    return v0
.end method

.method public setAction(Lorg/dom4j/rule/Action;)V
    .locals 0
    .param p1, "action"    # Lorg/dom4j/rule/Action;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 293
    return-void
.end method

.method public setAppearenceCount(I)V
    .locals 0
    .param p1, "appearenceCount"    # I

    .prologue
    .line 254
    iput p1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    .line 255
    return-void
.end method

.method public setImportPrecedence(I)V
    .locals 0
    .param p1, "importPrecedence"    # I

    .prologue
    .line 216
    iput p1, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    .line 217
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setPattern(Lorg/dom4j/rule/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Lorg/dom4j/rule/Pattern;

    .prologue
    .line 273
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 274
    return-void
.end method

.method public setPriority(D)V
    .locals 1
    .param p1, "priority"    # D

    .prologue
    .line 235
    iput-wide p1, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[ pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getPattern()Lorg/dom4j/rule/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
