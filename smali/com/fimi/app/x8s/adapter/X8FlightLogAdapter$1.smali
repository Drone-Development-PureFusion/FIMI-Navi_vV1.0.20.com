.class Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;
.super Ljava/lang/Object;
.source "X8FlightLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->onBindContentViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IILcom/fimi/app/x8s/adapter/section/X8FlightLogSection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

.field final synthetic val$file:Lcom/fimi/x8sdk/entity/X8FlightLogFile;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->val$file:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->val$file:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->access$202(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Lcom/fimi/x8sdk/entity/X8FlightLogFile;)Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->access$300(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fimi/app/x8s/ui/activity/X8FlightPlaybackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "x8_flightlog_path"

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->val$file:Lcom/fimi/x8sdk/entity/X8FlightLogFile;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->getPlaybackFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$1;->this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    invoke-static {v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->access$300(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
