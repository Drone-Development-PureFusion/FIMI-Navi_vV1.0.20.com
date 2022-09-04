.class public Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;
.super Ljava/lang/Thread;
.source "X8FileSeachDeleteThread.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isSeach:Z

.field private mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "mX8B2oxAdapter"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "seachOrDelete"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .line 32
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->handler:Landroid/os/Handler;

    .line 33
    iput-boolean p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->isSeach:Z

    .line 34
    return-void
.end method

.method private deleteFile()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/fimi/x8sdk/util/X8FileHelper;->deleteFiles()V

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->seachFile()V

    .line 51
    return-void
.end method

.method private sortFileOfDate(Ljava/util/List;)V
    .locals 1
    .param p1, "fileList"    # Ljava/util/List;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$3;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 39
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->isSeach:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->seachFile()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->deleteFile()V

    goto :goto_0
.end method

.method public seachFile()V
    .locals 24

    .prologue
    .line 54
    invoke-static {}, Lcom/fimi/x8sdk/util/X8FileHelper;->listDirs()Ljava/util/List;

    move-result-object v11

    .line 55
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->sortFileOfDate(Ljava/util/List;)V

    .line 56
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 57
    const-string v15, "\\d{4}-\\d{2}-\\d{2}"

    .line 58
    .local v15, "regex":Ljava/lang/String;
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 59
    .local v14, "p":Ljava/util/regex/Pattern;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v8, "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v12, "lists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;>;"
    const/16 v18, 0x0

    .line 62
    .local v18, "total":I
    const/4 v5, 0x0

    .line 63
    .local v5, "complete":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 64
    .local v7, "file":Ljava/io/File;
    new-instance v4, Lcom/fimi/app/x8s/entity/X8B2oxFile;

    invoke-direct {v4}, Lcom/fimi/app/x8s/entity/X8B2oxFile;-><init>()V

    .line 65
    .local v4, "b2oxFile":Lcom/fimi/app/x8s/entity/X8B2oxFile;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 66
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 68
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "date":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 70
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    invoke-virtual {v4, v7, v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v16

    .line 74
    .local v16, "ret":Z
    if-eqz v16, :cond_2

    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 77
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 82
    .end local v4    # "b2oxFile":Lcom/fimi/app/x8s/entity/X8B2oxFile;
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    .end local v16    # "ret":Z
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_5

    .line 83
    const/4 v9, 0x0

    .line 85
    .local v9, "i":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 87
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->mX8B2oxAdapter:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    move-object/from16 v21, v0

    new-instance v22, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->addSection(Ljava/lang/String;Lcom/fimi/app/x8s/adapter/section/X8B2oxSection;)V

    move v9, v10

    .line 88
    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_1

    .line 89
    .end local v17    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    .line 96
    .end local v5    # "complete":I
    .end local v8    # "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .end local v12    # "lists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;>;"
    .end local v14    # "p":Ljava/util/regex/Pattern;
    .end local v15    # "regex":Ljava/lang/String;
    .end local v18    # "total":I
    :goto_2
    return-void

    .line 91
    .restart local v5    # "complete":I
    .restart local v8    # "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "lists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;>;"
    .restart local v14    # "p":Ljava/util/regex/Pattern;
    .restart local v15    # "regex":Ljava/lang/String;
    .restart local v18    # "total":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 94
    .end local v5    # "complete":I
    .end local v8    # "groupList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "lists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;>;"
    .end local v14    # "p":Ljava/util/regex/Pattern;
    .end local v15    # "regex":Ljava/lang/String;
    .end local v18    # "total":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/X8B2oxFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/X8B2oxFile;>;"
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    return-void
.end method

.method public sortGroup(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8FileSeachDeleteThread;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    return-void
.end method
