.class public Lcom/fimi/kernel/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# static fields
.field public static final ACTION_LOCATION_SOURCE_SETTINGS:I = 0x522

.field public static PERMISSIONS_CAMERA:[Ljava/lang/String; = null

.field public static PERMISSIONS_COARSE_LOCATION:[Ljava/lang/String; = null

.field public static PERMISSIONS_EXTERNAL_STORAGE:[Ljava/lang/String; = null

.field private static PERMISSIONS_INTERNET:[Ljava/lang/String; = null

.field public static PERMISSIONS_RECORD_AUDIO:[Ljava/lang/String; = null

.field public static final REQUEST_ACCESS_COARSE_LOCATION:I = 0x2

.field private static final REQUEST_ACCESS_EXTERNAL_STORAGE:I = 0x4

.field public static final REQUEST_ACCESS_FINE_LOCATION:I = 0x3

.field private static final REQUEST_BLUETOOTH:I = 0x5

.field private static final REQUEST_BLUETOOTH_ADMIN:I = 0x6

.field public static final REQUEST_CAMERA:I = 0x7

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field public static final REQUEST_RECORD_AUDIO:I = 0x8

.field public static final REQUEST_X9_PERMISSIONS:I = 0x9

.field private static final permissionsArray:[Ljava/lang/String;

.field private static permissionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->PERMISSIONS_COARSE_LOCATION:[Ljava/lang/String;

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->PERMISSIONS_EXTERNAL_STORAGE:[Ljava/lang/String;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->PERMISSIONS_CAMERA:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->PERMISSIONS_RECORD_AUDIO:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->PERMISSIONS_INTERNET:[Ljava/lang/String;

    .line 247
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->permissionsArray:[Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fimi/kernel/permission/PermissionManager;->permissionsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRequiredPermission(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 255
    sget-object v2, Lcom/fimi/kernel/permission/PermissionManager;->permissionsArray:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 256
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    sget-object v4, Lcom/fimi/kernel/permission/PermissionManager;->permissionsList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/fimi/kernel/permission/PermissionManager;->permissionsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 261
    sget-object v1, Lcom/fimi/kernel/permission/PermissionManager;->permissionsList:Ljava/util/List;

    sget-object v2, Lcom/fimi/kernel/permission/PermissionManager;->permissionsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 263
    :cond_2
    return-void
.end method

.method public static hasLocaltionPermissions()Z
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x1

    .line 84
    .local v1, "ret":Z
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    :cond_0
    return v1
.end method

.method public static final isLocationEnable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 216
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 217
    const-string v4, "location"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 218
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v4, "network"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 219
    .local v2, "networkProvider":Z
    const-string v4, "gps"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 220
    .local v0, "gpsProvider":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 224
    .end local v0    # "gpsProvider":Z
    .end local v1    # "locationManager":Landroid/location/LocationManager;
    .end local v2    # "networkProvider":Z
    :cond_0
    :goto_0
    return v3

    .restart local v0    # "gpsProvider":Z
    .restart local v1    # "locationManager":Landroid/location/LocationManager;
    .restart local v2    # "networkProvider":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "locationMode":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_2

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v3

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v3, v4

    .line 235
    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v3, v4

    .line 237
    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "location_providers_allowed"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "locationProviders":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private static lacksPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs lacksPermissions([Ljava/lang/String;)Z
    .locals 5
    .param p0, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 201
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 202
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Lcom/fimi/kernel/permission/PermissionManager;->lacksPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    const/4 v1, 0x1

    .line 206
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 201
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static requestBluetoothAdminPermissions()V
    .locals 5

    .prologue
    .line 165
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 173
    :cond_0
    return-void
.end method

.method public static requestBluetoothPermissions()V
    .locals 5

    .prologue
    .line 153
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.BLUETOOTH"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 161
    :cond_0
    return-void
.end method

.method public static requestCameraPermissions()V
    .locals 5

    .prologue
    .line 177
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.CAMERA"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 185
    :cond_0
    return-void
.end method

.method public static requestCoarseLocationPermissions()V
    .locals 5

    .prologue
    .line 72
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 80
    :cond_0
    return-void
.end method

.method public static requestFind_LocationPermissions()V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 133
    :cond_0
    return-void
.end method

.method public static requestNetPermissions()V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/permission/PermissionManager;->PERMISSIONS_INTERNET:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 149
    :cond_0
    return-void
.end method

.method public static requestRecordAudioPermissions()V
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.RECORD_AUDIO"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 197
    :cond_0
    return-void
.end method

.method public static requestStoragePermissions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-static {v1, v2, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 68
    :cond_0
    return-void
.end method

.method public static requestWritePermissions()V
    .locals 5

    .prologue
    .line 110
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 118
    :cond_0
    return-void
.end method

.method public static shouldShowLocaltionPermissions()Z
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/fimi/kernel/base/BaseAppManager;->getInstance()Lcom/fimi/kernel/base/BaseAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/base/BaseAppManager;->getForwardActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
