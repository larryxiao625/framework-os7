.class final Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$4;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->addScreenShotMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1348
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    .prologue
    .line 1352
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$1900()Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1354
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$2500()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1355
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1362
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1358
    const/4 v0, 0x1

    return v0
.end method
