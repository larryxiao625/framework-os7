.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# static fields
.field static final MSG_REPORT_PRIMARY_CLIP_CHANGED:I = 0x1

.field private static sService:Landroid/content/IClipboard;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    .line 71
    new-instance v0, Landroid/content/ClipboardManager$2;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$2;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addExtra(Landroid/content/ClipData;)V
    .locals 8
    .parameter "clip"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 117
    .local v1, currClip:Landroid/content/ClipData;
    if-nez v1, :cond_1

    .line 129
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {v1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_2

    move v3, v5

    .line 122
    .local v3, isCurrText:Z
    :goto_0
    invoke-virtual {p1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_3

    move v4, v5

    .line 123
    .local v4, isNewText:Z
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 125
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    .line 126
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #isCurrText:Z
    .end local v4           #isNewText:Z
    :cond_2
    move v3, v6

    .line 121
    goto :goto_0

    .restart local v3       #isCurrText:Z
    :cond_3
    move v4, v6

    .line 122
    goto :goto_1
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    .line 99
    sget-object v2, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_0
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    .line 105
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 103
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 104
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    .line 105
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4
    .parameter "what"

    .prologue
    .line 184
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v0

    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 3

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 3

    .prologue
    .line 166
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 215
    .local v0, clip:Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPrimaryClip()Z
    .locals 3

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 3

    .prologue
    .line 235
    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 3
    .parameter "what"

    .prologue
    .line 197
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v0

    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    invoke-interface {v0, v2}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method reportPrimaryClipChanged()V
    .locals 5

    .prologue
    .line 244
    iget-object v4, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 245
    :try_start_0
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 246
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 247
    monitor-exit v4

    .line 255
    :cond_0
    return-void

    .line 249
    :cond_1
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 250
    .local v2, listeners:[Ljava/lang/Object;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 253
    aget-object v3, v2, v1

    check-cast v3, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v3}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #listeners:[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 2
    .parameter "clip"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/content/ClipboardManager;->addExtra(Landroid/content/ClipData;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    .line 144
    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 228
    return-void
.end method
