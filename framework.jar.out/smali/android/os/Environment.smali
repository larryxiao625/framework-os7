.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Environment$UserEnvironment;
    }
.end annotation


# static fields
.field private static final CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String; = null

.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static final DIRECTORY_ANDROID:Ljava/lang/String; = "Android"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOCUMENTS:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field public static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_ANDROID_ROOT:Ljava/io/File; = null

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_MEDIA:Ljava/lang/String; = "media"

.field private static final DIR_MEDIA_STORAGE:Ljava/io/File; = null

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final ENV_ANDROID_ROOT:Ljava/lang/String; = "ANDROID_ROOT"

.field private static final ENV_EMULATED_STORAGE_SOURCE:Ljava/lang/String; = "EMULATED_STORAGE_SOURCE"

.field private static final ENV_EMULATED_STORAGE_TARGET:Ljava/lang/String; = "EMULATED_STORAGE_TARGET"

.field private static final ENV_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field private static final ENV_MEDIA_STORAGE:Ljava/lang/String; = "MEDIA_STORAGE"

.field private static final ENV_SECONDARY_STORAGE:Ljava/lang/String; = "SECONDARY_STORAGE"

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final SECURE_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final SYSTEM_PROPERTY_EFS_ENABLED:Ljava/lang/String; = "persist.security.efs.enabled"

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static sCurrentUser:Landroid/os/Environment$UserEnvironment;

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sPrimaryVolume:Landroid/os/storage/StorageVolume;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static volatile sSecondaryVolume:Landroid/os/storage/StorageVolume;

.field private static sUserRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    .line 59
    const-string v0, "MEDIA_STORAGE"

    const-string v1, "/data/media"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    .line 61
    const-string v0, "EMULATED_STORAGE_TARGET"

    invoke-static {v0}, Landroid/os/Environment;->getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    .line 122
    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    .line 339
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 345
    const-string v0, "ANDROID_SECURE_DATA"

    const-string v1, "/data/secure"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 348
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 456
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 468
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 480
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 492
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 504
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 512
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 520
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 530
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 537
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 543
    const-string v0, "Documents"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static buildExternalStorageAndroidDataDirs()[Ljava/io/File;
    .locals 1

    .prologue
    .line 583
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 584
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAndroidDataDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 628
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 629
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppCacheDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 593
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 619
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 620
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 601
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 602
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 610
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 611
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "base"
    .parameter "segments"

    .prologue
    .line 941
    move-object v1, p0

    .line 942
    .local v1, cur:Ljava/io/File;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move-object v2, v1

    .end local v1           #cur:Ljava/io/File;
    .local v2, cur:Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 943
    .local v5, segment:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 944
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 942
    .end local v2           #cur:Ljava/io/File;
    .restart local v1       #cur:Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1           #cur:Ljava/io/File;
    .restart local v2       #cur:Ljava/io/File;
    goto :goto_0

    .line 946
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2           #cur:Ljava/io/File;
    .restart local v1       #cur:Ljava/io/File;
    goto :goto_1

    .line 949
    .end local v1           #cur:Ljava/io/File;
    .end local v5           #segment:Ljava/lang/String;
    .restart local v2       #cur:Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public static varargs buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .parameter "base"
    .parameter "segments"

    .prologue
    .line 928
    array-length v2, p0

    new-array v1, v2, [Ljava/io/File;

    .line 929
    .local v1, result:[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 930
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_0
    return-object v1
.end method

.method public static getAsecVolumeDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 873
    invoke-static {}, Landroid/os/Environment;->isAsecVolumeSDcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-static {}, Landroid/os/Environment;->getSDCardDirectory()Ljava/io/File;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAsecVolumeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    invoke-static {}, Landroid/os/Environment;->isAsecVolumeSDcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {}, Landroid/os/Environment;->getSDCardState()Ljava/lang/String;

    move-result-object v0

    .line 865
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCanonicalPathOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "variableName"

    .prologue
    const/4 v2, 0x0

    .line 898
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 906
    :goto_0
    return-object v2

    .line 903
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 893
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 636
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getEmulatedStorageObbSource()Ljava/io/File;
    .locals 3

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "obb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getEmulatedStorageSource(I)Ljava/io/File;
    .locals 3
    .parameter "userId"

    .prologue
    .line 432
    new-instance v0, Ljava/io/File;

    const-string v1, "EMULATED_STORAGE_SOURCE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 416
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 575
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0, p0}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 726
    sget-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 727
    .local v0, externalDir:Ljava/io/File;
    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/io/File;

    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLegacyExternalStorageObbDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "obb"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 315
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getMediaDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneMemoryDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 812
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhoneMemoryState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .locals 6

    .prologue
    .line 77
    const-string v3, "config.disable_storage"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    const/4 v3, 0x0

    .line 95
    .local v1, mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-object v3

    .line 81
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v3, :cond_2

    .line 82
    sget-object v4, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 83
    :try_start_0
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 85
    :try_start_1
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 87
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 88
    .local v2, volumes:[Landroid/os/storage/StorageVolume;
    invoke-static {v2}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    sput-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .end local v2           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :cond_2
    sget-object v3, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Environment"

    const-string v5, "couldn\'t talk to MountService"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 93
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Landroid/os/Environment;->DIR_ANDROID_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static getSDCardDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 797
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSDCardState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Landroid/os/Environment;->throwIfUserRequired()V

    .line 444
    sget-object v0, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    invoke-virtual {v0}, Landroid/os/Environment$UserEnvironment;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondaryExternalStorageState()Ljava/lang/String;
    .locals 6

    .prologue
    .line 767
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 769
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 770
    .local v2, secondary:Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_0

    .line 771
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 777
    .end local v2           #secondary:Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v3

    .line 773
    .restart local v2       #secondary:Landroid/os/storage/StorageVolume;
    :cond_0
    const-string/jumbo v3, "removed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v2           #secondary:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 776
    .local v1, rex:Ljava/lang/Exception;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read external storage state; assuming REMOVED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string/jumbo v3, "removed"

    goto :goto_0
.end method

.method private static getSecondaryVolume()Landroid/os/storage/StorageVolume;
    .locals 10

    .prologue
    .line 99
    sget-object v7, Landroid/os/Environment;->sSecondaryVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_1

    const-string v7, "SECONDARY_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 100
    sget-object v8, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 101
    :try_start_0
    sget-object v7, Landroid/os/Environment;->sSecondaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 103
    :try_start_1
    const-string v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 105
    .local v4, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 106
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v6

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 107
    .local v5, volumeItem:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v9, "SECONDARY_STORAGE"

    invoke-static {v9}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 108
    sput-object v5, Landroid/os/Environment;->sSecondaryVolume:Landroid/os/storage/StorageVolume;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #volumeItem:Landroid/os/storage/StorageVolume;
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :cond_1
    sget-object v7, Landroid/os/Environment;->sSecondaryVolume:Landroid/os/storage/StorageVolume;

    return-object v7

    .line 106
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #volumeItem:Landroid/os/storage/StorageVolume;
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #volumeItem:Landroid/os/storage/StorageVolume;
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "Environment"

    const-string v9, "couldn\'t talk to MountService"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method

.method public static getSecureDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 300
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    .line 303
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    goto :goto_0
.end method

.method public static getStorageState(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    .line 743
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 750
    .local v5, rawPath:Ljava/lang/String;
    :try_start_1
    const-string v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 752
    .local v4, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 753
    .local v7, volumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 754
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 755
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 761
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #rawPath:Ljava/lang/String;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    .end local v7           #volumes:[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v8

    .line 744
    :catch_0
    move-exception v1

    .line 745
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Environment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to resolve target path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string/jumbo v8, "unknown"

    goto :goto_1

    .line 753
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    .restart local v5       #rawPath:Ljava/lang/String;
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    .restart local v7       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    .end local v7           #volumes:[Landroid/os/storage/StorageVolume;
    :catch_1
    move-exception v1

    .line 759
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "Environment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find external storage state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v8, "unknown"

    goto :goto_1
.end method

.method public static getSystemSecureDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->SECURE_DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUserSystemDirectory(I)Ljava/io/File;
    .locals 4
    .parameter "userId"

    .prologue
    .line 326
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initForCurrentUser()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 128
    .local v0, userId:I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sput-object v1, Landroid/os/Environment;->sCurrentUser:Landroid/os/Environment$UserEnvironment;

    .line 130
    sget-object v2, Landroid/os/Environment;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/Environment;->sPrimaryVolume:Landroid/os/storage/StorageVolume;

    .line 132
    monitor-exit v2

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isAsecVolumeAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 884
    invoke-static {}, Landroid/os/Environment;->isAsecVolumeSDcard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 887
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAsecVolumeSDcard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 855
    const-string/jumbo v1, "ro.baidu.asec.type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEncryptedFilesystemEnabled()Z
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, "persist.security.efs.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageEmulated()Z
    .locals 2

    .prologue
    .line 837
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 838
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageRemovable()Z
    .locals 2

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Environment;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 791
    .local v0, primary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSecondaryExternalStorageEmulated()Z
    .locals 2

    .prologue
    .line 843
    invoke-static {}, Landroid/os/Environment;->getSecondaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 844
    .local v0, secondary:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .parameter "path"

    .prologue
    .line 966
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 985
    .local v0, e:Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object p0

    .line 972
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, rawPath:Ljava/lang/String;
    sget-object v3, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 974
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIR_MEDIA_STORAGE:Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->CANONCIAL_EMULATED_STORAGE_TARGET:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 976
    .local v1, internalPath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move-object p0, v1

    .line 977
    goto :goto_0

    .line 980
    .end local v1           #internalPath:Ljava/io/File;
    .end local v2           #rawPath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 981
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Environment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUserRequired(Z)V
    .locals 0
    .parameter "userRequired"

    .prologue
    .line 912
    sput-boolean p0, Landroid/os/Environment;->sUserRequired:Z

    .line 913
    return-void
.end method

.method private static throwIfUserRequired()V
    .locals 3

    .prologue
    .line 916
    sget-boolean v0, Landroid/os/Environment;->sUserRequired:Z

    if-eqz v0, :cond_0

    .line 917
    const-string v0, "Environment"

    const-string v1, "Path requests must specify a user by using UserEnvironment"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 920
    :cond_0
    return-void
.end method
