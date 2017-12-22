.class public Lcom/xiaomi/finddevice/common/PersistentStroage;
.super Ljava/lang/Object;
.source "PersistentStroage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;,
        Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;
    }
.end annotation


# static fields
.field private static final PERSISTENT_PATHS:[Ljava/lang/String;

.field private static final PERSISTENT_PATHS_FILTERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "/persist"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "/protect_s"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "/amt"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "/data/miui"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 23
    sput-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS:[Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sput-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "lcsh92_wet_tdd"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "lcsh92_wet_jb9"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "HM2014501"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "nikel"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "nikeh"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "omega"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "HM2014011"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "cappu"

    const-string/jumbo v3, "/persist"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "meri"

    const-string/jumbo v3, "/amt"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearIfNotRegularFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->recursiveRemove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 67
    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "ctx == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string/jumbo v6, "TextUtils.isEmpty(tag) || TextUtils.isEmpty(name)"

    .line 69
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_2
    sget-object v6, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_5

    aget-object v4, v6, v5

    .line 74
    .local v4, "psPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/xiaomi/finddevice/common/PersistentStroage;->filterOutPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "dir":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "file":Ljava/lang/String;
    const/4 v2, 0x0

    .line 83
    .local v2, "exists":Z
    :try_start_0
    invoke-static {v3}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->exists(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 91
    .local v2, "exists":Z
    if-nez v2, :cond_4

    .line 92
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "File does not exist: "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    .local v2, "exists":Z
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "Cannot determine whether the file exists: "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 86
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    .line 87
    invoke-static {v3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->tryRemove(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v1    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .local v2, "exists":Z
    :cond_4
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "Remove: "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 99
    :try_start_1
    invoke-static {v3}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->recursiveRemove(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "Successfully removed: "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 100
    :catch_1
    move-exception v1

    .line 101
    .restart local v1    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "Cannot remove: "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 102
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    goto :goto_1

    .line 63
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .end local v2    # "exists":Z
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "psPath":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static ensureDir(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "parent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 293
    invoke-static {v0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->ensureDir(Ljava/lang/String;)V

    .line 296
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->isDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->recursiveRemove(Ljava/lang/String;)V

    .line 299
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->mkdir(Ljava/lang/String;)V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->mkdir(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static filterOutPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 232
    const/16 v0, 0x15

    .line 234
    .local v0, "ANDROID_L_SDK_INT":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 235
    const-string/jumbo v3, "/data/miui"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 234
    if-eqz v3, :cond_0

    .line 236
    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Filter out /data/miui on L and later versions. "

    aput-object v4, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 237
    return v7

    .line 240
    :cond_0
    sget-object v3, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS_FILTERS:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "f$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 241
    .local v1, "f":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Filter out %s on %s. "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 243
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v6, v5, v8

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v5, v7

    .line 242
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 244
    return v7

    .line 248
    .end local v1    # "f":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return v8
.end method

.method private static onStroageCorrupted(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 252
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 253
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyStorageCorrupted(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public static readTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;)V
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dataHandler"    # Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;

    .prologue
    .line 113
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 115
    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "ctx == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 116
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-nez p3, :cond_2

    .line 117
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 118
    const-string/jumbo v10, "TextUtils.isEmpty(tag) || TextUtils.isEmpty(name) || dataHandler == null"

    .line 117
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 121
    :cond_2
    sget-object v10, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_5

    aget-object v8, v10, v9

    .line 122
    .local v8, "psPath":Ljava/lang/String;
    invoke-static {v8}, Lcom/xiaomi/finddevice/common/PersistentStroage;->filterOutPath(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 121
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 126
    :cond_3
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "dir":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v12, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "file":Ljava/lang/String;
    const/4 v6, 0x0

    .line 131
    .local v6, "exists":Z
    :try_start_0
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->exists(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 139
    .local v6, "exists":Z
    if-nez v6, :cond_4

    .line 140
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "File does not exist: "

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v12}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 132
    .local v6, "exists":Z
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "Cannot determine whether the file exists: "

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    aput-object v4, v12, v13

    invoke-static {v12}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 134
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    .line 135
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PersistentStroage;->tryRemove(Ljava/lang/String;)V

    goto :goto_1

    .line 144
    .end local v4    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .local v6, "exists":Z
    :cond_4
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "Read: "

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v12}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "data":[B
    :try_start_1
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PersistentStroage;->reliableTinyDataRead(Ljava/lang/String;)[B
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 162
    .local v1, "data":[B
    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;->onHandleData([B)V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException; {:try_start_2 .. :try_end_2} :catch_3

    .line 170
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "Successfully read: "

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v9}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 111
    .end local v1    # "data":[B
    .end local v2    # "dir":Ljava/lang/String;
    .end local v6    # "exists":Z
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "psPath":Ljava/lang/String;
    :cond_5
    return-void

    .line 154
    .local v1, "data":[B
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v6    # "exists":Z
    .restart local v7    # "file":Ljava/lang/String;
    .restart local v8    # "psPath":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 155
    .local v5, "e":Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "Cannot read: "

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    aput-object v5, v12, v13

    invoke-static {v12}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 156
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    .line 157
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PersistentStroage;->tryRemove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 149
    .end local v5    # "e":Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;
    :catch_2
    move-exception v4

    .line 150
    .restart local v4    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "Cannot read: "

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    aput-object v4, v12, v13

    invoke-static {v12}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 151
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    .line 152
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PersistentStroage;->tryRemove(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 163
    .end local v4    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .local v1, "data":[B
    :catch_3
    move-exception v3

    .line 164
    .local v3, "e":Lcom/xiaomi/finddevice/common/PersistentStroage$BadDataException;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "Bad data read from: "

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    invoke-static {v12}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 165
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    .line 166
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PersistentStroage;->tryRemove(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static reliableTinyDataRead(Ljava/lang/String;)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;,
            Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->readTinyFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->unfold([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static reliableTinyDataSave(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->wrap([B)[B

    move-result-object p1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".rl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "bufferFile":Ljava/lang/String;
    move-object v1, p0

    .line 268
    .local v1, "targetFile":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->clearIfNotRegularFile(Ljava/lang/String;)V

    .line 269
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->clearIfNotRegularFile(Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->writeTinyFile(Ljava/lang/String;Z[B)V

    .line 272
    invoke-static {v0, p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->move(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private static tryRemove(Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Try to remove: "

    aput-object v2, v1, v3

    aput-object p0, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 178
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->recursiveRemove(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Successfully removed: "

    aput-object v2, v1, v3

    aput-object p0, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 175
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Failed to remove: "

    aput-object v2, v1, v3

    aput-object p0, v1, v4

    aput-object v0, v1, v5

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static writeTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 187
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 189
    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "ctx == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p3, :cond_2

    .line 191
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 192
    const-string/jumbo v5, "TextUtils.isEmpty(tag) || TextUtils.isEmpty(name) || data == null"

    .line 191
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_2
    sget-object v5, Lcom/xiaomi/finddevice/common/PersistentStroage;->PERSISTENT_PATHS:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v3, v5, v4

    .line 196
    .local v3, "psPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->filterOutPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    :cond_3
    const/4 v2, 0x0

    .line 202
    .local v2, "exists":Z
    :try_start_0
    invoke-static {v3}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->exists(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 209
    .local v2, "exists":Z
    if-nez v2, :cond_4

    .line 210
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Persistent path does not exist: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 203
    .local v2, "exists":Z
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Cannot determine whether the persistent path exists: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 205
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    goto :goto_1

    .line 214
    .end local v1    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .local v2, "exists":Z
    :cond_4
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Write to persistent path: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 217
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "dir":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->ensureDir(Ljava/lang/String;)V

    .line 219
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->reliableTinyDataSave(Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Successfully written to persistent path: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 220
    .end local v0    # "dir":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 221
    .restart local v1    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Cannot write to persistent path: "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 222
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->onStroageCorrupted(Landroid/content/Context;)V

    goto :goto_1

    .line 185
    .end local v1    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .end local v2    # "exists":Z
    .end local v3    # "psPath":Ljava/lang/String;
    :cond_5
    return-void
.end method
