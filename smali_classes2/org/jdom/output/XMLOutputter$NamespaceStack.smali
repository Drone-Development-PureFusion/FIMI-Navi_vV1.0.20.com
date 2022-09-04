.class public Lorg/jdom/output/XMLOutputter$NamespaceStack;
.super Lorg/jdom/output/NamespaceStack;
.source "XMLOutputter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/output/XMLOutputter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NamespaceStack"
.end annotation


# instance fields
.field private final this$0:Lorg/jdom/output/XMLOutputter;


# direct methods
.method protected constructor <init>(Lorg/jdom/output/XMLOutputter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jdom/output/XMLOutputter;

    .prologue
    .line 1569
    invoke-direct {p0}, Lorg/jdom/output/NamespaceStack;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/jdom/output/XMLOutputter$NamespaceStack;->this$0:Lorg/jdom/output/XMLOutputter;

    .line 1569
    return-void
.end method
