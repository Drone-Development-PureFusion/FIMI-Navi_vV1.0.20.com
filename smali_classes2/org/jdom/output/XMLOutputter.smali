.class public Lorg/jdom/output/XMLOutputter;
.super Ljava/lang/Object;
.source "XMLOutputter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/output/XMLOutputter$NamespaceStack;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XMLOutputter.java,v $ $Revision: 1.112 $ $Date: 2004/09/01 06:08:18 $ $Name: jdom_1_0 $"

.field protected static final preserveFormat:Lorg/jdom/output/Format;


# instance fields
.field protected currentFormat:Lorg/jdom/output/Format;

.field private escapeOutput:Z

.field private userFormat:Lorg/jdom/output/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    sput-object v0, Lorg/jdom/output/XMLOutputter;->preserveFormat:Lorg/jdom/output/Format;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 127
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/jdom/output/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/jdom/output/Format;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 127
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 149
    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 150
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/jdom/output/XMLOutputter;)V
    .locals 1
    .param p1, "that"    # Lorg/jdom/output/XMLOutputter;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lorg/jdom/output/Format;->getRawFormat()Lorg/jdom/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 127
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 162
    iget-object v0, p1, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    invoke-virtual {v0}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 163
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 161
    return-void
.end method

.method private createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .locals 1

    .prologue
    .line 1559
    new-instance v0, Lorg/jdom/output/XMLOutputter$NamespaceStack;

    invoke-direct {v0, p0}, Lorg/jdom/output/XMLOutputter$NamespaceStack;-><init>(Lorg/jdom/output/XMLOutputter;)V

    return-object v0
.end method

.method private endsWithWhite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1325
    if-eqz p1, :cond_0

    .line 1326
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jdom/output/XMLOutputter;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    const/4 v0, 0x1

    .line 1330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indent(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    :cond_0
    return-void

    .line 1216
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1217
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAllWhitespace(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1291
    const/4 v1, 0x0

    .line 1293
    .local v1, "str":Ljava/lang/String;
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 1294
    check-cast v1, Ljava/lang/String;

    .line 1306
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 1310
    const/4 v2, 0x1

    .end local v0    # "i":I
    :cond_0
    :goto_2
    return v2

    .line 1296
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lorg/jdom/Text;

    if-eqz v3, :cond_2

    .line 1297
    check-cast p1, Lorg/jdom/Text;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1296
    goto :goto_0

    .line 1299
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_0

    goto :goto_2

    .line 1307
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v0    # "i":I
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/jdom/output/XMLOutputter;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isWhitespace(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1336
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    .line 1337
    :cond_0
    const/4 v0, 0x1

    .line 1339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method private static makeWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/Writer;
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "enc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 334
    const-string v1, "UTF-8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string p1, "UTF8"

    .line 338
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 339
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 340
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 339
    invoke-direct {v1, v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 338
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 342
    .local v0, "writer":Ljava/io/Writer;
    return-object v0
.end method

.method private newline(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1197
    :cond_0
    return-void
.end method

.method private static nextNonText(Ljava/util/List;I)I
    .locals 4
    .param p0, "content"    # Ljava/util/List;
    .param p1, "start"    # I

    .prologue
    .line 1273
    if-gez p1, :cond_0

    .line 1274
    const/4 p1, 0x0

    .line 1277
    :cond_0
    move v0, p1

    .line 1278
    .local v0, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1279
    .local v2, "size":I
    :goto_0
    if-lt v0, v2, :cond_2

    move v0, v2

    .line 1286
    .end local v0    # "index":I
    :cond_1
    return v0

    .line 1280
    .restart local v0    # "index":I
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1281
    .local v1, "node":Ljava/lang/Object;
    instance-of v3, v1, Lorg/jdom/Text;

    if-nez v3, :cond_3

    instance-of v3, v1, Lorg/jdom/EntityRef;

    if-eqz v3, :cond_1

    .line 1284
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private printAdditionalNamespaces(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "element"    # Lorg/jdom/Element;
    .param p3, "namespaces"    # Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-virtual {p2}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v2

    .line 1180
    .local v2, "list":Ljava/util/List;
    if-eqz v2, :cond_0

    .line 1181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1176
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1182
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Namespace;

    .line 1183
    .local v0, "additional":Lorg/jdom/Namespace;
    invoke-direct {p0, p1, v0, p3}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 1181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "content"    # Ljava/util/List;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "level"    # I
    .param p6, "namespaces"    # Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    move v2, p3

    .line 972
    .local v2, "index":I
    :cond_0
    :goto_0
    if-lt v2, p4, :cond_1

    .line 963
    return-void

    .line 973
    :cond_1
    if-ne v2, p3, :cond_4

    const/4 v1, 0x1

    .line 974
    .local v1, "firstNode":Z
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 979
    .local v3, "next":Ljava/lang/Object;
    instance-of v4, v3, Lorg/jdom/Text;

    if-nez v4, :cond_2

    instance-of v4, v3, Lorg/jdom/EntityRef;

    if-eqz v4, :cond_5

    .line 980
    :cond_2
    invoke-direct {p0, p2, v2}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result v0

    .line 982
    .local v0, "first":I
    invoke-static {p2, v0}, Lorg/jdom/output/XMLOutputter;->nextNonText(Ljava/util/List;I)I

    move-result v2

    .line 985
    if-ge v0, v2, :cond_0

    .line 986
    if-nez v1, :cond_3

    .line 987
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 988
    :cond_3
    invoke-direct {p0, p1, p5}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    .line 989
    invoke-direct {p0, p1, p2, v0, v2}, Lorg/jdom/output/XMLOutputter;->printTextRange(Ljava/io/Writer;Ljava/util/List;II)V

    goto :goto_0

    .line 973
    .end local v0    # "first":I
    .end local v1    # "firstNode":Z
    .end local v3    # "next":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 997
    .restart local v1    # "firstNode":Z
    .restart local v3    # "next":Ljava/lang/Object;
    :cond_5
    if-nez v1, :cond_6

    .line 998
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 1001
    :cond_6
    invoke-direct {p0, p1, p5}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    .line 1003
    instance-of v4, v3, Lorg/jdom/Comment;

    if-eqz v4, :cond_8

    .line 1004
    check-cast v3, Lorg/jdom/Comment;

    .end local v3    # "next":Ljava/lang/Object;
    invoke-virtual {p0, p1, v3}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    .line 1018
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1006
    .restart local v3    # "next":Ljava/lang/Object;
    :cond_8
    instance-of v4, v3, Lorg/jdom/Element;

    if-eqz v4, :cond_9

    .line 1007
    check-cast v3, Lorg/jdom/Element;

    .end local v3    # "next":Ljava/lang/Object;
    invoke-virtual {p0, p1, v3, p5, p6}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    goto :goto_2

    .line 1009
    .restart local v3    # "next":Ljava/lang/Object;
    :cond_9
    instance-of v4, v3, Lorg/jdom/ProcessingInstruction;

    if-eqz v4, :cond_7

    .line 1010
    check-cast v3, Lorg/jdom/ProcessingInstruction;

    .end local v3    # "next":Ljava/lang/Object;
    invoke-virtual {p0, p1, v3}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    goto :goto_2
.end method

.method private printElementNamespace(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "element"    # Lorg/jdom/Element;
    .param p3, "namespaces"    # Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    .line 1167
    .local v0, "ns":Lorg/jdom/Namespace;
    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-ne v0, v1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    sget-object v1, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-ne v0, v1, :cond_2

    .line 1171
    const-string v1, ""

    invoke-virtual {p3, v1}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1172
    :cond_2
    invoke-direct {p0, p1, v0, p3}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    goto :goto_0
.end method

.method private printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "ns"    # Lorg/jdom/Namespace;
    .param p3, "namespaces"    # Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual {p3, v0}, Lorg/jdom/output/NamespaceStack;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1115
    :cond_0
    const-string v2, " xmlns"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1116
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1117
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1120
    :cond_1
    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1122
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p3, p2}, Lorg/jdom/output/NamespaceStack;->push(Lorg/jdom/Namespace;)V

    goto :goto_0
.end method

.method private printQualifiedName(Ljava/io/Writer;Lorg/jdom/Attribute;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "a"    # Lorg/jdom/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1590
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1591
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1592
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1593
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1594
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1589
    :goto_0
    return-void

    .line 1597
    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "e"    # Lorg/jdom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1577
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    invoke-virtual {p2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1576
    :goto_0
    return-void

    .line 1581
    :cond_0
    invoke-virtual {p2}, Lorg/jdom/Element;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1582
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1583
    invoke-virtual {p2}, Lorg/jdom/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printString(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 839
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_1

    .line 840
    invoke-static {p2}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 845
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lorg/jdom/output/XMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 838
    return-void

    .line 842
    :cond_1
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v0, v1, :cond_0

    .line 843
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private printTextRange(Ljava/io/Writer;Ljava/util/List;II)V
    .locals 7
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "content"    # Ljava/util/List;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    const/4 v3, 0x0

    .line 1041
    .local v3, "previous":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result p3

    .line 1043
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 1044
    .local v4, "size":I
    if-ge p3, v4, :cond_0

    .line 1046
    invoke-direct {p0, p2, p4}, Lorg/jdom/output/XMLOutputter;->skipTrailingWhite(Ljava/util/List;I)I

    move-result p4

    .line 1048
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-lt v0, p4, :cond_1

    .line 1032
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1049
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1053
    .local v2, "node":Ljava/lang/Object;
    instance-of v5, v2, Lorg/jdom/Text;

    if-eqz v5, :cond_3

    move-object v5, v2

    .line 1054
    check-cast v5, Lorg/jdom/Text;

    invoke-virtual {v5}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "next":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1048
    .end local v2    # "node":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    .end local v1    # "next":Ljava/lang/String;
    .restart local v2    # "node":Ljava/lang/Object;
    :cond_3
    instance-of v5, v2, Lorg/jdom/EntityRef;

    if-eqz v5, :cond_4

    .line 1057
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v5, "&"

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Lorg/jdom/EntityRef;

    invoke-virtual {v5}, Lorg/jdom/EntityRef;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1056
    .restart local v1    # "next":Ljava/lang/String;
    goto :goto_1

    .line 1060
    .end local v1    # "next":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Should see only CDATA, Text, or EntityRef"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1071
    .restart local v1    # "next":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_8

    .line 1072
    iget-object v5, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v5, v5, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v6, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v5, v6, :cond_6

    .line 1073
    iget-object v5, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v5, v5, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v6, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v5, v6, :cond_8

    .line 1074
    :cond_6
    invoke-direct {p0, v3}, Lorg/jdom/output/XMLOutputter;->endsWithWhite(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1075
    invoke-direct {p0, v1}, Lorg/jdom/output/XMLOutputter;->startsWithWhite(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1076
    :cond_7
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1082
    :cond_8
    instance-of v5, v2, Lorg/jdom/CDATA;

    if-eqz v5, :cond_9

    .line 1083
    check-cast v2, Lorg/jdom/CDATA;

    .end local v2    # "node":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V

    .line 1092
    :goto_3
    move-object v3, v1

    goto :goto_2

    .line 1085
    .restart local v2    # "node":Ljava/lang/Object;
    :cond_9
    instance-of v5, v2, Lorg/jdom/EntityRef;

    if-eqz v5, :cond_a

    .line 1086
    check-cast v2, Lorg/jdom/EntityRef;

    .end local v2    # "node":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lorg/jdom/output/XMLOutputter;->printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V

    goto :goto_3

    .line 1089
    .restart local v2    # "node":Ljava/lang/Object;
    :cond_a
    invoke-direct {p0, p1, v1}, Lorg/jdom/output/XMLOutputter;->printString(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private skipLeadingWhite(Ljava/util/List;I)I
    .locals 6
    .param p1, "content"    # Ljava/util/List;
    .param p2, "start"    # I

    .prologue
    .line 1226
    if-gez p2, :cond_0

    .line 1227
    const/4 p2, 0x0

    .line 1230
    :cond_0
    move v0, p2

    .line 1231
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1232
    .local v3, "size":I
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v5, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    if-eq v4, v5, :cond_1

    .line 1233
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v5, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v4, v5, :cond_1

    .line 1234
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v5, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v4, v5, :cond_2

    .line 1235
    :cond_1
    :goto_0
    if-lt v0, v3, :cond_3

    :cond_2
    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    move v2, v0

    .line 1242
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    return v2

    .line 1236
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jdom/output/XMLOutputter;->isAllWhitespace(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    move v2, v0

    .line 1237
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 1239
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private skipTrailingWhite(Ljava/util/List;I)I
    .locals 4
    .param p1, "content"    # Ljava/util/List;
    .param p2, "start"    # I

    .prologue
    .line 1250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1251
    .local v1, "size":I
    if-le p2, v1, :cond_0

    .line 1252
    move p2, v1

    .line 1255
    :cond_0
    move v0, p2

    .line 1256
    .local v0, "index":I
    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v3, Lorg/jdom/output/Format$TextMode;->TRIM_FULL_WHITE:Lorg/jdom/output/Format$TextMode;

    if-eq v2, v3, :cond_1

    .line 1257
    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v3, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-eq v2, v3, :cond_1

    .line 1258
    iget-object v2, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v2, v2, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v3, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v2, v3, :cond_2

    .line 1259
    :cond_1
    :goto_0
    if-gez v0, :cond_3

    .line 1265
    :cond_2
    return v0

    .line 1260
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jdom/output/XMLOutputter;->isAllWhitespace(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1262
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private startsWithWhite(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1315
    if-eqz p1, :cond_0

    .line 1316
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1317
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom/output/XMLOutputter;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    const/4 v0, 0x1

    .line 1320
    :cond_0
    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1506
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1509
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1356
    iget-object v5, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v5, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    .line 1358
    .local v4, "strategy":Lorg/jdom/output/EscapeStrategy;
    const/4 v0, 0x0

    .line 1359
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 1421
    if-nez v0, :cond_5

    .end local p1    # "str":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 1360
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1361
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    .line 1389
    invoke-interface {v4, v1}, Lorg/jdom/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1390
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "&#x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1397
    .local v2, "entity":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_3

    .line 1398
    if-eqz v2, :cond_1

    .line 1401
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1404
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1359
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1363
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_0
    const-string v2, "&lt;"

    .line 1364
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1366
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_1
    const-string v2, "&gt;"

    .line 1367
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1374
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_2
    const-string v2, "&quot;"

    .line 1375
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1377
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_3
    const-string v2, "&amp;"

    .line 1378
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1380
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_4
    const-string v2, "&#xD;"

    .line 1381
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1383
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_5
    const-string v2, "&#x9;"

    .line 1384
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1386
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_6
    const-string v2, "&#xA;"

    .line 1387
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1393
    .end local v2    # "entity":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1409
    :cond_3
    if-nez v2, :cond_4

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1413
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1421
    .end local v1    # "ch":C
    .end local v2    # "entity":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1361
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xd -> :sswitch_4
        0x22 -> :sswitch_2
        0x26 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1435
    iget-boolean v5, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    if-nez v5, :cond_1

    .line 1494
    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1440
    .restart local p1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v5, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    .line 1442
    .local v4, "strategy":Lorg/jdom/output/EscapeStrategy;
    const/4 v0, 0x0

    .line 1443
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 1494
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1444
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1445
    .local v1, "ch":C
    sparse-switch v1, :sswitch_data_0

    .line 1462
    invoke-interface {v4, v1}, Lorg/jdom/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1463
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "&#x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1470
    .local v2, "entity":Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_5

    .line 1471
    if-eqz v2, :cond_3

    .line 1474
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1477
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1447
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_0
    const-string v2, "&lt;"

    .line 1448
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1450
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_1
    const-string v2, "&gt;"

    .line 1451
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1453
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_2
    const-string v2, "&amp;"

    .line 1454
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1456
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_3
    const-string v2, "&#xD;"

    .line 1457
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1459
    .end local v2    # "entity":Ljava/lang/String;
    :sswitch_4
    iget-object v5, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v2, v5, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    .line 1460
    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1466
    .end local v2    # "entity":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "entity":Ljava/lang/String;
    goto :goto_2

    .line 1482
    :cond_5
    if-nez v2, :cond_6

    .line 1483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1486
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1445
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public getFormat()Lorg/jdom/output/Format;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    invoke-virtual {v0}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;

    return-object v0
.end method

.method public output(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "list"    # Ljava/util/List;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 258
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V

    .line 255
    return-void
.end method

.method public output(Ljava/util/List;Ljava/io/Writer;)V
    .locals 7
    .param p1, "list"    # Ljava/util/List;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 461
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 462
    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v5, v3

    .line 461
    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 463
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 459
    return-void
.end method

.method public output(Lorg/jdom/CDATA;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "cdata"    # Lorg/jdom/CDATA;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 269
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V

    .line 267
    return-void
.end method

.method public output(Lorg/jdom/CDATA;Ljava/io/Writer;)V
    .locals 0
    .param p1, "cdata"    # Lorg/jdom/CDATA;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V

    .line 474
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 472
    return-void
.end method

.method public output(Lorg/jdom/Comment;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "comment"    # Lorg/jdom/Comment;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 292
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V

    .line 290
    return-void
.end method

.method public output(Lorg/jdom/Comment;Ljava/io/Writer;)V
    .locals 0
    .param p1, "comment"    # Lorg/jdom/Comment;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    .line 497
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 495
    return-void
.end method

.method public output(Lorg/jdom/DocType;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "doctype"    # Lorg/jdom/DocType;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 214
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V

    .line 212
    return-void
.end method

.method public output(Lorg/jdom/DocType;Ljava/io/Writer;)V
    .locals 0
    .param p1, "doctype"    # Lorg/jdom/DocType;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V

    .line 414
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 412
    return-void
.end method

.method public output(Lorg/jdom/Document;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "doc"    # Lorg/jdom/Document;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 203
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V

    .line 200
    return-void
.end method

.method public output(Lorg/jdom/Document;Ljava/io/Writer;)V
    .locals 7
    .param p1, "doc"    # Lorg/jdom/Document;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 364
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, v4}, Lorg/jdom/output/XMLOutputter;->printDeclaration(Ljava/io/Writer;Lorg/jdom/Document;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lorg/jdom/Document;->getContent()Ljava/util/List;

    move-result-object v0

    .line 370
    .local v0, "content":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 371
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 401
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 362
    return-void

    .line 372
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 374
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lorg/jdom/Element;

    if-eqz v4, :cond_2

    .line 375
    invoke-virtual {p1}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object v4

    .line 376
    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v5

    .line 375
    invoke-virtual {p0, p2, v4, v6, v5}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 395
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 396
    invoke-direct {p0, p2, v6}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Lorg/jdom/Comment;

    if-eqz v4, :cond_3

    .line 379
    check-cast v2, Lorg/jdom/Comment;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2, v2}, Lorg/jdom/output/XMLOutputter;->printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V

    goto :goto_1

    .line 381
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Lorg/jdom/ProcessingInstruction;

    if-eqz v4, :cond_4

    .line 382
    check-cast v2, Lorg/jdom/ProcessingInstruction;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2, v2}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    goto :goto_1

    .line 384
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Lorg/jdom/DocType;

    if-eqz v4, :cond_1

    .line 385
    invoke-virtual {p1}, Lorg/jdom/Document;->getDocType()Lorg/jdom/DocType;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lorg/jdom/output/XMLOutputter;->printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V

    .line 388
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public output(Lorg/jdom/Element;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 227
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V

    .line 225
    return-void
.end method

.method public output(Lorg/jdom/Element;Ljava/io/Writer;)V
    .locals 2
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lorg/jdom/output/XMLOutputter;->printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 429
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 425
    return-void
.end method

.method public output(Lorg/jdom/EntityRef;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "entity"    # Lorg/jdom/EntityRef;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 315
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V

    .line 313
    return-void
.end method

.method public output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V
    .locals 0
    .param p1, "entity"    # Lorg/jdom/EntityRef;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V

    .line 526
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 524
    return-void
.end method

.method public output(Lorg/jdom/ProcessingInstruction;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "pi"    # Lorg/jdom/ProcessingInstruction;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 304
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V

    .line 301
    return-void
.end method

.method public output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V
    .locals 3
    .param p1, "pi"    # Lorg/jdom/ProcessingInstruction;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v0, v1, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 511
    .local v0, "currentEscapingPolicy":Z
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jdom/output/Format;->setIgnoreTrAXEscapingPIs(Z)V

    .line 512
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V

    .line 513
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    invoke-virtual {v1, v0}, Lorg/jdom/output/Format;->setIgnoreTrAXEscapingPIs(Z)V

    .line 515
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 506
    return-void
.end method

.method public output(Lorg/jdom/Text;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "text"    # Lorg/jdom/Text;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 281
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V

    .line 279
    return-void
.end method

.method public output(Lorg/jdom/Text;Ljava/io/Writer;)V
    .locals 0
    .param p1, "text"    # Lorg/jdom/Text;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0, p2, p1}, Lorg/jdom/output/XMLOutputter;->printText(Ljava/io/Writer;Lorg/jdom/Text;)V

    .line 486
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 484
    return-void
.end method

.method public outputElementContent(Lorg/jdom/Element;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p2}, Lorg/jdom/output/XMLOutputter;->makeWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 243
    .local v0, "writer":Ljava/io/Writer;
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->outputElementContent(Lorg/jdom/Element;Ljava/io/Writer;)V

    .line 240
    return-void
.end method

.method public outputElementContent(Lorg/jdom/Element;Ljava/io/Writer;)V
    .locals 7
    .param p1, "element"    # Lorg/jdom/Element;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    .line 445
    .local v2, "content":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 446
    invoke-direct {p0}, Lorg/jdom/output/XMLOutputter;->createNamespaceStack()Lorg/jdom/output/XMLOutputter$NamespaceStack;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move v5, v3

    .line 445
    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 447
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 442
    return-void
.end method

.method public outputString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 584
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 585
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Ljava/util/List;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/CDATA;)Ljava/lang/String;
    .locals 2
    .param p1, "cdata"    # Lorg/jdom/CDATA;

    .prologue
    .line 599
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 600
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/CDATA;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/Comment;)Ljava/lang/String;
    .locals 2
    .param p1, "comment"    # Lorg/jdom/Comment;

    .prologue
    .line 630
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 631
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Comment;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/DocType;)Ljava/lang/String;
    .locals 2
    .param p1, "doctype"    # Lorg/jdom/DocType;

    .prologue
    .line 555
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 556
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/DocType;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/Document;)Ljava/lang/String;
    .locals 2
    .param p1, "doc"    # Lorg/jdom/Document;

    .prologue
    .line 540
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 541
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/Element;)Ljava/lang/String;
    .locals 2
    .param p1, "element"    # Lorg/jdom/Element;

    .prologue
    .line 570
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 571
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Element;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/EntityRef;)Ljava/lang/String;
    .locals 2
    .param p1, "entity"    # Lorg/jdom/EntityRef;

    .prologue
    .line 660
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 661
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/EntityRef;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/ProcessingInstruction;)Ljava/lang/String;
    .locals 2
    .param p1, "pi"    # Lorg/jdom/ProcessingInstruction;

    .prologue
    .line 645
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 646
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/ProcessingInstruction;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public outputString(Lorg/jdom/Text;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Lorg/jdom/Text;

    .prologue
    .line 614
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 615
    .local v0, "out":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Text;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected printAttributes(Ljava/io/Writer;Ljava/util/List;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "attributes"    # Ljava/util/List;
    .param p3, "parent"    # Lorg/jdom/Element;
    .param p4, "namespaces"    # Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 1132
    return-void

    .line 1142
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Attribute;

    .line 1143
    .local v0, "attribute":Lorg/jdom/Attribute;
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getNamespace()Lorg/jdom/Namespace;

    move-result-object v2

    .line 1144
    .local v2, "ns":Lorg/jdom/Namespace;
    sget-object v3, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v2, v3, :cond_1

    .line 1145
    sget-object v3, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    if-eq v2, v3, :cond_1

    .line 1146
    invoke-direct {p0, p1, v2, p4}, Lorg/jdom/output/XMLOutputter;->printNamespace(Ljava/io/Writer;Lorg/jdom/Namespace;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 1149
    :cond_1
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1150
    invoke-direct {p0, p1, v0}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Attribute;)V

    .line 1151
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1153
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jdom/output/XMLOutputter;->escapeAttributeEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1155
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected printCDATA(Ljava/io/Writer;Lorg/jdom/CDATA;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "cdata"    # Lorg/jdom/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v1, v2, :cond_0

    .line 812
    invoke-virtual {p2}, Lorg/jdom/Text;->getTextNormalize()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "str":Ljava/lang/String;
    :goto_0
    const-string v1, "<![CDATA["

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 817
    const-string v1, "]]>"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 810
    return-void

    .line 813
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v1, v2, :cond_1

    .line 814
    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected printComment(Ljava/io/Writer;Lorg/jdom/Comment;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "comment"    # Lorg/jdom/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Lorg/jdom/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 746
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method protected printDeclaration(Ljava/io/Writer;Lorg/jdom/Document;Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "doc"    # Lorg/jdom/Document;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v0, v0, Lorg/jdom/output/Format;->omitDeclaration:Z

    if-nez v0, :cond_1

    .line 684
    const-string v0, "<?xml version=\"1.0\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v0, v0, Lorg/jdom/output/Format;->omitEncoding:Z

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " encoding=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 688
    :cond_0
    const-string v0, "?>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v0, v0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 678
    :cond_1
    return-void
.end method

.method protected printDocType(Ljava/io/Writer;Lorg/jdom/DocType;)V
    .locals 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "docType"    # Lorg/jdom/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    invoke-virtual {p2}, Lorg/jdom/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "publicID":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jdom/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "systemID":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    .line 709
    .local v1, "internalSubset":Ljava/lang/String;
    const/4 v0, 0x0

    .line 711
    .local v0, "hasPublic":Z
    const-string v4, "<!DOCTYPE "

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Lorg/jdom/DocType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 713
    if-eqz v2, :cond_0

    .line 714
    const-string v4, " PUBLIC \""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 716
    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x1

    .line 719
    :cond_0
    if-eqz v3, :cond_2

    .line 720
    if-nez v0, :cond_1

    .line 721
    const-string v4, " SYSTEM"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 723
    :cond_1
    const-string v4, " \""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 725
    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 727
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 728
    const-string v4, " ["

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 729
    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Lorg/jdom/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 731
    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 733
    :cond_3
    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method protected printElement(Ljava/io/Writer;Lorg/jdom/Element;ILorg/jdom/output/XMLOutputter$NamespaceStack;)V
    .locals 11
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "element"    # Lorg/jdom/Element;
    .param p3, "level"    # I
    .param p4, "namespaces"    # Lorg/jdom/output/XMLOutputter$NamespaceStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 862
    invoke-virtual {p2}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v7

    .line 863
    .local v7, "attributes":Ljava/util/List;
    invoke-virtual {p2}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    .line 866
    .local v2, "content":Ljava/util/List;
    const/4 v10, 0x0

    .line 867
    .local v10, "space":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 868
    const-string v0, "space"

    .line 869
    sget-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    .line 868
    invoke-virtual {p2, v0, v1}, Lorg/jdom/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom/Namespace;)Ljava/lang/String;

    move-result-object v10

    .line 872
    :cond_0
    iget-object v8, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 874
    .local v8, "previousFormat":Lorg/jdom/output/Format;
    const-string v0, "default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 883
    :cond_1
    :goto_0
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 884
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    .line 887
    invoke-virtual {p4}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v9

    .line 890
    .local v9, "previouslyDeclaredNamespaces":I
    invoke-direct {p0, p1, p2, p4}, Lorg/jdom/output/XMLOutputter;->printElementNamespace(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 893
    invoke-direct {p0, p1, p2, p4}, Lorg/jdom/output/XMLOutputter;->printAdditionalNamespaces(Ljava/io/Writer;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 896
    if-eqz v7, :cond_2

    .line 897
    invoke-virtual {p0, p1, v7, p2, p4}, Lorg/jdom/output/XMLOutputter;->printAttributes(Ljava/io/Writer;Ljava/util/List;Lorg/jdom/Element;Lorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 904
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lorg/jdom/output/XMLOutputter;->skipLeadingWhite(Ljava/util/List;I)I

    move-result v3

    .line 905
    .local v3, "start":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 906
    .local v4, "size":I
    if-lt v3, v4, :cond_5

    .line 908
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v0, v0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    if-eqz v0, :cond_4

    .line 909
    const-string v0, "></"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 910
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    .line 911
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 942
    :goto_1
    invoke-virtual {p4}, Lorg/jdom/output/NamespaceStack;->size()I

    move-result v0

    if-gt v0, v9, :cond_7

    .line 947
    iput-object v8, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 858
    return-void

    .line 877
    .end local v3    # "start":I
    .end local v4    # "size":I
    .end local v9    # "previouslyDeclaredNamespaces":I
    :cond_3
    const-string v0, "preserve"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    sget-object v0, Lorg/jdom/output/XMLOutputter;->preserveFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    goto :goto_0

    .line 914
    .restart local v3    # "start":I
    .restart local v4    # "size":I
    .restart local v9    # "previouslyDeclaredNamespaces":I
    :cond_4
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 918
    :cond_5
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 924
    invoke-static {v2, v3}, Lorg/jdom/output/XMLOutputter;->nextNonText(Ljava/util/List;I)I

    move-result v0

    if-ge v0, v4, :cond_6

    .line 926
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 928
    add-int/lit8 v5, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    .line 927
    invoke-direct/range {v0 .. v6}, Lorg/jdom/output/XMLOutputter;->printContentRange(Ljava/io/Writer;Ljava/util/List;IIILorg/jdom/output/XMLOutputter$NamespaceStack;)V

    .line 929
    invoke-direct {p0, p1}, Lorg/jdom/output/XMLOutputter;->newline(Ljava/io/Writer;)V

    .line 930
    invoke-direct {p0, p1, p3}, Lorg/jdom/output/XMLOutputter;->indent(Ljava/io/Writer;I)V

    .line 936
    :goto_2
    const-string v0, "</"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, p1, p2}, Lorg/jdom/output/XMLOutputter;->printQualifiedName(Ljava/io/Writer;Lorg/jdom/Element;)V

    .line 938
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 934
    :cond_6
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/jdom/output/XMLOutputter;->printTextRange(Ljava/io/Writer;Ljava/util/List;II)V

    goto :goto_2

    .line 943
    :cond_7
    invoke-virtual {p4}, Lorg/jdom/output/NamespaceStack;->pop()Ljava/lang/String;

    goto :goto_1
.end method

.method protected printEntityRef(Ljava/io/Writer;Lorg/jdom/EntityRef;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "entity"    # Lorg/jdom/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2}, Lorg/jdom/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 801
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method protected printProcessingInstruction(Ljava/io/Writer;Lorg/jdom/ProcessingInstruction;)V
    .locals 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "pi"    # Lorg/jdom/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p2}, Lorg/jdom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x0

    .line 760
    .local v0, "piProcessed":Z
    iget-object v3, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-boolean v3, v3, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    if-nez v3, :cond_0

    .line 761
    const-string v3, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 763
    const/4 v0, 0x1

    .line 770
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 771
    invoke-virtual {p2}, Lorg/jdom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "rawData":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 775
    const-string v3, "<?"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 777
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 779
    const-string v3, "?>"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 755
    .end local v1    # "rawData":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 765
    :cond_2
    const-string v3, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 766
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jdom/output/XMLOutputter;->escapeOutput:Z

    .line 767
    const/4 v0, 0x1

    goto :goto_0

    .line 782
    .restart local v1    # "rawData":Ljava/lang/String;
    :cond_3
    const-string v3, "<?"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 784
    const-string v3, "?>"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected printText(Ljava/io/Writer;Lorg/jdom/Text;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "text"    # Lorg/jdom/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    if-ne v1, v2, :cond_0

    .line 828
    invoke-virtual {p2}, Lorg/jdom/Text;->getTextNormalize()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/jdom/output/XMLOutputter;->escapeElementEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 826
    return-void

    .line 829
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    iget-object v1, v1, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    sget-object v2, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    if-ne v1, v2, :cond_1

    .line 830
    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setFormat(Lorg/jdom/output/Format;)V
    .locals 1
    .param p1, "newFormat"    # Lorg/jdom/output/Format;

    .prologue
    .line 176
    invoke-virtual {p1}, Lorg/jdom/output/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    .line 177
    iget-object v0, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iput-object v0, p0, Lorg/jdom/output/XMLOutputter;->currentFormat:Lorg/jdom/output/Format;

    .line 175
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1525
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1526
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v3, v3, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1541
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "XMLOutputter[omitDeclaration = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v4, v4, Lorg/jdom/output/Format;->omitDeclaration:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1542
    const-string v4, "encoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1543
    const-string v4, "omitEncoding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v4, v4, Lorg/jdom/output/Format;->omitEncoding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1544
    const-string v4, "indent = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1545
    const-string v4, "expandEmptyElements = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-boolean v4, v4, Lorg/jdom/output/Format;->expandEmptyElements:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1546
    const-string v4, "lineSeparator = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1547
    const-string v4, "textMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v4, v4, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1540
    return-object v3

    .line 1527
    :cond_0
    iget-object v3, p0, Lorg/jdom/output/XMLOutputter;->userFormat:Lorg/jdom/output/Format;

    iget-object v3, v3, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1528
    .local v1, "ch":C
    packed-switch v1, :pswitch_data_0

    .line 1535
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1526
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1529
    :pswitch_1
    const-string v3, "\\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1531
    :pswitch_2
    const-string v3, "\\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1533
    :pswitch_3
    const-string v3, "\\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1528
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
