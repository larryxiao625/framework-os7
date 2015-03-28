.class final Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector$5;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->addRebootMenu(Lcom/android/internal/policy/impl/GlobalActions;)V
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
    .line 1372
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 2

    .prologue
    .line 1377
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->access$1900()Lcom/android/internal/policy/impl/GlobalActions;

    move-result-object v0

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    .line 1378
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1385
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1381
    const/4 v0, 0x1

    return v0
.end method
