.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
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
    name = "SinglePressAction"
.end annotation


# instance fields
.field protected mBgDarkResId:I

.field protected mBgLightResId:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 613
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 614
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 615
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 616
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "bgLightResId"
    .parameter "bgDarkResId"

    .prologue
    const/4 v0, 0x0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 620
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 621
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mBgLightResId:I

    .line 622
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mBgDarkResId:I

    .line 623
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 624
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 625
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "iconResId"
    .parameter "icon"
    .parameter "message"

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 629
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 630
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 631
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 632
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "iconResId"
    .parameter "message"

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 637
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 639
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/LayoutInflater;Lcom/android/internal/policy/impl/GlobalActions$ActionView;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "actionView"
    .parameter "parent"

    .prologue
    .line 676
    const v0, 0x109005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    .line 678
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x10202ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    .line 679
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x10202ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    .line 680
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    .line 681
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    .line 683
    iget v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->icon:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 686
    :cond_0
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->message:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 687
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgLight:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mBgLightResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 688
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->bgDark:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mBgDarkResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 690
    iget-object v0, p2, Lcom/android/internal/policy/impl/GlobalActions$ActionView;->layout:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 692
    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 653
    const v3, 0x109005f

    const/4 v4, 0x0

    invoke-virtual {p4, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 655
    .local v2, v:Landroid/view/View;
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 656
    .local v0, icon:Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 658
    .local v1, messageView:Landroid/widget/TextView;
    const v3, 0x10202f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 660
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 665
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 666
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :goto_1
    return-object v2

    .line 662
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    if-eqz v3, :cond_0

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 668
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
