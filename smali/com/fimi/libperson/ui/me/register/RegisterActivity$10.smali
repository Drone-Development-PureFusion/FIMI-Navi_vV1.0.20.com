.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$10;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/register/RegisterActivity;->OnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$10;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$10;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-virtual {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->finish()V

    .line 335
    return-void
.end method
