.class public Lch/qos/logback/core/pattern/parser/CompositeNode;
.super Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;


# instance fields
.field childNode:Lch/qos/logback/core/pattern/parser/Node;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lch/qos/logback/core/pattern/parser/CompositeNode;

    if-eqz v1, :cond_0

    check-cast p1, Lch/qos/logback/core/pattern/parser/CompositeNode;

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    iget-object v1, p1, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/Node;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getChildNode()Lch/qos/logback/core/pattern/parser/Node;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public setChildNode(Lch/qos/logback/core/pattern/parser/Node;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositeNode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/CompositeNode;->printNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "CompositeNode(no child)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
