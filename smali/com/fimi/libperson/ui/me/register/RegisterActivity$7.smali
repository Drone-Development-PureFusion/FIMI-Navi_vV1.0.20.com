.class Lcom/fimi/libperson/ui/me/register/RegisterActivity$7;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 300
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$7;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$7;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0, p2}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$302(Lcom/fimi/libperson/ui/me/register/RegisterActivity;Z)Z

    .line 304
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/register/RegisterActivity$7;->this$0:Lcom/fimi/libperson/ui/me/register/RegisterActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/register/RegisterActivity;->access$700(Lcom/fimi/libperson/ui/me/register/RegisterActivity;)V

    .line 305
    return-void
.end method
