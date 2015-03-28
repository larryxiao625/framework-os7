.class Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1313
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$1800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1314
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2100()Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3$1;->this$0:Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$3;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2100()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1316
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2102(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 1317
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2300()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1319
    :cond_0
    monitor-exit v1

    .line 1320
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
