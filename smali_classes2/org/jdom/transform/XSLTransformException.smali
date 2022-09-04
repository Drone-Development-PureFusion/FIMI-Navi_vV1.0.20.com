.class public Lorg/jdom/transform/XSLTransformException;
.super Lorg/jdom/JDOMException;
.source "XSLTransformException.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XSLTransformException.java,v $ $Revision: 1.3 $ $Date: 2004/02/06 09:28:32 $ $Name: jdom_1_0 $"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/jdom/JDOMException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method
