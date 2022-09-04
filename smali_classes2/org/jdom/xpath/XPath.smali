.class public abstract Lorg/jdom/xpath/XPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/xpath/XPath$XPathString;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XPath.java,v $ $Revision: 1.15 $ $Date: 2004/02/06 09:28:32 $ $Name: jdom_1_0 $"

.field private static final DEFAULT_XPATH_CLASS:Ljava/lang/String; = "org.jdom.xpath.JaxenXPath"

.field private static final XPATH_CLASS_PROPERTY:Ljava/lang/String; = "org.jdom.xpath.class"

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$jdom$xpath$XPath:Ljava/lang/Class;

.field private static constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "class$"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "forName":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    sget-object v5, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v5, :cond_0

    .line 118
    :try_start_1
    const-string v5, "org.jdom.xpath.class"

    .line 120
    const-string v6, "org.jdom.xpath.JaxenXPath"

    .line 119
    invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jdom/JDOMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 126
    .local v0, "className":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lorg/jdom/xpath/XPath;->setXPathClass(Ljava/lang/Class;)V

    .line 129
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    sget-object v5, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jdom/xpath/XPath;

    return-object v5

    .line 124
    :catch_0
    move-exception v5

    const-string v0, "org.jdom.xpath.JaxenXPath"
    :try_end_2
    .catch Lorg/jdom/JDOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .restart local v0    # "className":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "className":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "ex1":Lorg/jdom/JDOMException;
    throw v1

    .line 134
    .end local v1    # "ex1":Lorg/jdom/JDOMException;
    :catch_2
    move-exception v2

    .line 136
    .local v2, "ex2":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 138
    .local v4, "t":Ljava/lang/Throwable;
    instance-of v5, v4, Lorg/jdom/JDOMException;

    if-eqz v5, :cond_1

    check-cast v4, Lorg/jdom/JDOMException;

    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_1
    throw v4

    .line 139
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v5, Lorg/jdom/JDOMException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    goto :goto_1

    .line 141
    .end local v2    # "ex2":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .line 143
    .local v3, "ex3":Ljava/lang/Exception;
    new-instance v5, Lorg/jdom/JDOMException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static selectNodes(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {p1}, Lorg/jdom/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom/xpath/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {p1}, Lorg/jdom/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom/xpath/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setXPathClass(Ljava/lang/Class;)V
    .locals 5
    .param p0, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "aClass"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_0
    :try_start_0
    sget-object v2, Lorg/jdom/xpath/XPath;->class$org$jdom$xpath$XPath:Ljava/lang/Class;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/jdom/xpath/XPath;->class$org$jdom$xpath$XPath:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 168
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v2, Lorg/jdom/xpath/XPath;->class$java$lang$String:Ljava/lang/Class;

    if-eqz v2, :cond_2

    sget-object v2, Lorg/jdom/xpath/XPath;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    .line 159
    return-void

    .line 164
    :cond_1
    const-string v2, "org.jdom.xpath.XPath"

    invoke-static {v2}, Lorg/jdom/xpath/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/jdom/xpath/XPath;->class$org$jdom$xpath$XPath:Ljava/lang/Class;
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex1":Lorg/jdom/JDOMException;
    throw v0

    .line 168
    .end local v0    # "ex1":Lorg/jdom/JDOMException;
    :cond_2
    :try_start_1
    const-string v2, "java.lang.String"

    invoke-static {v2}, Lorg/jdom/xpath/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/jdom/xpath/XPath;->class$java$lang$String:Ljava/lang/Class;
    :try_end_1
    .catch Lorg/jdom/JDOMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v1

    .line 180
    .local v1, "ex2":Ljava/lang/Exception;
    new-instance v2, Lorg/jdom/JDOMException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 171
    .end local v1    # "ex2":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 172
    const-string v4, " is not a concrete JDOM XPath implementation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lorg/jdom/JDOMException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom/xpath/XPath;->addNamespace(Lorg/jdom/Namespace;)V

    .line 297
    return-void
.end method

.method public abstract addNamespace(Lorg/jdom/Namespace;)V
.end method

.method public abstract getXPath()Ljava/lang/String;
.end method

.method public abstract numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public abstract selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public abstract selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method public abstract setVariable(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;
        }
    .end annotation
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Lorg/jdom/xpath/XPath$XPathString;

    invoke-virtual {p0}, Lorg/jdom/xpath/XPath;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/xpath/XPath$XPathString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
