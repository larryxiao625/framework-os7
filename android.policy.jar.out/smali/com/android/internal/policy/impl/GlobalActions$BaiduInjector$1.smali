.class final Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1276
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$1800()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1277
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$1900()Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->takeScreenShot(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2000(Landroid/content/Context;)V

    .line 1278
    monitor-exit v1

    .line 1279
    return-void

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
