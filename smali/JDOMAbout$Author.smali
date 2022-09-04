.class LJDOMAbout$Author;
.super Ljava/lang/Object;
.source "JDOMAbout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJDOMAbout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Author"
.end annotation


# instance fields
.field email:Ljava/lang/String;

.field name:Ljava/lang/String;

.field private final this$0:LJDOMAbout;


# direct methods
.method constructor <init>(LJDOMAbout;)V
    .locals 0
    .param p1, "this$0"    # LJDOMAbout;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, LJDOMAbout$Author;->this$0:LJDOMAbout;

    .line 259
    return-void
.end method
