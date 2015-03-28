.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHasVibrator:Z

.field private muteLayout:Landroid/view/View;

.field private shakeLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;Z)V
    .locals 1
    .parameter "context"
    .parameter "audioManager"
    .parameter "handler"
    .parameter "hasVibrator"

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 916
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 917
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 918
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 919
    iput-boolean p4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHasVibrator:Z

    .line 920
    return-void

    .line 907
    :array_0
    .array-data 0x4
        0xf1t 0x2t 0x2t 0x1t
        0xf2t 0x2t 0x2t 0x1t
        0xf3t 0x2t 0x2t 0x1t
    .end array-data
.end method

.method private addMuteView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "actionView"
    .parameter "parent"

    .prologue
    .line 988
    const v0, 0x109005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->muteLayout:Landroid/view/View;

    .line 989
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x10202ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    .line 990
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x10202ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    .line 991
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    .line 992
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    .line 994
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    const v1, 0x108032e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 995
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    const v1, 0x108032d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 996
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const v1, 0x10406ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 998
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 999
    return-void
.end method

.method private addShakeView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "actionView"
    .parameter "parent"

    .prologue
    .line 971
    const v0, 0x109005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->shakeLayout:Landroid/view/View;

    .line 972
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x10202ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    .line 973
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x10202ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    .line 974
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    .line 975
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    .line 977
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    const v1, 0x1080336

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 978
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    const v1, 0x1080335

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 979
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const v1, 0x10406cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 981
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->shakeLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    :cond_0
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 985
    return-void
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 929
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 924
    return p1
.end method


# virtual methods
.method public addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "inflater"
    .parameter "actionView"
    .parameter "parent"

    .prologue
    .line 949
    return-void
.end method

.method public addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "inflater"
    .parameter "shakeView"
    .parameter "muteView"
    .parameter "parent"

    .prologue
    .line 952
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addShakeView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 953
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addMuteView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V

    .line 955
    iget-object v1, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const v2, 0x108033f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v0

    .line 957
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 968
    :goto_0
    return-void

    .line 959
    :pswitch_0
    iget-object v1, p3, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const v2, 0x108033d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 960
    iget-object v1, p3, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const v2, 0x10406cf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 964
    :pswitch_1
    iget-object v1, p3, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    const v2, 0x108033a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 965
    iget-object v1, p3, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    const v2, 0x10406ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 934
    const v4, 0x1090060

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 936
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 937
    .local v2, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 938
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 939
    .local v1, itemView:Landroid/view/View;
    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 941
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 942
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 939
    goto :goto_1

    .line 944
    .end local v1           #itemView:Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1039
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1041
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1042
    .local v0, index:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1043
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1002
    return-void
.end method

.method public onPress(Z)V
    .locals 5
    .parameter "isShakeView"

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v0

    .line 1006
    .local v0, mode:I
    if-eqz p1, :cond_1

    .line 1007
    const/4 v0, 0x1

    .line 1015
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1016
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1017
    return-void

    .line 1009
    :cond_1
    if-nez v0, :cond_2

    .line 1010
    const/4 v0, 0x2

    goto :goto_0

    .line 1011
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1012
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1036
    return-void
.end method
