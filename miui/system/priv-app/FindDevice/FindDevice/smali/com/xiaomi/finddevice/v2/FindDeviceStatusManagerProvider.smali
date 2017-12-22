.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;
.super Landroid/content/ContentProvider;
.source "FindDeviceStatusManagerProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 27
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.xiaomi.finddevice.provider"

    const-string/jumbo v2, "isOpen"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.xiaomi.finddevice.provider"

    const-string/jumbo v2, "isLastStatusOpen"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.xiaomi.finddevice.provider"

    const-string/jumbo v2, "isLocked"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.xiaomi.finddevice.provider"

    const-string/jumbo v2, "isLastStatusLocked"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.xiaomi.finddevice.provider"

    const-string/jumbo v2, "lastSessionUserId"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/xiaomi/finddevice/common/util/MultiuserUtils;->ensureRunAsOwnerUser()V

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Lcom/xiaomi/finddevice/Application;->waitReady()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    move-result-object v1

    .line 60
    .local v1, "findDeviceStatusManagerInternal":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
    const/4 v7, 0x0

    .line 61
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    sget-object v8, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 110
    .end local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    :goto_0
    return-object v7

    .line 52
    .end local v1    # "findDeviceStatusManagerInternal":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "Interrupted. returns NULL. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 54
    const/4 v8, 0x0

    return-object v8

    .line 63
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "findDeviceStatusManagerInternal":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
    .restart local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_0
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v5

    .line 64
    .local v5, "isOpen":Z
    new-instance v7, Landroid/database/MatrixCursor;

    .end local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 65
    const-string/jumbo v9, "isOpen"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 64
    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 67
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 68
    if-eqz v5, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 67
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 72
    .end local v5    # "isOpen":Z
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_1
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLastStatusOpen()Z

    move-result v3

    .line 73
    .local v3, "isLastStatusOpen":Z
    new-instance v7, Landroid/database/MatrixCursor;

    .end local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 74
    const-string/jumbo v9, "isLastStatusOpen"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 73
    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 76
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 77
    if-eqz v3, :cond_1

    const/4 v8, 0x1

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 76
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 81
    .end local v3    # "isLastStatusOpen":Z
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLocked(Landroid/content/Context;)Z

    move-result v4

    .line 82
    .local v4, "isLocked":Z
    new-instance v7, Landroid/database/MatrixCursor;

    .end local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 83
    const-string/jumbo v9, "isLocked"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 82
    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 85
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 86
    if-eqz v4, :cond_2

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 85
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 90
    .end local v4    # "isLocked":Z
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_3
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLastStatusLocked()Z

    move-result v2

    .line 91
    .local v2, "isLastStatusLocked":Z
    new-instance v7, Landroid/database/MatrixCursor;

    .end local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 92
    const-string/jumbo v9, "isLastStatusLocked"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 91
    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 95
    if-eqz v2, :cond_3

    const/4 v8, 0x1

    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 94
    invoke-virtual {v7, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 95
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 99
    .end local v2    # "isLastStatusLocked":Z
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_4
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getLastSessionUserId()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "lastSessionUserId":Ljava/lang/String;
    new-instance v7, Landroid/database/MatrixCursor;

    .end local v7    # "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    .line 101
    const-string/jumbo v9, "lastSessionUserId"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 100
    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 103
    .local v7, "matrixCursor":Landroid/database/MatrixCursor;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 104
    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 103
    invoke-virtual {v7, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
