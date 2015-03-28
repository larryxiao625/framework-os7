.class public Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field private static mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private static mScreenshotConnection:Landroid/content/ServiceConnection;

.field private static mScreenshotHandler:Landroid/os/Handler;

.field private static mScreenshotLock:Ljava/lang/Object;

.field private static final mScreenshotTimeout:Ljava/lang/Runnable;

.field private static final mTakeScreenshot:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotHandler:Landroid/os/Handler;

    .line 1268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotLock:Ljava/lang/Object;

    .line 1269
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1272
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mTakeScreenshot:Ljava/lang/Runnable;

    .line 1281
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/android/internal/policy/impl/GlobalActions;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1265
    invoke-static {p0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->takeScreenShot(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2100()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"

    .prologue
    .line 1265
    sput-object p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$2200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mTakeScreenshot:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static addRebootMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 5
    .parameter "globalActions"

    .prologue
    .line 1368
    sput-object p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1369
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$5;

    const v1, 0x108033c

    const v2, 0x1040674

    const v3, 0x1080332

    const v4, 0x1080331

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$5;-><init>(IIII)V

    .line 1388
    .local v0, action:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    return-void
.end method

.method public static addScreenShotMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 6
    .parameter "globalActions"

    .prologue
    .line 1344
    sput-object p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1345
    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/android/internal/policy/impl/GlobalActions;->access$700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$4;

    const v2, 0x108033e

    const v3, 0x10406b3

    const v4, 0x1080334

    const v5, 0x1080333

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$4;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1365
    return-void
.end method

.method private static takeScreenShot(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1295
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1297
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1298
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;-><init>(Landroid/content/Context;)V

    .line 1336
    .local v1, conn:Landroid/content/ServiceConnection;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1337
    sput-object v1, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 1338
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1340
    :cond_0
    return-void
.end method
