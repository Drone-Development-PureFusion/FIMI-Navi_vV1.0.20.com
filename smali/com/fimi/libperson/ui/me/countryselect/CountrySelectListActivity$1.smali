.class Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$1;
.super Ljava/lang/Object;
.source "CountrySelectListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$1;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity$1;->this$0:Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;

    invoke-static {v0}, Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;->access$000(Lcom/fimi/libperson/ui/me/countryselect/CountrySelectListActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method
