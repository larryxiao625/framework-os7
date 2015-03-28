.class abstract Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field private iconView:Landroid/view/View;

.field protected mBgDarkResId:I

.field protected mBgLightResId:I

.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field private mHandler:Landroid/os/Handler;

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "message"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 745
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 746
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 747
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    .line 748
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 749
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 750
    return-void
.end method

.method public constructor <init>(IIIIILandroid/os/Handler;)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "message"
    .parameter "bgLightResId"
    .parameter "bgDarkResId"
    .parameter "handler"

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 759
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 760
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 761
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    .line 762
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mBgLightResId:I

    .line 763
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mBgDarkResId:I

    .line 764
    iput-object p6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHandler:Landroid/os/Handler;

    .line 765
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "actionView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 810
    const v2, 0x109005d

    invoke-virtual {p1, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    .line 812
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v3, 0x10202ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    .line 813
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v3, 0x10202ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    .line 814
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->iconView:Landroid/view/View;

    .line 815
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    .line 817
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 819
    .local v0, enabled:Z
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 821
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 824
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 825
    .local v1, on:Z
    :cond_2
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 826
    iget-object v3, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 828
    :cond_3
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 829
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mBgLightResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 831
    :cond_4
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 832
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mBgDarkResId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 835
    :cond_5
    iget-object v2, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 836
    return-void

    .line 826
    :cond_6
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    goto :goto_0
.end method

.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    .line 865
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 866
    return-void

    .line 865
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x0

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->willCreate()V

    .line 779
    const v6, 0x109005f

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 782
    .local v5, v:Landroid/view/View;
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 783
    .local v1, icon:Landroid/widget/ImageView;
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 784
    .local v2, messageView:Landroid/widget/TextView;
    const v6, 0x10202f0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 785
    .local v4, statusView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 787
    .local v0, enabled:Z
    if-eqz v2, :cond_0

    .line 788
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 789
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 792
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_1
    const/4 v3, 0x1

    .line 793
    .local v3, on:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 794
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_1
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 799
    :cond_2
    if-eqz v4, :cond_3

    .line 800
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 801
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 802
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 804
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 806
    return-object v5

    .end local v3           #on:Z
    :cond_4
    move v3, v7

    .line 792
    goto :goto_0

    .line 794
    .restart local v3       #on:Z
    :cond_5
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_1

    .line 800
    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 839
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 845
    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    .line 847
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #nowOn:Z
    :cond_1
    move v0, v1

    .line 844
    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 872
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 873
    .local v0, on:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->iconView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 874
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->iconView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 876
    :cond_1
    return-void

    .line 872
    .end local v0           #on:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 874
    .restart local v0       #on:Z
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    goto :goto_1
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 773
    return-void
.end method
