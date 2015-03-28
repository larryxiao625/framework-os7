.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$BaiduInjector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration; = null

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public themeChanged:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .line 1230
    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 642
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 649
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 1246
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .parameter "screenLayout"

    .prologue
    .line 1380
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static needNewResources(II)Z
    .locals 2
    .parameter "configChanges"
    .parameter "interestingChanges"

    .prologue
    .line 1119
    const/high16 v0, 0x4000

    or-int/2addr v0, p1

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .parameter "curLayout"
    .parameter "longSizeDp"
    .parameter "shortSizeDp"

    .prologue
    .line 255
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    .line 258
    const/4 v3, 0x1

    .line 259
    .local v3, screenLayoutSize:I
    const/4 v2, 0x0

    .line 260
    .local v2, screenLayoutLong:Z
    const/4 v1, 0x0

    .line 295
    .local v1, screenLayoutCompatNeeded:Z
    :goto_0
    if-nez v2, :cond_0

    .line 296
    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    .line 298
    :cond_0
    if-eqz v1, :cond_1

    .line 299
    const/high16 v4, 0x1000

    or-int/2addr p0, v4

    .line 301
    :cond_1
    and-int/lit8 v0, p0, 0xf

    .line 302
    .local v0, curSize:I
    if-ge v3, v0, :cond_2

    .line 303
    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    .line 305
    :cond_2
    return p0

    .line 263
    .end local v0           #curSize:I
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    .line 266
    const/4 v3, 0x4

    .line 278
    .restart local v3       #screenLayoutSize:I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    .line 279
    :cond_4
    const/4 v1, 0x1

    .line 285
    .restart local v1       #screenLayoutCompatNeeded:Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    .line 287
    const/4 v2, 0x1

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0

    .line 267
    .end local v1           #screenLayoutCompatNeeded:Z
    .end local v2           #screenLayoutLong:Z
    .end local v3           #screenLayoutSize:I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    .line 270
    const/4 v3, 0x3

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 272
    .end local v3           #screenLayoutSize:I
    :cond_6
    const/4 v3, 0x2

    .restart local v3       #screenLayoutSize:I
    goto :goto_1

    .line 281
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #screenLayoutCompatNeeded:Z
    goto :goto_2

    .line 289
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #screenLayoutLong:Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .parameter "curLayout"

    .prologue
    .line 240
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 7
    .parameter "that"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1250
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1251
    .local v0, a:F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1252
    .local v1, b:F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    move v2, v3

    .line 1297
    :cond_0
    :goto_0
    return v2

    .line 1253
    :cond_1
    cmpl-float v5, v0, v1

    if-lez v5, :cond_2

    move v2, v4

    goto :goto_0

    .line 1254
    :cond_2
    iget v5, p0, Landroid/content/res/Configuration;->mcc:I

    iget v6, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v2, v5, v6

    .line 1255
    .local v2, n:I
    if-nez v2, :cond_0

    .line 1256
    iget v5, p0, Landroid/content/res/Configuration;->mnc:I

    iget v6, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v2, v5, v6

    .line 1257
    if-nez v2, :cond_0

    .line 1258
    iget-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v5, :cond_3

    .line 1259
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_5

    move v2, v4

    goto :goto_0

    .line 1260
    :cond_3
    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v4, :cond_4

    move v2, v3

    .line 1261
    goto :goto_0

    .line 1263
    :cond_4
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1264
    if-nez v2, :cond_0

    .line 1265
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1266
    if-nez v2, :cond_0

    .line 1267
    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 1268
    if-nez v2, :cond_0

    .line 1270
    :cond_5
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v4, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v2, v3, v4

    .line 1271
    if-nez v2, :cond_0

    .line 1272
    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v2, v3, v4

    .line 1273
    if-nez v2, :cond_0

    .line 1274
    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v2, v3, v4

    .line 1275
    if-nez v2, :cond_0

    .line 1276
    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v2, v3, v4

    .line 1277
    if-nez v2, :cond_0

    .line 1278
    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    iget v4, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v2, v3, v4

    .line 1279
    if-nez v2, :cond_0

    .line 1280
    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v4, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v2, v3, v4

    .line 1281
    if-nez v2, :cond_0

    .line 1282
    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v2, v3, v4

    .line 1283
    if-nez v2, :cond_0

    .line 1284
    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v2, v3, v4

    .line 1285
    if-nez v2, :cond_0

    .line 1286
    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v2, v3, v4

    .line 1287
    if-nez v2, :cond_0

    .line 1288
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v2, v3, v4

    .line 1289
    if-nez v2, :cond_0

    .line 1290
    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v2, v3, v4

    .line 1291
    if-nez v2, :cond_0

    .line 1292
    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v4, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v2, v3, v4

    .line 1293
    if-nez v2, :cond_0

    .line 1294
    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v2, v3, v4

    .line 1295
    if-nez v2, :cond_0

    .line 1296
    invoke-static {p0, p1, v2}, Landroid/content/res/Configuration$BaiduInjector;->compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v2

    .line 1297
    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, changed:I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1026
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    .line 1028
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    .line 1029
    or-int/lit8 v0, v0, 0x1

    .line 1031
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_2

    .line 1032
    or-int/lit8 v0, v0, 0x2

    .line 1034
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1036
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 1037
    or-int/lit16 v0, v0, 0x2000

    .line 1039
    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    .line 1040
    .local v1, deltaScreenLayoutDir:I
    if-eqz v1, :cond_5

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_5

    .line 1042
    or-int/lit16 v0, v0, 0x2000

    .line 1044
    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_6

    .line 1046
    or-int/lit8 v0, v0, 0x8

    .line 1048
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_7

    .line 1050
    or-int/lit8 v0, v0, 0x10

    .line 1052
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_8

    .line 1054
    or-int/lit8 v0, v0, 0x20

    .line 1056
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_9

    .line 1058
    or-int/lit8 v0, v0, 0x20

    .line 1060
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_a

    .line 1062
    or-int/lit8 v0, v0, 0x40

    .line 1064
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_b

    .line 1066
    or-int/lit8 v0, v0, 0x20

    .line 1068
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_c

    .line 1070
    or-int/lit16 v0, v0, 0x80

    .line 1072
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 1076
    or-int/lit16 v0, v0, 0x100

    .line 1078
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_e

    .line 1080
    or-int/lit16 v0, v0, 0x200

    .line 1082
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_f

    .line 1084
    or-int/lit16 v0, v0, 0x400

    .line 1086
    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_10

    .line 1088
    or-int/lit16 v0, v0, 0x400

    .line 1090
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_11

    .line 1092
    or-int/lit16 v0, v0, 0x800

    .line 1094
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_12

    .line 1096
    or-int/lit16 v0, v0, 0x1000

    .line 1100
    :cond_12
    invoke-static {p0, p1, v0}, Landroid/content/res/Configuration$BaiduInjector;->multiTheme_dealThemeChange2(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v0

    .line 1103
    return v0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1301
    if-nez p1, :cond_1

    move v0, v1

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1302
    :cond_1
    if-eq p1, p0, :cond_0

    .line 1303
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "that"

    .prologue
    .line 1308
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1311
    :goto_0
    return v0

    .line 1309
    :catch_0
    move-exception v0

    .line 1311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    .line 1358
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1315
    const/16 v0, 0x11

    .line 1316
    .local v0, result:I
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1317
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v2

    .line 1318
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v2

    .line 1319
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 1320
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v2

    .line 1321
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v2

    .line 1322
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v2

    .line 1323
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v2

    .line 1324
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v2

    .line 1325
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v2

    .line 1326
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v2

    .line 1327
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v2

    .line 1328
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v2

    .line 1329
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v2

    .line 1330
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v2

    .line 1331
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v2

    .line 1332
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v2

    .line 1333
    invoke-static {p0, v0}, Landroid/content/res/Configuration$BaiduInjector;->hashCode(Landroid/content/res/Configuration;I)I

    move-result v0

    .line 1334
    return v0

    .line 1319
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 319
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .line 320
    .local v0, cur:I
    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1128
    if-nez p1, :cond_1

    move v1, v2

    .line 1148
    :cond_0
    :goto_0
    return v1

    .line 1132
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1137
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v3, :cond_0

    .line 1142
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .line 1143
    .local v0, diff:I
    const/high16 v3, 0x1

    if-le v0, v3, :cond_2

    move v1, v2

    .line 1146
    goto :goto_0

    .line 1148
    :cond_2
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 847
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 848
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1202
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 1203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1209
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 1211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 1212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 1215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 1216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 1217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 1219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 1223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 1224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 1225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 1226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 1227
    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V

    .line 1228
    return-void

    .line 1209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 1374
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1375
    .local v0, layoutDirection:I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1377
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 1345
    iput-object p1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 1347
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 1348
    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 652
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 653
    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    iput v0, p0, Landroid/content/res/Configuration;->mcc:I

    .line 654
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    iput v0, p0, Landroid/content/res/Configuration;->mnc:I

    .line 655
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 658
    :cond_0
    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 659
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 660
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 661
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 662
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 663
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    .line 664
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 665
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 666
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 667
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 668
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 669
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 670
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 671
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 672
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 673
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 674
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 675
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    .line 676
    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->setThemeChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 677
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 825
    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 827
    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 828
    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 829
    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 830
    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 831
    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 832
    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    .line 833
    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 834
    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    .line 835
    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 836
    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 837
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 838
    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 839
    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 840
    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 841
    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    .line 842
    invoke-static {p0}, Landroid/content/res/Configuration$BaiduInjector;->setThemeChangedToDefault(Landroid/content/res/Configuration;)V

    .line 843
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 681
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 683
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    .line 685
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    const-string v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    .line 691
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    const-string v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :goto_1
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    .line 697
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 702
    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .line 703
    .local v0, layoutDir:I
    sparse-switch v0, :sswitch_data_0

    .line 707
    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_4

    .line 711
    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_5

    .line 716
    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_6

    .line 721
    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_7

    .line 726
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    .line 736
    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    .line 743
    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    .line 750
    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 752
    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    .line 759
    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 761
    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    .line 765
    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 767
    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    .line 772
    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    .line 779
    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 781
    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    .line 786
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 788
    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    .line 792
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 794
    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    .line 800
    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    .line 806
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 808
    :goto_12
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    .line 809
    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 814
    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/Configuration$BaiduInjector;->appendToString(Landroid/content/res/Configuration;Ljava/lang/StringBuilder;)V

    .line 816
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 688
    .end local v0           #layoutDir:I
    :cond_1
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 694
    :cond_2
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 700
    :cond_3
    const-string v2, " ?locale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 704
    .restart local v0       #layoutDir:I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 705
    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 706
    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 713
    :cond_4
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 718
    :cond_5
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 723
    :cond_6
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 728
    :cond_7
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 731
    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 732
    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 733
    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 734
    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 735
    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 740
    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 742
    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 747
    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 748
    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 749
    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 753
    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 755
    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 756
    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 757
    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 758
    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 762
    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 764
    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 768
    :pswitch_e
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 769
    :pswitch_f
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 770
    :pswitch_10
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 771
    :pswitch_11
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 775
    :pswitch_12
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 776
    :pswitch_13
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 777
    :pswitch_14
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 778
    :pswitch_15
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 782
    :pswitch_16
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 783
    :pswitch_17
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 784
    :pswitch_18
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 785
    :pswitch_19
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 789
    :pswitch_1a
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 790
    :pswitch_1b
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 791
    :pswitch_1c
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 795
    :pswitch_1d
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 796
    :pswitch_1e
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 797
    :pswitch_1f
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 798
    :pswitch_20
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 799
    :pswitch_21
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 803
    :pswitch_22
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 804
    :pswitch_23
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 805
    :pswitch_24
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    .line 703
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    .line 730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 739
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    .line 746
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 752
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 761
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    .line 767
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 774
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 781
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 788
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 794
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch

    .line 802
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4
    .parameter "delta"

    .prologue
    .line 859
    const/4 v0, 0x0

    .line 860
    .local v0, changed:I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 861
    const/high16 v2, 0x4000

    or-int/2addr v0, v2

    .line 862
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 864
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    .line 865
    or-int/lit8 v0, v0, 0x1

    .line 866
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    .line 868
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_2

    .line 869
    or-int/lit8 v0, v0, 0x2

    .line 870
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    iput v2, p0, Landroid/content/res/Configuration;->mnc:I

    .line 872
    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 874
    :cond_3
    or-int/lit8 v0, v0, 0x4

    .line 875
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_1a

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    :goto_0
    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 878
    or-int/lit16 v0, v0, 0x2000

    .line 881
    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 883
    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    .line 884
    .local v1, deltaScreenLayoutDir:I
    if-eqz v1, :cond_5

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_5

    .line 886
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 887
    or-int/lit16 v0, v0, 0x2000

    .line 889
    :cond_5
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_6

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_7

    .line 891
    :cond_6
    or-int/lit8 v0, v0, 0x4

    .line 892
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 894
    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_8

    .line 896
    or-int/lit8 v0, v0, 0x8

    .line 897
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    .line 899
    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_9

    .line 901
    or-int/lit8 v0, v0, 0x10

    .line 902
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    .line 904
    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_a

    .line 906
    or-int/lit8 v0, v0, 0x20

    .line 907
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 909
    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_b

    .line 911
    or-int/lit8 v0, v0, 0x20

    .line 912
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 914
    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_c

    .line 916
    or-int/lit8 v0, v0, 0x40

    .line 917
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    .line 919
    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_d

    .line 921
    or-int/lit8 v0, v0, 0x20

    .line 922
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 924
    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_e

    .line 926
    or-int/lit16 v0, v0, 0x80

    .line 927
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    .line 929
    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_f

    .line 933
    or-int/lit16 v0, v0, 0x100

    .line 935
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-nez v2, :cond_1b

    .line 936
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 941
    :cond_f
    :goto_1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_11

    .line 943
    or-int/lit16 v0, v0, 0x200

    .line 944
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_10

    .line 945
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 948
    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_11

    .line 949
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 953
    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_12

    .line 955
    or-int/lit16 v0, v0, 0x400

    .line 956
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 958
    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_13

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_13

    .line 960
    or-int/lit16 v0, v0, 0x400

    .line 961
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 963
    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_14

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_14

    .line 965
    or-int/lit16 v0, v0, 0x800

    .line 966
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 968
    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_15

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_15

    .line 970
    or-int/lit16 v0, v0, 0x1000

    .line 971
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 973
    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_16

    .line 974
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    .line 976
    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_17

    .line 977
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    .line 979
    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_18

    .line 980
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    .line 982
    :cond_18
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_19

    .line 983
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    .line 987
    :cond_19
    invoke-static {p0, p1, v0}, Landroid/content/res/Configuration$BaiduInjector;->multiTheme_dealThemeChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    move-result v0

    .line 989
    return v0

    .line 875
    .end local v1           #deltaScreenLayoutDir:I
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 938
    .restart local v1       #deltaScreenLayoutDir:I
    :cond_1b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    .line 1160
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 1161
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1165
    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1166
    iget v0, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    iget v0, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1169
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    :goto_0
    iget-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v0, :cond_1

    .line 1177
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    :goto_1
    iget v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    iget v0, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1183
    iget v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    iget v0, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1190
    iget v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1193
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1194
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    iget v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    iget v0, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    invoke-static {p0, p1}, Landroid/content/res/Configuration$BaiduInjector;->writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V

    .line 1199
    return-void

    .line 1171
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
