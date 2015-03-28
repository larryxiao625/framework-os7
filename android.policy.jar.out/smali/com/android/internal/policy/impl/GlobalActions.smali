.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ActionView;,
        Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;,
        Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private animator_x:I

.field private animator_y:I

.field private back_x:I

.field private back_y:I

.field private fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private midHeight:I

.field private midWidth:I

.field private muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

.field private offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

.field private offset_r:I

.field private offset_x:I

.field private offset_y:I

.field private point1:Landroid/graphics/Point;

.field private point2:Landroid/graphics/Point;

.field private point3:Landroid/graphics/Point;

.field private point4:Landroid/graphics/Point;

.field private point5:Landroid/graphics/Point;

.field private point6:Landroid/graphics/Point;

.field private restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

.field private screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

.field private shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 9
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 118
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 119
    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 120
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 127
    iput v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    .line 128
    iput v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    .line 129
    const/16 v4, 0x15e

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_x:I

    .line 130
    const/16 v4, 0xc8

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    .line 131
    const/16 v4, 0x63

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    .line 132
    const/16 v4, 0x190

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    .line 133
    const/16 v4, 0x320

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    .line 134
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    .line 135
    const/16 v4, 0x50

    iput v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    .line 1047
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1068
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1079
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1088
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$7;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1100
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$8;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 145
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    const-string v4, "dreams"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 150
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 159
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 160
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 167
    .local v3, vibrator:Landroid/os/Vibrator;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    .line 169
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110056

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->initCenter()V

    .line 173
    return-void

    :cond_0
    move v4, v6

    .line 167
    goto :goto_0

    :cond_1
    move v5, v6

    .line 169
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->btnDisappear()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlobalActions;->click(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ActionView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->btnAppear()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->slipOut()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$Action;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 424
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_6

    .line 425
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 426
    .local v6, currentUser:Landroid/content/pm/UserInfo;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 427
    .local v5, user:Landroid/content/pm/UserInfo;
    if-nez v6, :cond_1

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    move v8, v10

    .line 429
    .local v8, isCurrentUser:Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 431
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v2, 0x1080450

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_5

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 451
    .local v0, switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #switchToUser:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #isCurrentUser:Z
    :cond_0
    move v8, v11

    .line 427
    goto :goto_1

    :cond_1
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v11

    goto :goto_1

    .line 429
    .restart local v8       #isCurrentUser:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 431
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v1, "Primary"

    goto :goto_3

    :cond_5
    const-string v1, ""

    goto :goto_4

    .line 454
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #user:Landroid/content/pm/UserInfo;
    .end local v6           #currentUser:Landroid/content/pm/UserInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isCurrentUser:Z
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private btnAppear()V
    .locals 17

    .prologue
    .line 1581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1582
    .local v1, flightmodeIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1584
    .local v2, flightmodeTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1585
    .local v5, offIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1587
    .local v6, offTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_4

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1588
    .local v7, restartIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1590
    .local v8, restartTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_6

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1591
    .local v9, screenshotIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_7

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1593
    .local v10, screenshotTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_8

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1594
    .local v12, shakeIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_9

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1596
    .local v13, shakeTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_a

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1597
    .local v3, muteIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_b

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1599
    .local v4, muteTextAnimator:Landroid/animation/ObjectAnimator;
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1600
    .local v11, set:Landroid/animation/AnimatorSet;
    const-wide/16 v14, 0x12c

    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1601
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1607
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$18;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/policy/impl/GlobalActions$18;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1625
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 1626
    return-void

    .line 1581
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1582
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1584
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1585
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1587
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1588
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1590
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1591
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1593
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1594
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1596
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1597
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private btnDisappear()V
    .locals 17

    .prologue
    .line 1630
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1631
    .local v1, flightmodeIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1633
    .local v2, flightmodeTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_2

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1634
    .local v5, offIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_3

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1636
    .local v6, offTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_4

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1637
    .local v7, restartIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1639
    .local v8, restartTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_6

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1640
    .local v9, screenshotIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_7

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1642
    .local v10, screenshotTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_8

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1643
    .local v12, shakeIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_9

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 1645
    .local v13, shakeTextAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_a

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1646
    .local v3, muteIconAnimator:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_b

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1648
    .local v4, muteTextAnimator:Landroid/animation/ObjectAnimator;
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1649
    .local v11, set:Landroid/animation/AnimatorSet;
    const-wide/16 v14, 0x12c

    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1650
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1656
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$19;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/policy/impl/GlobalActions$19;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1663
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 1664
    return-void

    .line 1630
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1631
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1633
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1634
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1636
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1637
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1639
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1640
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1642
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1643
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1645
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1646
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1142
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1144
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_0

    .line 1145
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1147
    :cond_0
    return-void

    .line 1136
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1145
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private click(Landroid/view/View;I)V
    .locals 7
    .parameter "v"
    .parameter "flag"

    .prologue
    const/4 v6, 0x2

    .line 1668
    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1669
    .local v1, scaleX:Landroid/animation/ObjectAnimator;
    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1670
    .local v2, scaleY:Landroid/animation/ObjectAnimator;
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1671
    .local v0, alphaAnimator:Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1672
    .local v3, set:Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1673
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1674
    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$20;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/policy/impl/GlobalActions$20;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1698
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1699
    return-void

    .line 1668
    nop

    :array_0
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 1669
    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 1670
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .locals 15

    .prologue
    .line 227
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    .line 228
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$1;

    const v2, 0x1080338

    const v3, 0x1080339

    const v4, 0x10400cd

    const v5, 0x108032c

    const v6, 0x108032b

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 275
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v2, 0x108033b

    const v3, 0x10400c6

    const v4, 0x1080330

    const v5, 0x108032f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {p0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->addRebootMenu(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-static {p0}, Lcom/android/internal/policy/impl/GlobalActions$BaiduInjector;->addScreenShotMenu(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 357
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 368
    new-instance v10, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 370
    .local v10, params:Lcom/android/internal/app/AlertController$AlertParams;
    iput-object p0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 373
    new-instance v8, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0, v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 374
    .local v8, dialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 375
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x109005e

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 376
    .local v11, v:Landroid/view/View;
    invoke-direct {p0, v9, v11}, Lcom/android/internal/policy/impl/GlobalActions;->initDialog(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 377
    invoke-virtual {v8, v11}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 378
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 379
    .local v12, window:Landroid/view/Window;
    const v0, 0x108032a

    invoke-virtual {v12, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 380
    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Landroid/view/Window;->addFlags(I)V

    .line 381
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 382
    .local v14, wl:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 383
    .local v13, windowManager:Landroid/view/WindowManager;
    const/4 v0, 0x0

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 384
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 385
    const/4 v0, -0x1

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 386
    const/4 v0, -0x1

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 387
    const v0, 0x3f59999a

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 388
    invoke-virtual {v8, v14}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 401
    invoke-virtual {v8}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 403
    invoke-virtual {v8, p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    return-object v8
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 412
    :goto_0
    return-object v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, re:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleShow()V
    .locals 3

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()V

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 210
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "GlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->show()V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 214
    return-void
.end method

.method private initCenter()V
    .locals 4

    .prologue
    .line 1401
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1402
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1403
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1404
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    .line 1405
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    .line 1406
    return-void
.end method

.method private initDialog(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 5
    .parameter "inflater"
    .parameter "view"

    .prologue
    .line 1410
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ActionView;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    .line 1411
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ActionView;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    .line 1412
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ActionView;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    .line 1413
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ActionView;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    .line 1414
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ActionView;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    .line 1415
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$ActionView;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    .line 1417
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1, p1, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$Action;->addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 1418
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1, p1, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$Action;->addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 1419
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1, p1, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$Action;->addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 1420
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$Action;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1, p1, v3, v2}, Lcom/android/internal/policy/impl/GlobalActions$Action;->addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 1421
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 1423
    const v1, 0x10202ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1424
    .local v0, closeBtn:Landroid/view/View;
    const v1, 0x1080337

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1425
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1432
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1446
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$12;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1460
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$14;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1467
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$15;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1474
    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    add-int/lit8 v1, v1, -0x3c

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 1475
    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    add-int/lit16 v1, v1, 0x1f4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1477
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_x:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    .line 1478
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    .line 1479
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_x:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    .line 1480
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_x:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    .line 1481
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    .line 1482
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->midWidth:I

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_x:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->midHeight:I

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_y:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->offset_r:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    .line 1484
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 1485
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1486
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 1487
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1488
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 1489
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1490
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 1491
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1492
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 1493
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1494
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 1495
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 1497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->slipInto()V

    .line 1498
    return-void
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 418
    .local v0, currentUser:Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1122
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1128
    .local v0, airplaneModeOn:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1129
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_0

    .end local v0           #airplaneModeOn:Z
    :cond_1
    move v0, v1

    .line 1124
    goto :goto_1

    .line 1128
    .restart local v0       #airplaneModeOn:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->refreshSilentMode()V

    .line 458
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 461
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 462
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 465
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 468
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 471
    .local v0, silentModeOn:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 474
    .end local v0           #silentModeOn:Z
    :cond_0
    return-void

    .line 469
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    .restart local v0       #silentModeOn:Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private slipInto()V
    .locals 20

    .prologue
    .line 1501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1502
    .local v1, icon1_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1504
    .local v2, icon1_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1505
    .local v3, icon2_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1507
    .local v4, icon2_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1508
    .local v5, icon3_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1510
    .local v6, icon3_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1511
    .local v7, icon4_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1513
    .local v8, icon4_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1514
    .local v9, icon5_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1516
    .local v10, icon5_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1517
    .local v11, icon6_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1519
    .local v12, icon6_y:Landroid/animation/ObjectAnimator;
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1520
    .local v13, set:Landroid/animation/AnimatorSet;
    const-wide/16 v14, 0x1f4

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1521
    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1527
    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1528
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$16;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1535
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 1536
    return-void
.end method

.method private slipOut()V
    .locals 20

    .prologue
    .line 1539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1540
    .local v1, icon1_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->fightmodeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point1:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1542
    .local v2, icon1_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1543
    .local v3, icon2_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->offView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point2:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1545
    .local v4, icon2_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1546
    .local v5, icon3_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->restartView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point3:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1548
    .local v6, icon3_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 1549
    .local v7, icon4_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->screenshotView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point4:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1551
    .local v8, icon4_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1552
    .local v9, icon5_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->shakeView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point5:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1554
    .local v10, icon5_y:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "X"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_x:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1555
    .local v11, icon6_x:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->muteView:Lcom/android/internal/policy/impl/GlobalActions$ActionView;

    iget-object v14, v14, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const-string v15, "Y"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->back_y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->point6:Landroid/graphics/Point;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->animator_y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 1557
    .local v12, icon6_y:Landroid/animation/ObjectAnimator;
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1558
    .local v13, set:Landroid/animation/AnimatorSet;
    const-wide/16 v14, 0x1f4

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1559
    invoke-virtual {v13, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1566
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/internal/policy/impl/GlobalActions$17;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1575
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 1577
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 491
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 494
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 478
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 483
    .local v0, ie:Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 181
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_0
.end method
