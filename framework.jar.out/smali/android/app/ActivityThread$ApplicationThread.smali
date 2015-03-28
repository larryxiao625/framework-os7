.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    .line 600
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 595
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZ)V
    .locals 45
    .parameter "pw"
    .parameter "memInfo"
    .parameter "checkin"
    .parameter "dumpFullInfo"
    .parameter "dumpDalvik"

    .prologue
    .line 963
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long v10, v3, v5

    .line 964
    .local v10, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long v12, v3, v5

    .line 965
    .local v12, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long v14, v3, v5

    .line 967
    .local v14, nativeFree:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v37

    .line 969
    .local v37, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long v16, v3, v5

    .line 970
    .local v16, dalvikMax:J
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long v20, v3, v5

    .line 971
    .local v20, dalvikFree:J
    sub-long v18, v16, v20

    .line 972
    .local v18, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v39

    .line 973
    .local v39, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v41

    .line 974
    .local v41, viewRootInstanceCount:J
    const-class v3, Landroid/app/ContextImpl;

    invoke-static {v3}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v25

    .line 975
    .local v25, appContextInstanceCount:J
    const-class v3, Landroid/app/Activity;

    invoke-static {v3}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v23

    .line 976
    .local v23, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v32

    .line 977
    .local v32, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v33

    .line 978
    .local v33, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v29

    .line 979
    .local v29, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v30

    .line 980
    .local v30, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v28

    .line 981
    .local v28, binderDeathObjectCount:I
    const-class v3, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static {v3}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v35

    .line 982
    .local v35, openSslSocketCount:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v38

    .line 984
    .local v38, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v9, v3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v3 .. v21}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZILjava/lang/String;JJJJJJ)V

    .line 989
    if-eqz p3, :cond_3

    .line 994
    move-object/from16 v0, p1

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 995
    move-object/from16 v0, p1

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 996
    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 997
    move-object/from16 v0, p1

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 999
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1000
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1001
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1002
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1004
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1005
    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1008
    move-object/from16 v0, v38

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v3, v3, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1009
    move-object/from16 v0, v38

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v3, v3, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1010
    move-object/from16 v0, v38

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v3, v3, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1011
    move-object/from16 v0, v38

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v3, v3, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1012
    const/16 v34, 0x0

    .local v34, i:I
    :goto_1
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v34

    if-ge v0, v3, :cond_1

    .line 1013
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1014
    .local v31, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v31

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1016
    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v31

    iget-wide v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1017
    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v31

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1018
    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    const/16 v3, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 984
    .end local v31           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v34           #i:I
    :cond_0
    const-string/jumbo v9, "unknown"

    goto/16 :goto_0

    .line 1021
    .restart local v34       #i:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1072
    .end local v34           #i:I
    :cond_2
    :goto_2
    return-void

    .line 1026
    :cond_3
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    const-string v3, " Objects"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    const-string v3, "%21s %8d %21s %8d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Views:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "ViewRootImpl:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    const-string v3, "%21s %8d %21s %8d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "AppContexts:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "Activities:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1034
    const-string v3, "%21s %8d %21s %8d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Assets:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "AssetManagers:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    const-string v3, "%21s %8d %21s %8d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Local Binders:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "Proxy Binders:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    const-string v3, "%21s %8d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Death Recipients:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    const-string v3, "%21s %8d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "OpenSSL Sockets:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    const-string v3, " SQL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    const-string v3, "%21s %8d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "MEMORY_USED:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v38

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    const-string v3, "%21s %8d %21s %8d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "PAGECACHE_OVERFLOW:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, v38

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "MALLOC_SIZE:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v38

    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1051
    .local v22, N:I
    if-lez v22, :cond_7

    .line 1052
    const-string v3, " DATABASES"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    const-string v3, "  %8s %8s %14s %14s  %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "pgsz"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "dbsz"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "Lookaside(b)"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "cache"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "Dbname"

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    const/16 v34, 0x0

    .restart local v34       #i:I
    :goto_3
    move/from16 v0, v34

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1056
    move-object/from16 v0, v38

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1057
    .restart local v31       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v4, "  %8s %8s %14s %14s  %s"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v31

    iget-wide v7, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v43, 0x0

    cmp-long v3, v7, v43

    if-lez v3, :cond_4

    move-object/from16 v0, v31

    iget-wide v7, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :goto_4
    aput-object v3, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v31

    iget-wide v7, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide/16 v43, 0x0

    cmp-long v3, v7, v43

    if-lez v3, :cond_5

    move-object/from16 v0, v31

    iget-wide v7, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :goto_5
    aput-object v3, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v3, :cond_6

    move-object/from16 v0, v31

    iget v3, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    aput-object v3, v5, v6

    const/4 v3, 0x3

    move-object/from16 v0, v31

    iget-object v6, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x4

    move-object/from16 v0, v31

    iget-object v6, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    aput-object v6, v5, v3

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    add-int/lit8 v34, v34, 0x1

    goto :goto_3

    .line 1057
    :cond_4
    const-string v3, " "

    goto :goto_4

    :cond_5
    const-string v3, " "

    goto :goto_5

    :cond_6
    const-string v3, " "

    goto :goto_6

    .line 1066
    .end local v31           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v34           #i:I
    :cond_7
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v27

    .line 1067
    .local v27, assetAlloc:Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 1068
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    const-string v3, " Asset Allocations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 603
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #getter for: Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;
    invoke-static {v0}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 608
    :cond_1
    monitor-exit v1

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "instrumentationUiConnection"
    .parameter "debugMode"
    .parameter "enableOpenGlTrace"
    .parameter "isRestrictedBackupMode"
    .parameter "persistent"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 794
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p17, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p17, :cond_0

    .line 796
    invoke-static/range {p17 .. p17}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 799
    :cond_0
    move-object/from16 v0, p18

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 801
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 802
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 803
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 804
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 805
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 806
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 807
    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 808
    iput-object p10, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 809
    iput p11, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 810
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    .line 811
    move/from16 v0, p13

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 812
    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 813
    move-object/from16 v0, p15

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 814
    move-object/from16 v0, p16

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 815
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    .line 816
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 817
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    .line 818
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 819
    return-void
.end method

.method public clearDnsCache()V
    .locals 0

    .prologue
    .line 844
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 845
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 915
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 916
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "activitytoken"
    .parameter "prefix"
    .parameter "args"

    .prologue
    .line 924
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 926
    .local v2, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 927
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 928
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 929
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 930
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x88

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v6

    .line 932
    .local v6, e:Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "dumpActivity failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1082
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1083
    .local v1, pw:Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1084
    .local v0, printer:Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1086
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1076
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$700(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1077
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    .line 1078
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .parameter "managed"
    .parameter "path"
    .parameter "fd"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 896
    new-instance v2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 897
    .local v2, dhd:Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 898
    iput-object p3, v2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 899
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x87

    if-eqz p1, :cond_0

    move v3, v5

    :goto_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 900
    return-void

    :cond_0
    move v3, v4

    .line 899
    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "mem"
    .parameter "checkin"
    .parameter "dumpFullInfo"
    .parameter "dumpDalvik"
    .parameter "args"

    .prologue
    .line 952
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 953
    .local v6, fout:Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v1, pw:Ljava/io/PrintWriter;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 955
    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 959
    return-void

    .line 957
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "providertoken"
    .parameter "args"

    .prologue
    .line 938
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 940
    .local v2, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 941
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 942
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 943
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v6

    .line 945
    .local v6, e:Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "dumpProvider failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 857
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 859
    .local v2, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 860
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 861
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 862
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V
    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v6

    .line 864
    .local v6, e:Ljava/io/IOException;
    const-string v0, "ActivityThread"

    const-string v1, "dumpService failed"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 852
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 853
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 854
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"

    .prologue
    .line 889
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    .line 890
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 891
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 892
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7f

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v3, v0, v1, p4}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 893
    return-void

    .line 892
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 3
    .parameter "activityToken"
    .parameter "requestToken"
    .parameter "requestType"

    .prologue
    .line 1096
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1097
    .local v0, cmd:Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1098
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1099
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1100
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1101
    return-void
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 830
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 831
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 884
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 885
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"
    .parameter "processState"

    .prologue
    .line 748
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 749
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 750
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 751
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 752
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 757
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 758
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 835
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 836
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 919
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 920
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"

    .prologue
    .line 718
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 719
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 720
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 721
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 723
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 724
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "processState"

    .prologue
    .line 737
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 738
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 739
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 740
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 741
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 743
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 744
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 701
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 703
    return-void

    .line 701
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"

    .prologue
    .line 728
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 729
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 730
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 732
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 733
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 822
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 823
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1143
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 4
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "curConfig"
    .parameter "compatInfo"
    .parameter "procState"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p9, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p10, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p7, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 660
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 662
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 663
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 664
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 665
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 666
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 667
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 669
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 670
    iput-object p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 672
    iput-boolean p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 673
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 675
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    .line 676
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 677
    move/from16 v0, p15

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    .line 679
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 681
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 682
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 881
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 693
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 694
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 696
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 697
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 613
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x66

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v1, p1, v0, p4}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 618
    return-void

    .line 613
    :cond_0
    const/16 v0, 0x65

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 10
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"
    .parameter "sendingUser"
    .parameter "processState"

    .prologue
    .line 708
    const/4 v2, 0x0

    move/from16 v0, p9

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 709
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object v2, p1

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 711
    .local v1, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 712
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 713
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x71

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 714
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .parameter "sendingUser"
    .parameter "processState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 875
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 877
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 687
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 689
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZ)V
    .locals 3
    .parameter "token"
    .parameter "processState"
    .parameter "isForward"

    .prologue
    const/4 v0, 0x0

    .line 639
    invoke-virtual {p0, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 640
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 641
    return-void
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 645
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 646
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 647
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 648
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "taskRemoved"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 770
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 771
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 772
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 773
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 774
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 775
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 777
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 778
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 634
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 635
    return-void

    .line 634
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 622
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 625
    return-void

    .line 622
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 781
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 782
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 826
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 827
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "drawComplete"

    .prologue
    .line 1119
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x90

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1120
    return-void

    .line 1119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1116
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 761
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 762
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 763
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 766
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 628
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 631
    return-void

    .line 628
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1105
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"
    .parameter "pacFileUrl"

    .prologue
    .line 848
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public setProcessState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1124
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 908
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1091
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "pkg"
    .parameter "info"

    .prologue
    .line 1108
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1109
    .local v0, ucd:Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1110
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1111
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    #calls: Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1112
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 1
    .parameter "processState"
    .parameter "fromIpc"

    .prologue
    .line 1127
    monitor-enter p0

    .line 1128
    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v0, p1, :cond_0

    .line 1129
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1137
    :cond_0
    monitor-exit p0

    .line 1138
    return-void

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 840
    return-void
.end method
