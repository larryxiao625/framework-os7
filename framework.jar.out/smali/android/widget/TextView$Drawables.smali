.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableBottom:Landroid/graphics/drawable/Drawable;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRight:Landroid/graphics/drawable/Drawable;

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableTop:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 331
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 334
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 335
    .local v0, targetSdkVersion:I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    .line 337
    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    .line 338
    return-void

    :cond_1
    move v1, v2

    .line 335
    goto :goto_0
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 429
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 445
    packed-switch p1, :pswitch_data_1

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 461
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 462
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 463
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 465
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 466
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 467
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 471
    :cond_0
    :goto_1
    return-void

    .line 431
    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 432
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 433
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 437
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 438
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 447
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    .line 449
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 450
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    .line 451
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    .line 453
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 454
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 455
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_1

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 445
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private updateDrawablesLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 399
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 402
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 405
    :cond_3
    return-void
.end method


# virtual methods
.method public resolveWithLayoutDirection(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 342
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 343
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 345
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 349
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 350
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 355
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 356
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 388
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    .line 389
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->updateDrawablesLayoutDirection(I)V

    .line 390
    return-void

    .line 361
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 376
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 378
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 379
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 381
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 382
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 383
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    .line 363
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 365
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 366
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 368
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 369
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 370
    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 4
    .parameter "dr"
    .parameter "tv"

    .prologue
    .line 408
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 411
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 413
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 414
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 416
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 417
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 418
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 419
    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 420
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    .line 421
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    goto :goto_0
.end method
