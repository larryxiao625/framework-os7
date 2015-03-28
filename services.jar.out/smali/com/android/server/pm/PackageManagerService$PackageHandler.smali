.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 597
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 598
    return-void
.end method

.method private connectToService()Z
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 576
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 577
    .local v0, service:Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 578
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 581
    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 585
    :goto_0
    return v1

    .line 584
    :cond_0
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    .line 585
    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$302(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 590
    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 591
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 593
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 594
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 59
    .parameter "msg"

    .prologue
    .line 609
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1024
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 611
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 612
    .local v44, params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 617
    .local v33, idx:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v3, :cond_2

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v3

    if-nez v3, :cond_1

    .line 621
    const-string v3, "PackageManager"

    const-string v4, "Failed to bind to media container service"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_0

    .line 627
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v33

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 630
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v33

    move-object/from16 v1, v44

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 633
    if-nez v33, :cond_0

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 641
    .end local v33           #idx:I
    .end local v44           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IMediaContainerService;

    #setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->access$302(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 644
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    if-nez v3, :cond_5

    .line 646
    const-string v3, "PackageManager"

    const-string v4, "Cannot bind to media container service"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 649
    .restart local v44       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 651
    .end local v44           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 652
    .end local v32           #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 654
    .restart local v44       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v44, :cond_0

    .line 655
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 664
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 665
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v3, :cond_0

    .line 668
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 669
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v52

    .line 672
    .local v52, ubmsg:Landroid/os/Message;
    const-wide/16 v3, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 680
    .end local v52           #ubmsg:Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 686
    .end local v44           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_8
    const-string v3, "PackageManager"

    const-string v4, "Empty queue"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 692
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v3, :cond_9

    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 696
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
    const-string v3, "PackageManager"

    const-string v4, "Failed to bind to media container service"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 700
    .restart local v44       #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v44 .. v44}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 702
    .end local v44           #params:Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 711
    .end local v32           #i$:Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 712
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v3, :cond_0

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 717
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 728
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 734
    :pswitch_6
    const/16 v50, 0x0

    .line 736
    .local v50, size:I
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 738
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-nez v3, :cond_c

    .line 739
    monitor-exit v4

    goto/16 :goto_0

    .line 769
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 741
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v50

    .line 742
    if-gtz v50, :cond_d

    .line 744
    monitor-exit v4

    goto/16 :goto_0

    .line 746
    :cond_d
    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v43, v0

    .line 747
    .local v43, packages:[Ljava/lang/String;
    move/from16 v0, v50

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 748
    .local v25, components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v53, v0

    .line 749
    .local v53, uids:[I
    const/16 v31, 0x0

    .line 751
    .local v31, i:I
    const/16 v38, 0x0

    .local v38, n:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v3

    move/from16 v0, v38

    if-ge v0, v3, :cond_10

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v42

    .line 753
    .local v42, packageUserId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .line 756
    .local v35, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v0, v31

    move/from16 v1, v50

    if-ge v0, v1, :cond_f

    .line 757
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map$Entry;

    .line 758
    .local v30, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v43, v31

    .line 759
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    aput-object v3, v25, v31

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/pm/PackageSetting;

    .line 761
    .local v45, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v45, :cond_e

    move-object/from16 v0, v45

    iget v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v42

    invoke-static {v0, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    :goto_5
    aput v3, v53, v31

    .line 764
    add-int/lit8 v31, v31, 0x1

    .line 765
    goto :goto_4

    .line 761
    :cond_e
    const/4 v3, -0x1

    goto :goto_5

    .line 751
    .end local v30           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v45           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_f
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 767
    .end local v35           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v42           #packageUserId:I
    :cond_10
    move/from16 v50, v31

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 769
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    const/16 v31, 0x0

    :goto_6
    move/from16 v0, v31

    move/from16 v1, v50

    if-ge v0, v1, :cond_11

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v4, v43, v31

    const/4 v6, 0x1

    aget-object v7, v25, v31

    aget v9, v53, v31

    #calls: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v3, v4, v6, v7, v9}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 771
    add-int/lit8 v31, v31, 0x1

    goto :goto_6

    .line 774
    :cond_11
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 778
    .end local v25           #components:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31           #i:I
    .end local v38           #n:I
    .end local v43           #packages:[Ljava/lang/String;
    .end local v50           #size:I
    .end local v53           #uids:[I
    :pswitch_7
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 779
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 780
    .local v41, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    .line 781
    .local v56, userId:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_12

    const/16 v21, 0x1

    .line 782
    .local v21, andCode:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 783
    const/4 v3, -0x1

    move/from16 v0, v56

    if-ne v0, v3, :cond_13

    .line 784
    :try_start_2
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v57

    .line 785
    .local v57, users:[I
    move-object/from16 v24, v57

    .local v24, arr$:[I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v37, v0

    .local v37, len$:I
    const/16 v32, 0x0

    .local v32, i$:I
    :goto_8
    move/from16 v0, v32

    move/from16 v1, v37

    if-ge v0, v1, :cond_14

    aget v55, v24, v32

    .line 786
    .local v55, user:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v6, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v55

    move-object/from16 v1, v41

    move/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v3, v6}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 785
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    .line 781
    .end local v21           #andCode:Z
    .end local v24           #arr$:[I
    .end local v32           #i$:I
    .end local v37           #len$:I
    .end local v55           #user:I
    .end local v57           #users:[I
    :cond_12
    const/16 v21, 0x0

    goto :goto_7

    .line 790
    .restart local v21       #andCode:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v6, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v56

    move-object/from16 v1, v41

    move/from16 v2, v21

    invoke-direct {v6, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v3, v6}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 793
    :cond_14
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 794
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 793
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 799
    .end local v21           #andCode:Z
    .end local v41           #packageName:Ljava/lang/String;
    .end local v56           #userId:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 800
    .local v26, data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 801
    const/16 v27, 0x0

    .line 803
    .local v27, deleteOld:Z
    if-eqz v26, :cond_22

    .line 804
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v22, v0

    .line 805
    .local v22, args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v47, v0

    .line 807
    .local v47, res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v47

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 808
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    .line 809
    new-instance v5, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v5, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 810
    .local v5, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    move-object/from16 v0, v47

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    const/4 v3, 0x0

    new-array v14, v3, [I

    .line 816
    .local v14, updateUsers:[I
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v3, :cond_15

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v3, v3

    if-nez v3, :cond_1d

    .line 817
    :cond_15
    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .line 844
    .local v8, firstUsers:[I
    :cond_16
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 847
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v3, :cond_21

    const/16 v54, 0x1

    .line 848
    .local v54, update:Z
    :goto_9
    if-eqz v54, :cond_17

    .line 849
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 851
    :cond_17
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v5

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 854
    if-eqz v54, :cond_19

    .line 855
    const-string v9, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v5

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 858
    const-string v9, "android.intent.action.MY_PACKAGE_REPLACED"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 863
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #calls: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    #calls: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$600(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 868
    :cond_18
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v19, v0

    const/4 v3, 0x0

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v4, v19, v3

    .line 869
    .local v19, uidArray:[I
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 870
    .local v18, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v20, 0x0

    #calls: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v15 .. v20}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 875
    .end local v18           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #uidArray:[I
    :cond_19
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v3, :cond_1a

    .line 877
    const/16 v27, 0x1

    .line 881
    :cond_1a
    const/16 v3, 0xc26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getUnknownSourcesSettings()I
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 885
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v8           #firstUsers:[I
    .end local v14           #updateUsers:[I
    .end local v54           #update:Z
    :cond_1b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 887
    if-eqz v27, :cond_1c

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 889
    :try_start_4
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 890
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 892
    :cond_1c
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    if-eqz v3, :cond_0

    .line 894
    :try_start_5
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v47

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-interface {v3, v4, v6}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 895
    :catch_0
    move-exception v29

    .line 896
    .local v29, e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 819
    .end local v29           #e:Landroid/os/RemoteException;
    .restart local v5       #extras:Landroid/os/Bundle;
    .restart local v14       #updateUsers:[I
    :cond_1d
    const/4 v3, 0x0

    new-array v8, v3, [I

    .line 820
    .restart local v8       #firstUsers:[I
    const/16 v31, 0x0

    .restart local v31       #i:I
    :goto_a
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v3, v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_16

    .line 821
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v55, v3, v31

    .line 822
    .restart local v55       #user:I
    const/16 v34, 0x1

    .line 823
    .local v34, isNew:Z
    const/16 v36, 0x0

    .local v36, j:I
    :goto_b
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v3, v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_1e

    .line 824
    move-object/from16 v0, v47

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v3, v3, v36

    move/from16 v0, v55

    if-ne v3, v0, :cond_1f

    .line 825
    const/16 v34, 0x0

    .line 829
    :cond_1e
    if-eqz v34, :cond_20

    .line 830
    array-length v3, v8

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v39, v0

    .line 831
    .local v39, newFirst:[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v6, v8

    move-object/from16 v0, v39

    invoke-static {v8, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    array-length v3, v8

    aput v55, v39, v3

    .line 834
    move-object/from16 v8, v39

    .line 820
    .end local v39           #newFirst:[I
    :goto_c
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 823
    :cond_1f
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 836
    :cond_20
    array-length v3, v14

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v40, v0

    .line 837
    .local v40, newUpdate:[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v6, v14

    move-object/from16 v0, v40

    invoke-static {v14, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 839
    array-length v3, v14

    aput v55, v40, v3

    .line 840
    move-object/from16 v14, v40

    goto :goto_c

    .line 847
    .end local v31           #i:I
    .end local v34           #isNew:Z
    .end local v36           #j:I
    .end local v40           #newUpdate:[I
    .end local v55           #user:I
    :cond_21
    const/16 v54, 0x0

    goto/16 :goto_9

    .line 890
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v8           #firstUsers:[I
    .end local v14           #updateUsers:[I
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 900
    .end local v22           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v47           #res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_22
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bogus post-install token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 905
    .end local v26           #data:Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v27           #deleteOld:Z
    :pswitch_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    const/16 v46, 0x1

    .line 906
    .local v46, reportStatus:Z
    :goto_d
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    const/16 v28, 0x1

    .line 908
    .local v28, doGc:Z
    :goto_e
    if-eqz v28, :cond_23

    .line 910
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 912
    :cond_23
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_24

    .line 914
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/Set;

    .line 917
    .local v23, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    #calls: Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 919
    .end local v23           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_24
    if-eqz v46, :cond_0

    .line 922
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 923
    :catch_1
    move-exception v29

    .line 924
    .restart local v29       #e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "MountService not running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 905
    .end local v28           #doGc:Z
    .end local v29           #e:Landroid/os/RemoteException;
    .end local v46           #reportStatus:Z
    :cond_25
    const/16 v46, 0x0

    goto :goto_d

    .line 906
    .restart local v46       #reportStatus:Z
    :cond_26
    const/16 v28, 0x0

    goto :goto_e

    .line 929
    .end local v46           #reportStatus:Z
    :pswitch_a
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 931
    const/16 v3, 0xd

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 932
    const/16 v3, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 935
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 936
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 935
    :catchall_3
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3

    .line 939
    :pswitch_b
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 941
    const/16 v3, 0xe

    :try_start_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v56

    .line 943
    .restart local v56       #userId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v56

    invoke-virtual {v3, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_f

    .line 946
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v56           #userId:I
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v3

    .line 945
    .restart local v32       #i$:Ljava/util/Iterator;
    :cond_27
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 946
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 947
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 950
    .end local v32           #i$:Ljava/util/Iterator;
    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    .line 951
    .local v58, verificationId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .line 953
    .local v51, state:Lcom/android/server/pm/PackageVerificationState;
    if-eqz v51, :cond_0

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v3

    if-nez v3, :cond_0

    .line 954
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v22

    .line 955
    .restart local v22       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verification timed out for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 958
    const/16 v49, -0x16

    .line 960
    .local v49, ret:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #calls: Lcom/android/server/pm/PackageManagerService;->getDefaultVerificationResponse()I
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 961
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Continuing with installation of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x2

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, 0x1

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move/from16 v0, v58

    #calls: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v3, v0, v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 969
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    move-result v49

    .line 979
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move/from16 v1, v49

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v3, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 970
    :catch_2
    move-exception v29

    .line 971
    .restart local v29       #e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Could not contact the ContainerService"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 974
    .end local v29           #e:Landroid/os/RemoteException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    const/4 v6, -0x1

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move/from16 v0, v58

    #calls: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v3, v0, v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_10

    .line 985
    .end local v22           #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v49           #ret:I
    .end local v51           #state:Lcom/android/server/pm/PackageVerificationState;
    .end local v58           #verificationId:I
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v58, v0

    .line 987
    .restart local v58       #verificationId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/pm/PackageVerificationState;

    .line 988
    .restart local v51       #state:Lcom/android/server/pm/PackageVerificationState;
    if-nez v51, :cond_29

    .line 989
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid verification token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " received"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 993
    :cond_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Lcom/android/server/pm/PackageVerificationResponse;

    .line 995
    .local v48, response:Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v48

    iget v3, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v48

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v51

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 997
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v58

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1000
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v22

    .line 1003
    .restart local v22       #args:Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1004
    const/16 v49, -0x6e

    .line 1005
    .restart local v49       #ret:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->packageURI:Landroid/net/Uri;

    move-object/from16 v0, v48

    iget v6, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    move/from16 v0, v58

    #calls: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v3, v0, v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1008
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    #getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3

    move-result v49

    .line 1016
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move/from16 v1, v49

    #calls: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v3, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1009
    :catch_3
    move-exception v29

    .line 1010
    .restart local v29       #e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Could not contact the ContainerService"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1013
    .end local v29           #e:Landroid/os/RemoteException;
    .end local v49           #ret:I
    :cond_2a
    const/16 v49, -0x16

    .restart local v49       #ret:I
    goto :goto_11

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0xa

    .line 602
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
