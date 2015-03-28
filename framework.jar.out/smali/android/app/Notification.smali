.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$Action;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_SCORE_MODIFIED:Ljava/lang/String; = "android.scoreModified"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final HEADS_UP_ALLOWED:I = 0x1

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final HEADS_UP_REQUESTED:I = 0x2

.field public static final KIND_CALL:Ljava/lang/String; = "android.call"

.field public static final KIND_EMAIL:Ljava/lang/String; = "android.email"

.field public static final KIND_EVENT:Ljava/lang/String; = "android.event"

.field public static final KIND_MESSAGE:Ljava/lang/String; = "android.message"

.field public static final KIND_PROMO:Ljava/lang/String; = "android.promo"

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Notification"


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public audioStreamType:I

.field public bigContentView:Landroid/widget/RemoteViews;

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;

.field public defaults:I

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public iconLevel:I

.field public kind:[Ljava/lang/String;

.field public largeIcon:Landroid/graphics/Bitmap;

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field public number:I

.field public priority:I

.field public simId:J

.field public simInfoType:I

.field public sound:Landroid/net/Uri;

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;

.field public vibrate:[J

.field public when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->priority:I

    .line 693
    invoke-direct {p0}, Landroid/app/Notification;->setSimIdAndInfoType()V

    .line 695
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 1
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 742
    iput p1, p0, Landroid/app/Notification;->icon:I

    .line 743
    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 744
    iput-wide p3, p0, Landroid/app/Notification;->when:J

    .line 745
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "when"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 703
    iput-wide p4, p0, Landroid/app/Notification;->when:J

    .line 704
    iput p2, p0, Landroid/app/Notification;->icon:I

    .line 705
    iput-object p3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 708
    invoke-direct {p0}, Landroid/app/Notification;->setSimIdAndInfoType()V

    .line 711
    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, p6, p7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 713
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 461
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 754
    .local v0, version:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/Notification;->when:J

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 760
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 763
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 766
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 767
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 769
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 770
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 772
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 773
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 775
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 778
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 782
    :cond_6
    invoke-direct {p0, p1}, Landroid/app/Notification;->setSimIdAndInfoType(Landroid/os/Parcel;)V

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 793
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 796
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 802
    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 805
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 807
    :cond_8
    return-void
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "cs"

    .prologue
    .line 925
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 931
    .end local p0
    :cond_0
    return-object p0
.end method

.method private setSimIdAndInfoType()V
    .locals 2

    .prologue
    .line 717
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification;->simInfoType:I

    .line 718
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/Notification;->simId:J

    .line 719
    return-void
.end method

.method private setSimIdAndInfoType(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->simInfoType:I

    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->simId:J

    .line 724
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 811
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 812
    .local v0, that:Landroid/app/Notification;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 813
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .locals 10
    .parameter "that"
    .parameter "heavy"

    .prologue
    const/4 v9, 0x0

    .line 822
    iget-wide v7, p0, Landroid/app/Notification;->when:J

    iput-wide v7, p1, Landroid/app/Notification;->when:J

    .line 823
    iget v7, p0, Landroid/app/Notification;->icon:I

    iput v7, p1, Landroid/app/Notification;->icon:I

    .line 824
    iget v7, p0, Landroid/app/Notification;->number:I

    iput v7, p1, Landroid/app/Notification;->number:I

    .line 827
    iget-object v7, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v7, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 828
    iget-object v7, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v7, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 829
    iget-object v7, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v7, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 831
    iget-object v7, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    .line 832
    iget-object v7, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 834
    :cond_0
    if-eqz p2, :cond_1

    iget-object v7, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_1

    .line 835
    iget-object v7, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 837
    :cond_1
    if-eqz p2, :cond_2

    iget-object v7, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_2

    .line 838
    iget-object v7, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 840
    :cond_2
    if-eqz p2, :cond_3

    iget-object v7, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    .line 841
    iget-object v7, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 843
    :cond_3
    iget v7, p0, Landroid/app/Notification;->iconLevel:I

    iput v7, p1, Landroid/app/Notification;->iconLevel:I

    .line 844
    iget-object v7, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v7, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 845
    iget v7, p0, Landroid/app/Notification;->audioStreamType:I

    iput v7, p1, Landroid/app/Notification;->audioStreamType:I

    .line 848
    iget v7, p0, Landroid/app/Notification;->simInfoType:I

    iput v7, p1, Landroid/app/Notification;->simInfoType:I

    .line 849
    iget-wide v7, p0, Landroid/app/Notification;->simId:J

    iput-wide v7, p1, Landroid/app/Notification;->simId:J

    .line 852
    iget-object v6, p0, Landroid/app/Notification;->vibrate:[J

    .line 853
    .local v6, vibrate:[J
    if-eqz v6, :cond_4

    .line 854
    array-length v0, v6

    .line 855
    .local v0, N:I
    new-array v5, v0, [J

    iput-object v5, p1, Landroid/app/Notification;->vibrate:[J

    .line 856
    .local v5, vib:[J
    invoke-static {v6, v9, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    .end local v0           #N:I
    .end local v5           #vib:[J
    :cond_4
    iget v7, p0, Landroid/app/Notification;->ledARGB:I

    iput v7, p1, Landroid/app/Notification;->ledARGB:I

    .line 860
    iget v7, p0, Landroid/app/Notification;->ledOnMS:I

    iput v7, p1, Landroid/app/Notification;->ledOnMS:I

    .line 861
    iget v7, p0, Landroid/app/Notification;->ledOffMS:I

    iput v7, p1, Landroid/app/Notification;->ledOffMS:I

    .line 862
    iget v7, p0, Landroid/app/Notification;->defaults:I

    iput v7, p1, Landroid/app/Notification;->defaults:I

    .line 864
    iget v7, p0, Landroid/app/Notification;->flags:I

    iput v7, p1, Landroid/app/Notification;->flags:I

    .line 866
    iget v7, p0, Landroid/app/Notification;->priority:I

    iput v7, p1, Landroid/app/Notification;->priority:I

    .line 868
    iget-object v4, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 869
    .local v4, thiskind:[Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 870
    array-length v0, v4

    .line 871
    .restart local v0       #N:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p1, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 872
    .local v3, thatkind:[Ljava/lang/String;
    invoke-static {v4, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    .end local v0           #N:I
    .end local v3           #thatkind:[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_6

    .line 877
    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    iget-object v8, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 879
    iget-object v7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :cond_6
    :goto_0
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v7, :cond_7

    .line 887
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    new-array v7, v7, [Landroid/app/Notification$Action;

    iput-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 888
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 889
    iget-object v7, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v8, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v8

    aput-object v8, v7, v2

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 880
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 881
    .local v1, e:Landroid/os/BadParcelableException;
    const-string v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not unparcel extras from notification: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    const/4 v7, 0x0

    iput-object v7, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    .line 893
    .end local v1           #e:Landroid/os/BadParcelableException;
    :cond_7
    if-eqz p2, :cond_8

    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_8

    .line 894
    iget-object v7, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v7

    iput-object v7, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 897
    :cond_8
    if-nez p2, :cond_9

    .line 898
    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    .line 900
    :cond_9
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method public final lightenPayload()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 908
    iput-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 909
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 910
    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 911
    iput-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 912
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.picture"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 917
    :cond_0
    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "context"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "contentIntent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1068
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1072
    .local v0, builder:Landroid/app/Notification$Builder;
    iget-wide v1, p0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1073
    iget v1, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1074
    iget v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1075
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1076
    iget v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 1077
    iget v1, p0, Landroid/app/Notification;->flags:I

    #setter for: Landroid/app/Notification$Builder;->mFlags:I
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$102(Landroid/app/Notification$Builder;I)I

    .line 1078
    iget-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v2, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 1079
    iget v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1080
    iget-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 1083
    if-eqz p2, :cond_0

    .line 1084
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1086
    :cond_0
    if-eqz p3, :cond_1

    .line 1087
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1089
    :cond_1
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1090
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    .line 1091
    return-void
.end method

.method public setUser(Landroid/os/UserHandle;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 1158
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1159
    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1161
    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 1164
    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 1167
    :cond_2
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 1168
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 1170
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "Notification(pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1098
    const-string v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_2

    .line 1100
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :goto_0
    const-string v3, " vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1109
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    :goto_1
    const-string v3, " sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    .line 1126
    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :goto_2
    const-string v3, " defaults=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    const-string v3, " kind=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    if-nez v3, :cond_9

    .line 1138
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_0
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_1

    .line 1147
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const-string v3, " action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1104
    :cond_2
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1110
    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_6

    .line 1111
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 1112
    .local v0, N:I
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 1114
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v3, v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1115
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1113
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1117
    :cond_4
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 1118
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1120
    :cond_5
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1122
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_6
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1127
    :cond_7
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_8

    .line 1128
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1130
    :cond_8
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1140
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1141
    if-lez v1, :cond_a

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_a
    iget-object v3, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 943
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget-wide v0, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 946
    iget v0, p0, Landroid/app/Notification;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget v0, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 954
    :goto_0
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 956
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 960
    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 961
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 966
    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 967
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 968
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 972
    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 973
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 978
    :goto_4
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 979
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 985
    :goto_5
    iget v0, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    iget v0, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 989
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 990
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 996
    :goto_6
    iget v0, p0, Landroid/app/Notification;->simInfoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    iget-wide v0, p0, Landroid/app/Notification;->simId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1000
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1002
    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 1008
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1014
    :goto_7
    iget v0, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    iget-object v0, p0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1020
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1022
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_8

    .line 1023
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1028
    :goto_8
    return-void

    .line 952
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 958
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 964
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 970
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    .line 976
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    .line 982
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    .line 992
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 1011
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 1026
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8
.end method
