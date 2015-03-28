.class Lcom/android/server/power/ShutdownThread$BaiduInjector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRebootDialogBaidu(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 199
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040671

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1070036

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/ShutdownThread$BaiduInjector$1RebootClickListener;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector$1RebootClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/server/power/ShutdownThread$BaiduInjector$1PositiveClickListener;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$BaiduInjector$1PositiveClickListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/server/power/ShutdownThread$BaiduInjector$1NegativeClickListener;

    invoke-direct {v2}, Lcom/android/server/power/ShutdownThread$BaiduInjector$1NegativeClickListener;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static rebootProgressDialogBaidu(Landroid/content/Context;Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter "context"
    .parameter "pd"

    .prologue
    .line 168
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const v0, 0x1040671

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    const v0, 0x1040672

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    return-void
.end method
