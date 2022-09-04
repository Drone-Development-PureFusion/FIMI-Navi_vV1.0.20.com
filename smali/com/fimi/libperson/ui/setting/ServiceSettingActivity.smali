.class public Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;
.super Lcom/fimi/libperson/BasePersonActivity;
.source "ServiceSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;


# instance fields
.field private adapter:Lcom/fimi/libperson/adapter/ServiceAdapter;

.field private dialogManager:Lcom/fimi/widget/DialogManager;

.field private isSetting:Z

.field private mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

.field private mCountrySelect:Ljava/lang/String;

.field private mCountryType:I

.field private mListView:Landroid/widget/ListView;

.field private mPosition:I

.field private mTitleView:Lcom/fimi/libperson/widget/TitleView;

.field private serviceID:I

.field private serviceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/region/ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fimi/libperson/BasePersonActivity;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mCountryType:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->isSetting:Z

    return-void
.end method

.method static synthetic access$002(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    return-object v0
.end method

.method private getServiceType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "type":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/fimi/kernel/region/ServiceItem;->SERVICECODE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 479
    sget-object v2, Lcom/fimi/kernel/region/ServiceItem;->SERVICECODE:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_1

    .line 480
    sget-object v2, Lcom/fimi/kernel/region/ServiceItem;->SERVICECODE:[I

    aget v1, v2, v0

    .line 484
    :cond_0
    return v1

    .line 478
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onSelectLanguage(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 460
    return-void
.end method


# virtual methods
.method public doTrans()V
    .locals 6

    .prologue
    .line 78
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    new-instance v4, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$1;

    invoke-direct {v4, p0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$1;-><init>(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;)V

    invoke-virtual {v3, v4}, Lcom/fimi/libperson/widget/TitleView;->setIvLeftListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v3

    const-string v4, "service_item_key"

    const-class v5, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v3, v4, v5}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/region/ServiceItem;

    .line 107
    .local v2, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_26

    .line 110
    new-instance v1, Lcom/fimi/kernel/region/ServiceItem;

    invoke-direct {v1}, Lcom/fimi/kernel/region/ServiceItem;-><init>()V

    .line 111
    .local v1, "item":Lcom/fimi/kernel/region/ServiceItem;
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setInfo(I)V

    .line 112
    invoke-static {}, Lcom/fimi/kernel/region/ServiceItem;->getServicename()[I

    move-result-object v3

    aget v3, v3, v0

    iput v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    .line 113
    sget v3, Lcom/fimi/libperson/R$string;->region_Argentina:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_2

    .line 114
    const-string v3, "es"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 115
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v3

    invoke-virtual {v2}, Lcom/fimi/kernel/region/ServiceItem;->getInfo()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 228
    iput v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mPosition:I

    .line 229
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setSelect(Z)V

    .line 231
    :cond_1
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_2
    sget v3, Lcom/fimi/libperson/R$string;->region_United_Arab_Emirates:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_3

    .line 117
    const-string v3, "ar-SA"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 118
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_3
    sget v3, Lcom/fimi/libperson/R$string;->region_The_US:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_4

    .line 120
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 121
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_4
    sget v3, Lcom/fimi/libperson/R$string;->region_other:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_5

    .line 123
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 124
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_5
    sget v3, Lcom/fimi/libperson/R$string;->region_Mexico:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_6

    .line 126
    const-string v3, "es"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 127
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_6
    sget v3, Lcom/fimi/libperson/R$string;->region_Saudi_Arabia:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_7

    .line 129
    const-string v3, "ar-SA"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 130
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_7
    sget v3, Lcom/fimi/libperson/R$string;->region_Iran:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_8

    .line 132
    const-string v3, "fa-IR"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 133
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_8
    sget v3, Lcom/fimi/libperson/R$string;->region_Poland:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_9

    .line 135
    const-string v3, "pl"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 136
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 137
    :cond_9
    sget v3, Lcom/fimi/libperson/R$string;->region_germany:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_a

    .line 138
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 139
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 140
    :cond_a
    sget v3, Lcom/fimi/libperson/R$string;->region_France:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_b

    .line 141
    const-string v3, "fr"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 142
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_b
    sget v3, Lcom/fimi/libperson/R$string;->region_Slovakia:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_c

    .line 144
    const-string v3, "sk-SK"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 145
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    :cond_c
    sget v3, Lcom/fimi/libperson/R$string;->region_Turkey:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_d

    .line 147
    const-string/jumbo v3, "tr-TR"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 148
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    :cond_d
    sget v3, Lcom/fimi/libperson/R$string;->region_Ukraine:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_e

    .line 150
    const-string/jumbo v3, "uk-UA"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 151
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_e
    sget v3, Lcom/fimi/libperson/R$string;->region_Spain:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_f

    .line 153
    const-string v3, "es"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 154
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :cond_f
    sget v3, Lcom/fimi/libperson/R$string;->region_Philippines:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_10

    .line 156
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 157
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    :cond_10
    sget v3, Lcom/fimi/libperson/R$string;->region_Malaysia:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_11

    .line 159
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 160
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    :cond_11
    sget v3, Lcom/fimi/libperson/R$string;->region_Burma:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_12

    .line 162
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 163
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_12
    sget v3, Lcom/fimi/libperson/R$string;->region_Thailand:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_13

    .line 165
    const-string v3, "th-TH"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 166
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    :cond_13
    sget v3, Lcom/fimi/libperson/R$string;->region_Singapore:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_14

    .line 168
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 169
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :cond_14
    sget v3, Lcom/fimi/libperson/R$string;->region_Indonesia:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_15

    .line 171
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 172
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :cond_15
    sget v3, Lcom/fimi/libperson/R$string;->region_Vietnam:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_16

    .line 174
    const-string/jumbo v3, "vi-VN"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 175
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    :cond_16
    sget v3, Lcom/fimi/libperson/R$string;->region_hk:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_17

    .line 177
    const-string/jumbo v3, "tw"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 178
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :cond_17
    sget v3, Lcom/fimi/libperson/R$string;->region_tw:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_18

    .line 180
    const-string v3, "cn"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 181
    const-string v3, "https://paas-beijing6.fimi.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_18
    sget v3, Lcom/fimi/libperson/R$string;->region_Mainland_China:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_19

    .line 183
    const-string v3, "cn"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 184
    const-string v3, "https://paas-beijing6.fimi.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 185
    :cond_19
    sget v3, Lcom/fimi/libperson/R$string;->region_Russia:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_1a

    .line 186
    const-string v3, "ru"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 187
    const-string v3, "https://paas-moscow.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_1a
    sget v3, Lcom/fimi/libperson/R$string;->region_maroc:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_1b

    .line 189
    const-string v3, "ar-SA"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 190
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_1b
    sget v3, Lcom/fimi/libperson/R$string;->region_uk:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_1c

    .line 192
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 193
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :cond_1c
    sget v3, Lcom/fimi/libperson/R$string;->region_italy:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_1d

    .line 195
    const-string v3, "it-IT"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 196
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 197
    :cond_1d
    sget v3, Lcom/fimi/libperson/R$string;->region_israel:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_1e

    .line 198
    const-string v3, "ar-SA"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 199
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 200
    :cond_1e
    sget v3, Lcom/fimi/libperson/R$string;->region_greco:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_1f

    .line 201
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 202
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 203
    :cond_1f
    sget v3, Lcom/fimi/libperson/R$string;->region_japan:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_20

    .line 204
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 205
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :cond_20
    sget v3, Lcom/fimi/libperson/R$string;->region_portugal:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_21

    .line 207
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 208
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_21
    sget v3, Lcom/fimi/libperson/R$string;->region_korea:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_22

    .line 210
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 211
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 212
    :cond_22
    sget v3, Lcom/fimi/libperson/R$string;->region_colombia:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_23

    .line 213
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 214
    const-string v3, "https://fimiservice-newus.mi-ae.com/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :cond_23
    sget v3, Lcom/fimi/libperson/R$string;->region_pakistan:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_24

    .line 216
    const-string v3, "en"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 217
    const-string v3, "https://paas-singapore.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 218
    :cond_24
    sget v3, Lcom/fimi/libperson/R$string;->region_egpyt:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_25

    .line 219
    const-string v3, "ar-SA"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 220
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 221
    :cond_25
    sget v3, Lcom/fimi/libperson/R$string;->region_belarus:I

    iget v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceID:I

    if-ne v3, v4, :cond_0

    .line 222
    const-string v3, "ru"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setCountryCode(Ljava/lang/String;)V

    .line 223
    const-string v3, "https://paas-frankfurt.fimi.com/fimi-cms-web-interface/"

    invoke-virtual {v1, v3}, Lcom/fimi/kernel/region/ServiceItem;->setServiceUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 349
    .end local v1    # "item":Lcom/fimi/kernel/region/ServiceItem;
    :cond_26
    new-instance v3, Lcom/fimi/libperson/adapter/ServiceAdapter;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    invoke-direct {v3, v4, p0}, Lcom/fimi/libperson/adapter/ServiceAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->adapter:Lcom/fimi/libperson/adapter/ServiceAdapter;

    .line 350
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->adapter:Lcom/fimi/libperson/adapter/ServiceAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 351
    iget-object v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 352
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 382
    sget v0, Lcom/fimi/libperson/R$layout;->activity_user_language_setting:I

    return v0
.end method

.method public initData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    sget v1, Lcom/fimi/libperson/R$id;->title_view:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/libperson/widget/TitleView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    .line 54
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1}, Lcom/fimi/libperson/widget/TitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;

    .line 56
    .local v0, "params":Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;
    iget v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->statusBarHeight:I

    iget v2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->marginStatus:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/fimi/kernel/percent/PercentRelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    invoke-virtual {v1, v0}, Lcom/fimi/libperson/widget/TitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    sget v1, Lcom/fimi/libperson/R$id;->lv_l_setting_setting:I

    invoke-virtual {p0, v1}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mListView:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 60
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mTitleView:Lcom/fimi/libperson/widget/TitleView;

    sget v2, Lcom/fimi/libperson/R$string;->libperson_service_select_title:I

    invoke-virtual {p0, v2}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/libperson/widget/TitleView;->setTvTitle(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_setting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->isSetting:Z

    .line 62
    invoke-static {}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->getInstance()Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    .line 63
    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mBitmapLoadTaskInstance:Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;

    invoke-virtual {v1, p0}, Lcom/fimi/libperson/widget/BitmapLoadTaskInstance;->setOnLoadListener(Lcom/fimi/libperson/widget/BitmapLoadTaskInstance$OnLoadListener;)V

    .line 64
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/fimi/libperson/BasePersonActivity;->onBackPressed()V

    .line 69
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    const-class v2, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/kernel/Constants;->isShowUserProtocol:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->finish()V

    .line 73
    return-void
.end method

.method public onComplete()V
    .locals 4

    .prologue
    .line 464
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    const-class v2, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    iget-object v2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    iget v3, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    invoke-static {}, Lcom/fimi/host/HostConstants;->initUrl()V

    .line 471
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "sp_key_user_detail"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/store/shared/SPStoreManager;->removeKey(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string/jumbo v1, "user_protocol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 473
    const-class v0, Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->readyGoThenKillAllActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 387
    iget v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mPosition:I

    if-ne v0, p3, :cond_0

    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    const-class v2, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fimi/kernel/region/ServiceItem;

    .line 391
    .local v6, "serviceItem":Lcom/fimi/kernel/region/ServiceItem;
    iget-boolean v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->isSetting:Z

    if-eqz v0, :cond_3

    .line 392
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    const-class v2, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 393
    invoke-static {}, Lcom/fimi/kernel/store/shared/SPStoreManager;->getInstance()Lcom/fimi/kernel/store/shared/SPStoreManager;

    move-result-object v0

    const-string v1, "service_item_key"

    invoke-virtual {v0, v1, v6}, Lcom/fimi/kernel/store/shared/SPStoreManager;->saveObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    invoke-static {}, Lcom/fimi/host/HostConstants;->initUrl()V

    .line 396
    const-class v0, Lcom/fimi/libperson/ui/me/login/LoginActivity;

    invoke-virtual {p0, v0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->readyGoThenKillAllActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v6}, Lcom/fimi/kernel/region/ServiceItem;->getServiceUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    iget v2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0}, Lcom/fimi/kernel/region/ServiceItem;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mContext:Landroid/content/Context;

    const-string v2, ""

    sget v3, Lcom/fimi/libperson/R$string;->libperson_service_dialog_exit_message:I

    .line 401
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->libperson_service_ok:I

    .line 402
    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$string;->person_setting_dialog_exit_left_text:I

    .line 403
    invoke-virtual {p0, v5}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    .line 411
    :goto_1
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0, v7}, Lcom/fimi/widget/DialogManager;->setVerticalScreen(Z)V

    .line 412
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    new-instance v1, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;

    invoke-direct {v1, p0, p3}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$2;-><init>(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;I)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 424
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    goto :goto_0

    .line 406
    :cond_2
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mContext:Landroid/content/Context;

    const-string v2, ""

    sget v3, Lcom/fimi/libperson/R$string;->libperson_service_dialog_exit_switch_message:I

    .line 407
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->libperson_service_ok:I

    .line 408
    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$string;->person_setting_dialog_exit_left_text:I

    .line 409
    invoke-virtual {p0, v5}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    goto :goto_1

    .line 426
    :cond_3
    invoke-virtual {v6}, Lcom/fimi/kernel/region/ServiceItem;->getServiceUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->serviceItems:Ljava/util/List;

    iget v2, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/region/ServiceItem;

    invoke-virtual {v0}, Lcom/fimi/kernel/region/ServiceItem;->getServiceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mContext:Landroid/content/Context;

    const-string v2, ""

    sget v3, Lcom/fimi/libperson/R$string;->libperson_service_dialog_exit_message:I

    .line 428
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->libperson_service_ok:I

    .line 429
    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$string;->person_setting_dialog_exit_left_text:I

    .line 430
    invoke-virtual {p0, v5}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    .line 438
    :goto_2
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0, v7}, Lcom/fimi/widget/DialogManager;->setVerticalScreen(Z)V

    .line 439
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    new-instance v1, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;

    invoke-direct {v1, p0, p3}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity$3;-><init>(Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;I)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 455
    iget-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    goto/16 :goto_0

    .line 433
    :cond_4
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->mContext:Landroid/content/Context;

    const-string v2, ""

    sget v3, Lcom/fimi/libperson/R$string;->libperson_service_dialog_exit_switch_message:I

    .line 434
    invoke-virtual {p0, v3}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/libperson/R$string;->libperson_service_ok:I

    .line 435
    invoke-virtual {p0, v4}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/fimi/libperson/R$string;->person_setting_dialog_exit_left_text:I

    .line 436
    invoke-virtual {p0, v5}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->dialogManager:Lcom/fimi/widget/DialogManager;

    goto :goto_2
.end method

.method protected setStatusBarColor()V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/fimi/libperson/ui/setting/ServiceSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    return-void
.end method
