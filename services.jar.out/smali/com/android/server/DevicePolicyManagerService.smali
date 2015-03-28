.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$DeviceOwner;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final DBG:Z = false

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400b0

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 542
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 181
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 543
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    .line 546
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 548
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 553
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 559
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3           #filter:Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .restart local v3       #filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageMonitoringCertificateNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "userId"

    .prologue
    .line 2823
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 2824
    .local v0, ipm:Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2827
    .local v6, ai:Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2829
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2835
    .end local v0           #ipm:Landroid/content/pm/IPackageManager;
    .end local v6           #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 2833
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .parameter "userHandle"

    .prologue
    .line 2809
    if-gez p1, :cond_0

    .line 2810
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2812
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2813
    .local v0, callingUid:I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 2819
    :cond_1
    :goto_0
    return-void

    .line 2814
    :cond_2
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 2815
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getEncryptionStatus()I
    .locals 3

    .prologue
    .line 2622
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, status:Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2624
    const/4 v1, 0x3

    .line 2628
    :goto_0
    return v1

    .line 2625
    :cond_0
    const-string v1, "unencrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2626
    const/4 v1, 0x1

    goto :goto_0

    .line 2628
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .locals 2

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 653
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 654
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    .line 656
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 10
    .parameter "who"
    .parameter "userHandle"

    .prologue
    const-wide/16 v6, 0x0

    .line 1519
    if-eqz p1, :cond_1

    .line 1520
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1521
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1534
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    :goto_0
    return-wide v6

    .line 1524
    :cond_1
    const-wide/16 v4, 0x0

    .line 1525
    .local v4, timeout:J
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1526
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1527
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1528
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1529
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 1531
    :cond_2
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1527
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    move-wide v6, v4

    .line 1534
    goto :goto_0
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 661
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 662
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 664
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .locals 7
    .parameter "userHandle"

    .prologue
    .line 515
    const/4 v4, 0x0

    .line 517
    .local v4, removed:Z
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 518
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 519
    .local v2, pm:Landroid/content/pm/IPackageManager;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 520
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 522
    .local v0, aa:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_start_0
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 524
    :cond_0
    const/4 v4, 0x1

    .line 525
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 526
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 532
    .end local v0           #aa:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    if-eqz v4, :cond_3

    .line 533
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 534
    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 535
    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 537
    :cond_3
    return-void

    .line 528
    .restart local v0       #aa:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 11
    .parameter "policy"

    .prologue
    const-wide/16 v9, 0x0

    .line 1109
    monitor-enter p0

    .line 1110
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1111
    .local v3, now:J
    iget-object v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1112
    .local v0, N:I
    if-gtz v0, :cond_0

    .line 1113
    monitor-exit p0

    .line 1126
    :goto_0
    return-void

    .line 1115
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1116
    iget-object v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1117
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    iget-wide v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v7, 0x19bfcc00

    sub-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 1121
    const-string v5, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v5}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1115
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1124
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1125
    monitor-exit p0

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #now:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2804
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 2612
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 2115
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2116
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 18
    .parameter "policy"
    .parameter "userHandle"

    .prologue
    .line 922
    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v6

    .line 923
    .local v6, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v10, 0x0

    .line 924
    .local v10, stream:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v5

    .line 926
    .local v5, file:Ljava/io/File;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 927
    .end local v10           #stream:Ljava/io/FileInputStream;
    .local v11, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 928
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v9, v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 932
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v15, 0x1

    if-eq v13, v15, :cond_1

    const/4 v15, 0x2

    if-ne v13, v15, :cond_0

    .line 934
    :cond_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 935
    .local v12, tag:Ljava/lang/String;
    const-string v15, "policies"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 936
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Settings do not start with policies tag: found "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 998
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 999
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v4, e:Ljava/lang/NullPointerException;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_0
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    .end local v4           #e:Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v10, :cond_2

    .line 1013
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1023
    :cond_2
    :goto_2
    new-instance v14, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1024
    .local v14, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 1025
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Active password quality 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " does not match actual quality 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1030
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1031
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1032
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1033
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1034
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1035
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1036
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1039
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1040
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1041
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1042
    return-void

    .line 939
    .end local v10           #stream:Ljava/io/FileInputStream;
    .end local v14           #utils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_4
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .line 940
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 942
    .local v8, outerDepth:I
    :cond_5
    :goto_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_b

    const/4 v15, 0x3

    if-ne v13, v15, :cond_6

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-le v15, v8, :cond_b

    .line 943
    :cond_6
    const/4 v15, 0x3

    if-eq v13, v15, :cond_5

    const/4 v15, 0x4

    if-eq v13, v15, :cond_5

    .line 946
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 947
    const-string v15, "admin"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 948
    const/4 v15, 0x0

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v7

    .line 950
    .local v7, name:Ljava/lang/String;
    :try_start_4
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    .line 958
    .local v3, dai:Landroid/app/admin/DeviceAdminInfo;
    if-eqz v3, :cond_5

    .line 959
    new-instance v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v2, v3}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 960
    .local v2, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v2, v9}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 961
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v0, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    .line 964
    .end local v2           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3           #dai:Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v4

    .line 965
    .local v4, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed loading admin "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    .line 1000
    .end local v4           #e:Ljava/lang/RuntimeException;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_2
    move-exception v4

    move-object v10, v11

    .line 1001
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v4, e:Ljava/lang/NumberFormatException;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_4
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 967
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_7
    :try_start_6
    const-string v15, "failed-password-attempts"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 968
    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 970
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 1002
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_3
    move-exception v4

    move-object v10, v11

    .line 1003
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_5
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 971
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_8
    :try_start_7
    const-string v15, "password-owner"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 972
    const/4 v15, 0x0

    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 974
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1004
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_4
    move-exception v15

    move-object v10, v11

    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 975
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_9
    const-string v15, "active-password"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 976
    const/4 v15, 0x0

    const-string v16, "quality"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 978
    const/4 v15, 0x0

    const-string v16, "length"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 980
    const/4 v15, 0x0

    const-string v16, "uppercase"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 982
    const/4 v15, 0x0

    const-string v16, "lowercase"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 984
    const/4 v15, 0x0

    const-string v16, "letters"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 986
    const/4 v15, 0x0

    const-string v16, "numeric"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 988
    const/4 v15, 0x0

    const-string v16, "symbols"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 990
    const/4 v15, 0x0

    const-string v16, "nonletter"

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    iput v15, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 992
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .line 1006
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_5
    move-exception v4

    move-object v10, v11

    .line 1007
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v4, e:Ljava/io/IOException;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_6
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 994
    .end local v4           #e:Ljava/io/IOException;
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_a
    :try_start_8
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown tag: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 1008
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_6
    move-exception v4

    move-object v10, v11

    .line 1009
    .end local v11           #stream:Ljava/io/FileInputStream;
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :goto_7
    const-string v15, "DevicePolicyManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v10           #stream:Ljava/io/FileInputStream;
    .restart local v8       #outerDepth:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #stream:Ljava/io/FileInputStream;
    .restart local v12       #tag:Ljava/lang/String;
    .restart local v13       #type:I
    :cond_b
    move-object v10, v11

    .line 1010
    .end local v11           #stream:Ljava/io/FileInputStream;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1015
    .end local v8           #outerDepth:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #tag:Ljava/lang/String;
    .end local v13           #type:I
    :catch_7
    move-exception v15

    goto/16 :goto_2

    .line 1008
    :catch_8
    move-exception v4

    goto :goto_7

    .line 1006
    :catch_9
    move-exception v4

    goto :goto_6

    .line 1004
    :catch_a
    move-exception v15

    goto/16 :goto_1

    .line 1002
    :catch_b
    move-exception v4

    goto/16 :goto_5

    .line 1000
    :catch_c
    move-exception v4

    goto/16 :goto_4

    .line 998
    :catch_d
    move-exception v4

    goto/16 :goto_0
.end method

.method private lockNowUnchecked()V
    .locals 6

    .prologue
    .line 2101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2104
    .local v0, ident:J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    .line 2107
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2112
    return-void

    .line 2110
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2108
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .parameter "userHandle"

    .prologue
    .line 833
    if-nez p0, :cond_0

    const-string v0, "/data/system/device_policies.xml"

    .line 837
    .local v0, base:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 833
    .end local v0           #base:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private manageMonitoringCertificateNotification(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 1129
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    .line 1131
    .local v12, notificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v8

    .line 1132
    .local v8, hasCert:Z
    if-nez v8, :cond_0

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1135
    .local v15, um:Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1136
    .local v16, user:Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10400b0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 1142
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #um:Landroid/os/UserManager;
    .end local v16           #user:Landroid/content/pm/UserInfo;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 1145
    .local v10, isManaged:Z
    :goto_1
    if-eqz v10, :cond_2

    .line 1146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400b2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, contentText:Ljava/lang/String;
    const v14, 0x108070d

    .line 1154
    .local v14, smallIconId:I
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v1, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v3, dialogIntent:Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1156
    const-string v1, "com.android.settings"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x800

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1162
    .local v13, notifyIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10400b0

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    .line 1173
    .local v11, noti:Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 1175
    .restart local v15       #um:Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 1176
    .restart local v16       #user:Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    const v2, 0x10400b0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 1142
    .end local v3           #dialogIntent:Landroid/content/Intent;
    .end local v7           #contentText:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isManaged:Z
    .end local v11           #noti:Landroid/app/Notification;
    .end local v13           #notifyIntent:Landroid/app/PendingIntent;
    .end local v14           #smallIconId:I
    .end local v15           #um:Landroid/os/UserManager;
    .end local v16           #user:Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1150
    .restart local v10       #isManaged:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10400b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1151
    .restart local v7       #contentText:Ljava/lang/String;
    const v14, 0x108008a

    .restart local v14       #smallIconId:I
    goto/16 :goto_2

    .line 1180
    .restart local v3       #dialogIntent:Landroid/content/Intent;
    .restart local v11       #noti:Landroid/app/Notification;
    .restart local v13       #notifyIntent:Landroid/app/PendingIntent;
    :cond_3
    const/4 v1, 0x0

    const v2, 0x10400b0

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v1, v2, v11, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1183
    .end local v3           #dialogIntent:Landroid/content/Intent;
    .end local v7           #contentText:Ljava/lang/String;
    .end local v10           #isManaged:Z
    .end local v11           #noti:Landroid/app/Notification;
    .end local v13           #notifyIntent:Landroid/app/PendingIntent;
    .end local v14           #smallIconId:I
    :cond_4
    return-void
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .parameter "certBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2153
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2154
    .local v0, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .parameter "policy"

    .prologue
    const/4 v4, 0x0

    .line 2467
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2468
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2469
    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2470
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    .line 2471
    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .line 2468
    .restart local v1       #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2476
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "proxySpec"
    .parameter "exclusionList"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2480
    if-nez p2, :cond_0

    .line 2481
    const-string p2, ""

    .line 2483
    :cond_0
    if-nez p1, :cond_1

    .line 2484
    const-string p1, ""

    .line 2487
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2488
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2489
    .local v0, data:[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 2490
    .local v1, proxyPort:I
    array-length v4, v0

    if-le v4, v6, :cond_2

    .line 2492
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2495
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2496
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2498
    .local v3, res:Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2499
    .local v2, proxyProperties:Landroid/net/ProxyProperties;
    invoke-virtual {v2}, Landroid/net/ProxyProperties;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2500
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyProperties;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :goto_1
    return-void

    .line 2503
    :cond_3
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2504
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2505
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 2493
    .end local v2           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v3           #res:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 12
    .parameter "userHandle"

    .prologue
    .line 841
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 842
    .local v6, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .line 843
    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 845
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 847
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 848
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 850
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 853
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 854
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 855
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    .line 856
    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 857
    const/4 v9, 0x0

    const-string v10, "name"

    iget-object v11, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 859
    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 863
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v9, :cond_2

    .line 864
    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    :cond_2
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v9, :cond_3

    .line 870
    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    :cond_3
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v9, :cond_4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eqz v9, :cond_5

    .line 879
    :cond_4
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    const/4 v9, 0x0

    const-string v10, "quality"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    const/4 v9, 0x0

    const-string v10, "length"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 882
    const/4 v9, 0x0

    const-string v10, "uppercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    const/4 v9, 0x0

    const-string v10, "lowercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    const/4 v9, 0x0

    const-string v10, "letters"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    const/4 v9, 0x0

    const-string v10, "numeric"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 887
    const/4 v9, 0x0

    const-string v10, "symbols"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    const/4 v9, 0x0

    const-string v10, "nonletter"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    :cond_5
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 895
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 896
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 897
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v7, v8

    .line 908
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 898
    :catch_0
    move-exception v2

    .line 900
    .local v2, e:Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_6

    .line 901
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 906
    :cond_6
    :goto_3
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 903
    :catch_1
    move-exception v9

    goto :goto_3

    .line 898
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .parameter "userHandle"

    .prologue
    .line 911
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 915
    .local v0, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 919
    return-void

    .line 917
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .parameter "encrypt"

    .prologue
    .line 2636
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 12
    .parameter "userHandle"

    .prologue
    const-wide/16 v8, 0x0

    .line 2325
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2326
    .local v5, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2327
    .local v0, N:I
    if-lez v0, :cond_3

    .line 2328
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 2329
    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2330
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2331
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2332
    .local v6, timeout:J
    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    .line 2333
    .local v2, expiration:J
    :goto_1
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2328
    .end local v2           #expiration:J
    .end local v6           #timeout:J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v6       #timeout:J
    :cond_1
    move-wide v2, v8

    .line 2332
    goto :goto_1

    .line 2336
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v6           #timeout:J
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2338
    .end local v4           #i:I
    :cond_3
    return-void
.end method

.method private validateAdmin(Landroid/content/ComponentName;I)V
    .locals 7
    .parameter "adminName"
    .parameter "userHandle"

    .prologue
    .line 779
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 783
    .local v2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 784
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " do not have ACTION_DEVICE_ADMIN_ENABLED filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 787
    :cond_1
    const/4 v0, 0x0

    .line 788
    .local v0, found:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 789
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 790
    const/4 v0, 0x1

    .line 794
    :cond_2
    if-nez v0, :cond_4

    .line 795
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " do not have ACTION_DEVICE_ADMIN_ENABLED filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 788
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_4
    return-void
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .parameter "quality"

    .prologue
    .line 1045
    sparse-switch p0, :sswitch_data_0

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :sswitch_0
    return-void

    .line 1045
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .locals 2
    .parameter "flags"
    .parameter "userHandle"

    .prologue
    .line 2230
    if-nez p2, :cond_0

    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    .line 2246
    :goto_0
    return-void

    .line 2233
    :cond_0
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2234
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2839
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 2842
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    :goto_0
    return-void

    .line 2848
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2850
    .local v3, p:Landroid/util/Printer;
    monitor-enter p0

    .line 2851
    :try_start_0
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2853
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 2854
    .local v6, userCount:I
    const/4 v5, 0x0

    .local v5, u:I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 2855
    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2856
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2857
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2858
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 2859
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2860
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 2861
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2862
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2858
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2867
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 2854
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2870
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    monitor-exit p0

    goto/16 :goto_0

    .end local v5           #u:I
    .end local v6           #userCount:I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .parameter "adminName"
    .parameter "userHandle"

    .prologue
    const/4 v4, 0x0

    .line 803
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 828
    :goto_0
    return-object v3

    .line 806
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 807
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v2, resolveIntent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 809
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 813
    .local v1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 814
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 818
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->validateAdmin(Landroid/content/ComponentName;I)V

    .line 822
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 825
    goto :goto_0

    .line 826
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 828
    goto/16 :goto_0
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 9
    .parameter "who"
    .parameter "reqPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 688
    .local v2, callingUid:I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 689
    .local v5, userHandle:I
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 690
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    .line 691
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 692
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_0

    .line 693
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 695
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-eq v6, v2, :cond_1

    .line 696
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 699
    :cond_1
    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 700
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not specify uses-policy for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 706
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 707
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 708
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 709
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v6

    if-ne v6, v2, :cond_4

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 710
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_3
    return-object v1

    .line 707
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No active admin owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for policy #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 676
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 677
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    .end local v0           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .parameter "userHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1262
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1276
    :goto_0
    return-object v3

    .line 1265
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1266
    monitor-enter p0

    .line 1267
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1268
    .local v2, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1269
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 1270
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1277
    .end local v0           #N:I
    .end local v2           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1272
    .restart local v0       #N:I
    .restart local v2       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1273
    .local v3, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1274
    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1276
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    const/4 v4, 0x0

    .line 2671
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2689
    :goto_0
    return v4

    .line 2674
    :cond_0
    monitor-enter p0

    .line 2675
    if-eqz p1, :cond_2

    .line 2676
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2677
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2690
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2680
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2682
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2683
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2684
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2685
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_3

    .line 2686
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2683
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2689
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 2
    .parameter "userHandle"

    .prologue
    .line 1830
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1831
    monitor-enter p0

    .line 1834
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1836
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    .line 1837
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2778
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2786
    :goto_0
    return-object v0

    .line 2781
    :cond_0
    monitor-enter p0

    .line 2782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    .line 2783
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2785
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2791
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2800
    :goto_0
    return-object v0

    .line 2794
    :cond_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    monitor-enter p0

    .line 2796
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    .line 2797
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 2799
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .parameter "userHandle"

    .prologue
    const/4 v4, 0x0

    .line 2444
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2463
    :goto_0
    return-object v4

    .line 2447
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2448
    monitor-enter p0

    .line 2449
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2452
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2453
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2454
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2455
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_1

    .line 2458
    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 2461
    .end local v0           #N:I
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    .end local v3           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2453
    .restart local v0       #N:I
    .restart local v1       #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2       #i:I
    .restart local v3       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2461
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    const/4 v4, 0x0

    .line 2720
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2738
    :goto_0
    return v4

    .line 2723
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2724
    monitor-enter p0

    .line 2725
    if-eqz p1, :cond_2

    .line 2726
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2727
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2739
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2731
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2732
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2733
    .local v0, N:I
    const/4 v4, 0x0

    .line 2734
    .local v4, which:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2735
    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2736
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 2734
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2738
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1860
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1861
    const/4 v2, 0x0

    .line 1883
    :goto_0
    return v2

    .line 1863
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1864
    monitor-enter p0

    .line 1865
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1866
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v2, 0x0

    .line 1868
    .local v2, count:I
    if-eqz p1, :cond_2

    .line 1869
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1870
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .end local v2           #count:I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1884
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1873
    .restart local v2       #count:I
    .restart local v4       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1874
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 1875
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1876
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v2, :cond_4

    .line 1877
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1874
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1878
    :cond_4
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_3

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_3

    .line 1880
    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_2

    .line 1883
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 10
    .parameter "who"
    .parameter "userHandle"

    .prologue
    const-wide/16 v6, 0x0

    .line 2060
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 2083
    :goto_0
    return-wide v4

    .line 2063
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2064
    monitor-enter p0

    .line 2065
    const-wide/16 v4, 0x0

    .line 2067
    .local v4, time:J
    if-eqz p1, :cond_2

    .line 2068
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2069
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1
    monitor-exit p0

    move-wide v4, v6

    goto :goto_0

    :cond_1
    move-wide v6, v4

    goto :goto_1

    .line 2072
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2073
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2074
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 2075
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2076
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 2077
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2074
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2078
    :cond_4
    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 2080
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .line 2083
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2084
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1539
    const-wide/16 v0, 0x0

    .line 1543
    :goto_0
    return-wide v0

    .line 1541
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1542
    monitor-enter p0

    .line 1543
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 1544
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 10
    .parameter "who"
    .parameter "userHandle"

    .prologue
    const-wide/16 v6, 0x0

    .line 1490
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    move-wide v4, v6

    .line 1510
    :goto_0
    return-wide v4

    .line 1493
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1494
    monitor-enter p0

    .line 1495
    if-eqz p1, :cond_2

    .line 1496
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1497
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 1511
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-wide v4, v6

    .line 1497
    goto :goto_1

    .line 1500
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const-wide/16 v4, 0x0

    .line 1501
    .local v4, timeout:J
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1502
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1503
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 1504
    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1505
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_4

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    .line 1507
    :cond_3
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1503
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1510
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1432
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1433
    const/4 v3, 0x0

    .line 1452
    :goto_0
    return v3

    .line 1435
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1436
    monitor-enter p0

    .line 1437
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1438
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1440
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1441
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1442
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .end local v3           #length:I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1453
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1445
    .restart local v3       #length:I
    .restart local v4       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1446
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1447
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1448
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_3

    .line 1449
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1446
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1452
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1389
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1390
    const/4 v3, 0x0

    .line 1409
    :goto_0
    return v3

    .line 1392
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1393
    monitor-enter p0

    .line 1394
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1395
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 1397
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1398
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1399
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .end local v3           #length:I
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1410
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1402
    .restart local v3       #length:I
    .restart local v4       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1403
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1404
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1405
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_3

    .line 1406
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1403
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1409
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1649
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1650
    const/4 v3, 0x0

    .line 1669
    :goto_0
    return v3

    .line 1652
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1653
    monitor-enter p0

    .line 1654
    const/4 v3, 0x0

    .line 1656
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1657
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1658
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1661
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1662
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1663
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1664
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1665
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_3

    .line 1666
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1663
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1669
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1670
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1606
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1607
    const/4 v3, 0x0

    .line 1626
    :goto_0
    return v3

    .line 1609
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1610
    monitor-enter p0

    .line 1611
    const/4 v3, 0x0

    .line 1613
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1614
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1615
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1618
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1619
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1620
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1621
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1622
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_3

    .line 1623
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1620
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1626
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1627
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1778
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1779
    const/4 v3, 0x0

    .line 1798
    :goto_0
    return v3

    .line 1781
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1782
    monitor-enter p0

    .line 1783
    const/4 v3, 0x0

    .line 1785
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1786
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1787
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1790
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1791
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1792
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1793
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1794
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_3

    .line 1795
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 1792
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1798
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1799
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1692
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1693
    const/4 v3, 0x0

    .line 1712
    :goto_0
    return v3

    .line 1695
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1696
    monitor-enter p0

    .line 1697
    const/4 v3, 0x0

    .line 1699
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1700
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1701
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1704
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1705
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1706
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1707
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1708
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_3

    .line 1709
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1706
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1712
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1713
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1735
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1736
    const/4 v3, 0x0

    .line 1755
    :goto_0
    return v3

    .line 1738
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1739
    monitor-enter p0

    .line 1740
    const/4 v3, 0x0

    .line 1742
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1743
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1744
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1747
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1748
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1749
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1750
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1751
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_3

    .line 1752
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1749
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1755
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1756
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1566
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1567
    const/4 v3, 0x0

    .line 1586
    :goto_0
    return v3

    .line 1569
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1570
    monitor-enter p0

    .line 1571
    const/4 v3, 0x0

    .line 1573
    .local v3, length:I
    if-eqz p1, :cond_2

    .line 1574
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1575
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1578
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1579
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1580
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1581
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1582
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_3

    .line 1583
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1580
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1586
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1587
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    .line 1346
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1347
    const/4 v3, 0x0

    .line 1366
    :goto_0
    return v3

    .line 1349
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1350
    monitor-enter p0

    .line 1351
    const/4 v3, 0x0

    .line 1352
    .local v3, mode:I
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 1354
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz p1, :cond_2

    .line 1355
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1356
    .local v1, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_1
    monitor-exit p0

    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1

    .line 1359
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1360
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 1361
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1362
    .restart local v1       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_3

    .line 1363
    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1360
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1366
    .end local v1           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1367
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 10
    .parameter "comp"
    .parameter "result"
    .parameter "userHandle"

    .prologue
    const/4 v3, 0x0

    .line 2249
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2278
    :goto_0
    return-void

    .line 2252
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2253
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    monitor-enter p0

    .line 2257
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2258
    .local v9, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    .line 2260
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2263
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 2277
    .end local v9           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2265
    .restart local v9       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2266
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2267
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2277
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2261
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "who"
    .parameter "userHandle"

    .prologue
    const/4 v5, 0x0

    .line 2568
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 2589
    :goto_0
    return v4

    .line 2571
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2572
    monitor-enter p0

    .line 2574
    if-eqz p1, :cond_2

    .line 2576
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2577
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 2590
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move v4, v5

    .line 2577
    goto :goto_1

    .line 2582
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2583
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2584
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 2585
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_3

    .line 2586
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2584
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2589
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .parameter "userHandle"

    .prologue
    .line 2597
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2600
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2601
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .parameter "userHandle"

    .prologue
    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 576
    .local v0, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .end local v0           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 578
    .restart local v0       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 579
    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V

    .line 581
    :cond_0
    monitor-exit p0

    return-object v0

    .line 582
    .end local v0           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .parameter "adminReceiver"
    .parameter "policyId"
    .parameter "userHandle"

    .prologue
    .line 1246
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1247
    const/4 v1, 0x0

    .line 1255
    :goto_0
    return v1

    .line 1249
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1252
    .local v0, administrator:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1253
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    .end local v0           #administrator:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1255
    .restart local v0       #administrator:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public installCaCert([B)Z
    .locals 11
    .parameter "certBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2120
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const/4 v4, 0x0

    .line 2124
    .local v4, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 2125
    .local v1, cert:Ljava/security/cert/X509Certificate;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/security/cert/Certificate;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v8}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 2134
    .local v5, pemCert:[B
    :try_start_1
    iget-object v8, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 2136
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2139
    if-eqz v4, :cond_0

    .line 2140
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2141
    const/4 v4, 0x0

    .line 2148
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v5           #pemCert:[B
    :cond_0
    :goto_0
    return v6

    .line 2126
    :catch_0
    move-exception v0

    .line 2127
    .local v0, ce:Ljava/security/cert/CertificateException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem converting cert"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2128
    goto :goto_0

    .line 2129
    .end local v0           #ce:Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v3

    .line 2130
    .local v3, ioe:Ljava/io/IOException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "Problem reading cert"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 2131
    goto :goto_0

    .line 2139
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    .restart local v5       #pemCert:[B
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_1

    .line 2140
    :try_start_4
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2141
    const/4 v4, 0x0

    .line 2139
    :cond_1
    throw v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2144
    :catch_2
    move-exception v2

    .line 2145
    .local v2, e1:Ljava/lang/InterruptedException;
    const-string v6, "DevicePolicyManagerService"

    const-string v8, "installCaCertsToKeyChain(): "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    move v6, v7

    .line 2148
    goto :goto_0
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 5
    .parameter "userHandle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1803
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 1820
    :goto_0
    return v1

    .line 1806
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1807
    monitor-enter p0

    .line 1808
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 1811
    .local v0, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1813
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_1

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1815
    :cond_1
    monitor-exit p0

    move v1, v2

    goto :goto_0

    .line 1817
    :cond_2
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v4, 0x6

    if-eq v3, v4, :cond_3

    .line 1818
    monitor-exit p0

    goto :goto_0

    .line 1826
    .end local v0           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1820
    .restart local v0       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    :try_start_1
    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v4

    if-lt v3, v4, :cond_4

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .parameter "adminReceiver"
    .parameter "userHandle"

    .prologue
    const/4 v0, 0x0

    .line 1236
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1241
    :goto_0
    return v0

    .line 1239
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1240
    monitor-enter p0

    .line 1241
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 2767
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2771
    :goto_0
    return v0

    .line 2770
    :cond_0
    monitor-enter p0

    .line 2771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2773
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 607
    :cond_0
    monitor-exit p0

    .line 608
    return-void

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    .line 2088
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2098
    :goto_0
    return-void

    .line 2091
    :cond_0
    monitor-enter p0

    .line 2094
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2096
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2097
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .parameter "packageName"
    .parameter "userHandle"

    .prologue
    const/4 v4, 0x0

    .line 1281
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1293
    :goto_0
    return v3

    .line 1284
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1285
    monitor-enter p0

    .line 1286
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1287
    .local v2, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1288
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1289
    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1290
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1294
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1288
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1293
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .parameter "adminReceiver"
    .parameter "userHandle"

    .prologue
    .line 1298
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 1323
    :goto_0
    return-void

    .line 1301
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1302
    monitor-enter p0

    .line 1303
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1304
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1305
    monitor-exit p0

    goto :goto_0

    .line 1322
    .end local v0           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1307
    .restart local v0       #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1309
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1311
    monitor-exit p0

    goto :goto_0

    .line 1313
    :cond_2
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 1318
    .local v1, ident:J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1320
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    monitor-exit p0

    goto :goto_0

    .line 1320
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "adminReceiver"
    .parameter "userHandle"

    .prologue
    .line 750
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 751
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 752
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 775
    :cond_0
    return-void
.end method

.method removeUserData(I)V
    .locals 5
    .parameter "userHandle"

    .prologue
    .line 586
    monitor-enter p0

    .line 587
    if-nez p1, :cond_0

    .line 588
    :try_start_0
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    monitor-exit p0

    .line 600
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    .line 592
    .local v0, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 595
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 597
    .local v1, policyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 598
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-exit p0

    goto :goto_0

    .end local v0           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .end local v1           #policyFile:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 7
    .parameter "userHandle"

    .prologue
    const/4 v6, 0x0

    .line 2341
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2342
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    monitor-enter p0

    .line 2346
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2347
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2349
    .local v0, ident:J
    :try_start_1
    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2350
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2351
    iget-boolean v4, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v4, :cond_1

    .line 2352
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    .line 2353
    .local v2, max:I
    if-lez v2, :cond_0

    iget v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v4, v2, :cond_0

    .line 2354
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V

    .line 2356
    :cond_0
    const-string v4, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2360
    .end local v2           #max:I
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2362
    monitor-exit p0

    .line 2363
    return-void

    .line 2360
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2362
    .end local v0           #ident:J
    .end local v3           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .parameter "userHandle"

    .prologue
    .line 2366
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2367
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    monitor-enter p0

    .line 2371
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2372
    .local v2, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2

    .line 2373
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2375
    .local v0, ident:J
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2376
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2378
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_1

    .line 2379
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2383
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2386
    .end local v0           #ident:J
    :cond_2
    monitor-exit p0

    .line 2387
    return-void

    .line 2383
    .restart local v0       #ident:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2386
    .end local v0           #ident:J
    .end local v2           #policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .locals 31
    .parameter "password"
    .parameter "flags"
    .parameter "userHandle"

    .prologue
    .line 1888
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 1889
    const/16 v28, 0x0

    .line 2008
    :goto_0
    return v28

    .line 1891
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1893
    monitor-enter p0

    .line 1896
    const/16 v28, 0x0

    const/16 v29, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1898
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v23

    .line 1899
    .local v23, quality:I
    if-eqz v23, :cond_2

    .line 1900
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 1901
    .local v24, realQuality:I
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    const/high16 v28, 0x6

    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1903
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: password quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required quality 0x"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/16 v28, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1981
    .end local v23           #quality:I
    .end local v24           #realQuality:I
    :catchall_0
    move-exception v28

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 1909
    .restart local v23       #quality:I
    .restart local v24       #realQuality:I
    :cond_1
    :try_start_1
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 1911
    .end local v24           #realQuality:I
    :cond_2
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v10

    .line 1912
    .local v10, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v0, v10, :cond_3

    .line 1913
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: password length "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required length "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1917
    :cond_3
    const/high16 v28, 0x6

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 1918
    const/4 v11, 0x0

    .line 1919
    .local v11, letters:I
    const/16 v26, 0x0

    .line 1920
    .local v26, uppercase:I
    const/4 v12, 0x0

    .line 1921
    .local v12, lowercase:I
    const/16 v21, 0x0

    .line 1922
    .local v21, numbers:I
    const/16 v25, 0x0

    .line 1923
    .local v25, symbols:I
    const/16 v20, 0x0

    .line 1924
    .local v20, nonletter:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_7

    .line 1925
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1926
    .local v5, c:C
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v5, v0, :cond_4

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v5, v0, :cond_4

    .line 1927
    add-int/lit8 v11, v11, 0x1

    .line 1928
    add-int/lit8 v26, v26, 0x1

    .line 1924
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1929
    :cond_4
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v5, v0, :cond_5

    const/16 v28, 0x7a

    move/from16 v0, v28

    if-gt v5, v0, :cond_5

    .line 1930
    add-int/lit8 v11, v11, 0x1

    .line 1931
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1932
    :cond_5
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v5, v0, :cond_6

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v5, v0, :cond_6

    .line 1933
    add-int/lit8 v21, v21, 0x1

    .line 1934
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1936
    :cond_6
    add-int/lit8 v25, v25, 0x1

    .line 1937
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1940
    .end local v5           #c:C
    :cond_7
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v13

    .line 1941
    .local v13, neededLetters:I
    if-ge v11, v13, :cond_8

    .line 1942
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1946
    :cond_8
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v16

    .line 1947
    .local v16, neededNumbers:I
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 1948
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of numerical digits "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of numerical digits "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1953
    :cond_9
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v14

    .line 1954
    .local v14, neededLowerCase:I
    if-ge v12, v14, :cond_a

    .line 1955
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of lowercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1960
    :cond_a
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v18

    .line 1961
    .local v18, neededUpperCase:I
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 1962
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of uppercase letters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1967
    :cond_b
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v17

    .line 1968
    .local v17, neededSymbols:I
    move/from16 v0, v25

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 1969
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of special symbols "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of special symbols "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1973
    :cond_c
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v15

    .line 1974
    .local v15, neededNonLetter:I
    move/from16 v0, v20

    if-ge v0, v15, :cond_d

    .line 1975
    const-string v28, "DevicePolicyManagerService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " does not meet required number of non-letter characters "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/16 v28, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 1981
    .end local v7           #i:I
    .end local v11           #letters:I
    .end local v12           #lowercase:I
    .end local v13           #neededLetters:I
    .end local v14           #neededLowerCase:I
    .end local v15           #neededNonLetter:I
    .end local v16           #neededNumbers:I
    .end local v17           #neededSymbols:I
    .end local v18           #neededUpperCase:I
    .end local v20           #nonletter:I
    .end local v21           #numbers:I
    .end local v25           #symbols:I
    .end local v26           #uppercase:I
    :cond_d
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1984
    .local v6, callingUid:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v22

    .line 1985
    .local v22, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    if-ltz v28, :cond_e

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v6, :cond_e

    .line 1986
    const-string v28, "DevicePolicyManagerService"

    const-string v29, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1992
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1994
    .local v8, ident:J
    :try_start_2
    new-instance v27, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1995
    .local v27, utils:Lcom/android/internal/widget/LockPatternUtils;
    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v28

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 1996
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1997
    and-int/lit8 v28, p2, 0x1

    if-eqz v28, :cond_10

    move/from16 v19, v6

    .line 1999
    .local v19, newOwner:I
    :goto_3
    :try_start_3
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 2000
    move/from16 v0, v19

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2001
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2003
    :cond_f
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2005
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2008
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 1997
    .end local v19           #newOwner:I
    :cond_10
    const/16 v19, -0x1

    goto :goto_3

    .line 2003
    .restart local v19       #newOwner:I
    :catchall_1
    move-exception v28

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2005
    .end local v19           #newOwner:I
    .end local v27           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :catchall_2
    move-exception v28

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v28
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .parameter "admin"
    .parameter "action"

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 720
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .parameter "admin"
    .parameter "action"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 723
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, intent:Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 725
    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 728
    :cond_0
    if-eqz p3, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .parameter "action"
    .parameter "reqPolicy"
    .parameter "userHandle"

    .prologue
    .line 737
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 738
    .local v3, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 739
    .local v1, count:I
    if-lez v1, :cond_1

    .line 740
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 741
    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 742
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 740
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v0           #admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 12
    .parameter "adminReceiver"
    .parameter "refreshing"
    .parameter "userHandle"

    .prologue
    .line 1190
    iget-boolean v9, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v9, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1197
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1198
    .local v7, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1199
    .local v4, info:Landroid/app/admin/DeviceAdminInfo;
    if-nez v4, :cond_1

    .line 1200
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1202
    :cond_1
    monitor-enter p0

    .line 1203
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1205
    .local v2, ident:J
    if-nez p2, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1206
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 1232
    .end local v2           #ident:J
    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 1208
    .restart local v2       #ident:J
    :cond_2
    :try_start_3
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1209
    .local v5, newAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const/4 v8, -0x1

    .line 1211
    .local v8, replaceIndex:I
    if-eqz p2, :cond_3

    .line 1212
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1213
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1214
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1215
    .local v6, oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1216
    move v8, v1

    .line 1221
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 1222
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1227
    :goto_2
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1228
    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1230
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1232
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .line 1213
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v6       #oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1225
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #oldAdmin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :cond_5
    :try_start_5
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .locals 6
    .parameter "quality"
    .parameter "length"
    .parameter "letters"
    .parameter "uppercase"
    .parameter "lowercase"
    .parameter "numbers"
    .parameter "symbols"
    .parameter "nonletter"
    .parameter "userHandle"

    .prologue
    .line 2282
    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2285
    :cond_0
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2286
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2290
    .local v2, p:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 2292
    monitor-enter p0

    .line 2293
    :try_start_0
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_1

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_2

    .line 2298
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2300
    .local v0, ident:J
    :try_start_1
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 2301
    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 2302
    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 2303
    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 2304
    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 2305
    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 2306
    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 2307
    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 2308
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 2309
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2310
    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 2311
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2312
    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2315
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2318
    .end local v0           #ident:J
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2315
    .restart local v0       #ident:J
    :catchall_1
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .locals 3
    .parameter "who"
    .parameter "disabled"
    .parameter "userHandle"

    .prologue
    .line 2648
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2664
    :goto_0
    return-void

    .line 2651
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2652
    monitor-enter p0

    .line 2653
    if-nez p1, :cond_1

    .line 2654
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2663
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2656
    :cond_1
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2658
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_2

    .line 2659
    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 2660
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2662
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2663
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"
    .parameter "ownerName"

    .prologue
    .line 2744
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2745
    const/4 v0, 0x0

    .line 2756
    :goto_0
    return v0

    .line 2747
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2749
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2752
    :cond_2
    monitor-enter p0

    .line 2753
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2754
    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1, p2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    .line 2755
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    .line 2756
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2762
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2758
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set device owner to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device_provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 24
    .parameter "context"
    .parameter "policy"

    .prologue
    .line 615
    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    .line 616
    .local v10, expiration:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 617
    .local v12, now:J
    sub-long v15, v10, v12

    .line 619
    .local v15, timeToExpire:J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_1

    .line 621
    const-wide/16 v7, 0x0

    .line 635
    .local v7, alarmTime:J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 637
    .local v17, token:J
    :try_start_0
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 638
    .local v9, am:Landroid/app/AlarmManager;
    const/16 v19, 0x15c3

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x4800

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 642
    .local v14, pi:Landroid/app/PendingIntent;
    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 643
    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_0

    .line 644
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :cond_0
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    return-void

    .line 622
    .end local v7           #alarmTime:J
    .end local v9           #am:Landroid/app/AlarmManager;
    .end local v14           #pi:Landroid/app/PendingIntent;
    .end local v17           #token:J
    :cond_1
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_2

    .line 624
    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    .restart local v7       #alarmTime:J
    goto :goto_0

    .line 628
    .end local v7           #alarmTime:J
    :cond_2
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    .line 629
    .local v5, alarmInterval:J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_3

    .line 630
    const-wide/32 v5, 0x5265c00

    .line 632
    :cond_3
    add-long v7, v12, v5

    .restart local v7       #alarmTime:J
    goto :goto_0

    .line 647
    .end local v5           #alarmInterval:J
    .restart local v17       #token:J
    :catchall_0
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 11
    .parameter "who"
    .parameter "proxySpec"
    .parameter "exclusionList"
    .parameter "userHandle"

    .prologue
    .line 2391
    iget-boolean v8, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2392
    const/4 v3, 0x0

    .line 2439
    :goto_0
    return-object v3

    .line 2394
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2395
    monitor-enter p0

    .line 2396
    if-nez p1, :cond_1

    .line 2397
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2440
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2401
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 2402
    .local v7, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2407
    .local v0, admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2408
    .local v2, compSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 2409
    .local v3, component:Landroid/content/ComponentName;
    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2410
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2413
    monitor-exit p0

    goto :goto_0

    .line 2418
    .end local v1           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .end local v3           #component:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 2419
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2423
    :cond_4
    if-nez p2, :cond_5

    .line 2424
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2425
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2426
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 2436
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2437
    .local v5, origId:J
    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2438
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2439
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2429
    .end local v5           #origId:J
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 2430
    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 2431
    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "which"
    .parameter "userHandle"

    .prologue
    .line 2697
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2713
    :goto_0
    return-void

    .line 2700
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2701
    monitor-enter p0

    .line 2702
    if-nez p1, :cond_1

    .line 2703
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2712
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2705
    :cond_1
    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2707
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_2

    .line 2708
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 2709
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2711
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2712
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .locals 2
    .parameter "who"
    .parameter "num"
    .parameter "userHandle"

    .prologue
    .line 1841
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1857
    :goto_0
    return-void

    .line 1844
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1845
    monitor-enter p0

    .line 1848
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 1850
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1852
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_1

    .line 1853
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 1854
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1856
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .locals 3
    .parameter "who"
    .parameter "timeMs"
    .parameter "userHandle"

    .prologue
    .line 2012
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2028
    :goto_0
    return-void

    .line 2015
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2016
    monitor-enter p0

    .line 2017
    if-nez p1, :cond_1

    .line 2018
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2027
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2020
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2022
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_2

    .line 2023
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2024
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2025
    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2027
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .locals 7
    .parameter "who"
    .parameter "timeout"
    .parameter "userHandle"

    .prologue
    const-wide/16 v3, 0x0

    .line 1457
    iget-boolean v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1460
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1461
    monitor-enter p0

    .line 1462
    if-nez p1, :cond_1

    .line 1463
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1482
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1465
    :cond_1
    cmp-long v5, p2, v3

    if-gez v5, :cond_2

    .line 1466
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1468
    :cond_2
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1471
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v5, p2, v3

    if-lez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    .line 1472
    .local v1, expiration:J
    :goto_1
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 1473
    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 1474
    cmp-long v3, p2, v3

    if-lez v3, :cond_3

    .line 1475
    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1481
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1482
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1           #expiration:J
    :cond_4
    move-wide v1, v3

    .line 1471
    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1414
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1417
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1418
    monitor-enter p0

    .line 1419
    if-nez p1, :cond_1

    .line 1420
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1428
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1422
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1424
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_2

    .line 1425
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 1426
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1428
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1371
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1374
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1375
    monitor-enter p0

    .line 1376
    if-nez p1, :cond_1

    .line 1377
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1385
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1379
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1381
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_2

    .line 1382
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 1383
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1385
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1631
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1646
    :goto_0
    return-void

    .line 1634
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1635
    monitor-enter p0

    .line 1636
    if-nez p1, :cond_1

    .line 1637
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1645
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1639
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1641
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_2

    .line 1642
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 1643
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1645
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1591
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1592
    monitor-enter p0

    .line 1593
    if-nez p1, :cond_0

    .line 1594
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1602
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1596
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1598
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1

    .line 1599
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 1600
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1602
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1603
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1760
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1775
    :goto_0
    return-void

    .line 1763
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1764
    monitor-enter p0

    .line 1765
    if-nez p1, :cond_1

    .line 1766
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1774
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1768
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1770
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_2

    .line 1771
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 1772
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1774
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1674
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1677
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1678
    monitor-enter p0

    .line 1679
    if-nez p1, :cond_1

    .line 1680
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1688
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1682
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1684
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_2

    .line 1685
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 1686
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1688
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1717
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1732
    :goto_0
    return-void

    .line 1720
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1721
    monitor-enter p0

    .line 1722
    if-nez p1, :cond_1

    .line 1723
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1731
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1725
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1727
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_2

    .line 1728
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 1729
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1731
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "length"
    .parameter "userHandle"

    .prologue
    .line 1548
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1563
    :goto_0
    return-void

    .line 1551
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1552
    monitor-enter p0

    .line 1553
    if-nez p1, :cond_1

    .line 1554
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1562
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1556
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1558
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_2

    .line 1559
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 1560
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1562
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .locals 3
    .parameter "who"
    .parameter "quality"
    .parameter "userHandle"

    .prologue
    .line 1326
    iget-boolean v1, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1329
    :cond_0
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1330
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1332
    monitor-enter p0

    .line 1333
    if-nez p1, :cond_1

    .line 1334
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1336
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1338
    .local v0, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_2

    .line 1339
    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1340
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1342
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .locals 9
    .parameter "who"
    .parameter "encrypt"
    .parameter "userHandle"

    .prologue
    const/4 v5, 0x0

    .line 2514
    iget-boolean v6, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 2557
    :goto_0
    return v5

    .line 2517
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2518
    monitor-enter p0

    .line 2520
    if-nez p1, :cond_1

    .line 2521
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2560
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2524
    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 2526
    :cond_2
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    monitor-exit p0

    goto :goto_0

    .line 2531
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2535
    .local v1, ap:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2536
    monitor-exit p0

    goto :goto_0

    .line 2540
    :cond_4
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5

    .line 2541
    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 2542
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2545
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2547
    .local v4, policy:Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 2548
    .local v3, newRequested:Z
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2549
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 2550
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 2549
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2554
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 2557
    if-eqz v3, :cond_7

    const/4 v5, 0x3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_2
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .parameter "policy"

    .prologue
    .line 1083
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1084
    .local v1, systemState:Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1085
    .local v0, cameraDisabled:Z
    if-eq v0, v1, :cond_0

    .line 1086
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1088
    .local v2, token:J
    if-eqz v0, :cond_1

    :try_start_0
    const-string v4, "1"

    .line 1091
    .local v4, value:Ljava/lang/String;
    :goto_0
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1096
    .end local v2           #token:J
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    return-void

    .line 1088
    .restart local v2       #token:J
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1093
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1099
    iget-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1102
    :cond_0
    monitor-enter p0

    .line 1103
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)V

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1105
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstallCaCert([B)V
    .locals 12
    .parameter "certBuffer"

    .prologue
    .line 2159
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 2161
    .local v3, certStore:Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v0, 0x0

    .line 2163
    .local v0, alias:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 2164
    .local v2, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2173
    :try_start_1
    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    .line 2174
    .local v7, keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 2176
    .local v8, service:Landroid/security/IKeyChainService;
    :try_start_2
    invoke-interface {v8, v0}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2180
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2181
    :goto_0
    const/4 v7, 0x0

    .line 2187
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    .end local v7           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    .end local v8           #service:Landroid/security/IKeyChainService;
    :goto_1
    return-void

    .line 2165
    :catch_0
    move-exception v1

    .line 2166
    .local v1, ce:Ljava/security/cert/CertificateException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem creating X509Certificate"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2168
    .end local v1           #ce:Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .line 2169
    .local v6, ioe:Ljava/io/IOException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "Problem reading certificate"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2177
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #cert:Ljava/security/cert/X509Certificate;
    .restart local v7       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8       #service:Landroid/security/IKeyChainService;
    :catch_2
    move-exception v4

    .line 2178
    .local v4, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "from CaCertUninstaller: "

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2180
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 2183
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v7           #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    .end local v8           #service:Landroid/security/IKeyChainService;
    :catch_3
    move-exception v5

    .line 2184
    .local v5, ie:Ljava/lang/InterruptedException;
    const-string v9, "DevicePolicyManagerService"

    const-string v10, "CaCertUninstaller: "

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2180
    .end local v5           #ie:Ljava/lang/InterruptedException;
    .restart local v7       #keyChainConnection:Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8       #service:Landroid/security/IKeyChainService;
    :catchall_0
    move-exception v9

    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 2181
    const/4 v7, 0x0

    .line 2180
    throw v9
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 8
    .parameter "policy"

    .prologue
    .line 2031
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    .line 2032
    .local v3, timeMs:J
    iget-wide v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    .line 2057
    :goto_0
    return-void

    .line 2036
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2038
    .local v1, ident:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 2039
    const-wide/32 v3, 0x7fffffff

    .line 2047
    :goto_1
    :try_start_0
    iput-wide v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v5

    long-to-int v6, v3

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2055
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2043
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2055
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .parameter "policy"

    .prologue
    .line 1060
    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, haveOwner:Z
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1063
    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 1064
    const/4 v0, 0x1

    .line 1068
    :cond_0
    if-nez v0, :cond_1

    .line 1069
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1074
    .end local v0           #haveOwner:Z
    .end local v1           #i:I
    :cond_1
    return-void

    .line 1062
    .restart local v0       #haveOwner:Z
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 4
    .parameter "flags"
    .parameter "userHandle"

    .prologue
    .line 2211
    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2227
    :goto_0
    return-void

    .line 2214
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2215
    monitor-enter p0

    .line 2218
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    .line 2220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2222
    .local v0, ident:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2224
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2226
    monitor-exit p0

    goto :goto_0

    .end local v0           #ident:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2224
    .restart local v0       #ident:J
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method wipeDataLocked(I)V
    .locals 7
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2191
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v4

    .line 2192
    .local v1, forceExtWipe:Z
    :goto_0
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_0

    move v3, v4

    .line 2195
    .local v3, wipeExtRequested:Z
    :cond_0
    if-nez v1, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2196
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "always_reset"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2198
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2199
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2200
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2208
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .end local v1           #forceExtWipe:Z
    .end local v3           #wipeExtRequested:Z
    :cond_2
    move v1, v3

    .line 2191
    goto :goto_0

    .line 2203
    .restart local v1       #forceExtWipe:Z
    .restart local v3       #wipeExtRequested:Z
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, e:Ljava/io/IOException;
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
