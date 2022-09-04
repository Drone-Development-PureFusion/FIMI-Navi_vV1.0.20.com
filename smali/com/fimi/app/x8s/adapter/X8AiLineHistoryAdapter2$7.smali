.class Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$7;
.super Ljava/lang/Object;
.source "X8AiLineHistoryAdapter2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->showEditorDialog(ILcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

.field final synthetic val$dialogEditor:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$7;->this$0:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$7;->val$dialogEditor:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2$7;->val$dialogEditor:Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8EditorCustomDialog;->hideSoftInputFromWindow()V

    .line 333
    return-void
.end method
