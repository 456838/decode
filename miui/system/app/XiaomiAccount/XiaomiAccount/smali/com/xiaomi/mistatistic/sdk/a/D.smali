.class public Lcom/xiaomi/mistatistic/sdk/a/D;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String;

.field public static ahm:Z

.field private static ahn:Lcom/xiaomi/mistatistic/sdk/a/J;


# instance fields
.field private aho:Lcom/xiaomi/mistatistic/sdk/a;

.field private ahp:Landroid/content/ServiceConnection;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->e:Z

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/I;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/a/I;-><init>(Lcom/xiaomi/mistatistic/sdk/a/D;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahp:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/J;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    return-void
.end method

.method public static arg(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 8

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aio:Ljava/lang/String;

    iput-object v6, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aip:J

    iput-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    iput-object v7, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aiq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ark(Lcom/xiaomi/mistatistic/sdk/a/D;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->e:Z

    return p1
.end method

.method static synthetic arl(Lcom/xiaomi/mistatistic/sdk/a/D;Lcom/xiaomi/mistatistic/sdk/a;)Lcom/xiaomi/mistatistic/sdk/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    return-object p1
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    if-nez v1, :cond_1

    :goto_1
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahp:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ensureServiceBinded"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v1, "unbind service before bind it again!"

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahp:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-boolean v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/D;->arf(J)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/D;->f()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->e:Z

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->a(J)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process getAll, result size is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_5
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getAllEventOrderByTimestampDescend"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public aqZ(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/D;->ara(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/D;->f()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->e:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-object v8

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a;->ats(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "process query, result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "queryCustomEvent"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method public ara(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 10

    const/4 v8, 0x0

    sget-object v9, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "category=? AND key=?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    :goto_1
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v8

    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arg(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_4
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "queryCustomEvent exception"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v1, :cond_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_5
    if-nez v8, :cond_4

    :goto_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public arb(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arc(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "StatEventPojo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "insertNewEvent"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public arc(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "category"

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aio:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "key"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ts"

    iget-wide v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aip:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "type"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "value"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aiq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->aiq:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "mistat_event"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "EventDAO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error to insert data into DB, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public ard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/D;->are(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "newValue"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "updateEventByKeyAndCategory"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public are(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/J;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "mistat_event"

    const-string/jumbo v4, "category=? AND key=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "EventDAO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error to update data from DB, key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public arf(J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v11, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v11

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_1
    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "ts<?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string/jumbo v7, "ts DESC"

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    if-nez v8, :cond_4

    :cond_0
    move-object v1, v8

    :goto_0
    if-nez v1, :cond_5

    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_1
    if-nez v1, :cond_2

    :cond_2
    monitor-exit v11

    return-object v10

    :cond_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v10

    :cond_4
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ts"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const-string/jumbo v1, "mistat_event"

    const-string/jumbo v3, "ts<? AND ts>=?"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string/jumbo v7, "ts DESC"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arg(Landroid/database/Cursor;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_3
    :try_start_5
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while reading data from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v9

    :goto_4
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method public arh(J)V
    .locals 7

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EventDAO"

    const-string/jumbo v2, "deleteEventsByTS, ts:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "mistat_event"

    const-string/jumbo v3, "ts<=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while deleting event by ts from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public ari(JJ)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/a/D;->arj(JJ)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "startTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "deleteEventsByStartAndEndTS"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public arj(JJ)V
    .locals 7

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "EventDAO"

    const-string/jumbo v2, "deleteEventsByStartAndEndTS, start:%d, end:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "mistat_event"

    const-string/jumbo v3, "ts<=? AND ts>=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while deleting event by ts from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public b()V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/a/D;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "deleteOldEvents"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v3}, Lcom/xiaomi/mistatistic/sdk/a/J;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "mistat_event"

    const-string/jumbo v5, "ts<=? and category <> ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const-string/jumbo v1, "mistat_basic"

    aput-object v1, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string/jumbo v1, "quality_monitor"

    const-string/jumbo v3, "delete_old_events"

    int-to-long v4, v0

    invoke-static {v1, v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/b;->ate(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "EventDAO"

    const-string/jumbo v3, "Error while deleting out-of-date data from DB"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public d()I
    .locals 8

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahm:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/a/D;->e()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/D;->f()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->e:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/D;->aho:Lcom/xiaomi/mistatistic/sdk/a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/a;->a()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process getCount , result is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/aa;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "getEventCount"

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public e()I
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "mistat_event"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v1, :cond_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v10

    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v1, :cond_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    monitor-exit v9

    return v0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_5
    const-string/jumbo v2, "EventDAO"

    const-string/jumbo v3, "Error while getting count from DB"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_4

    :goto_4
    :try_start_6
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_5
    if-nez v8, :cond_5

    :goto_6
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/D;->ahn:Lcom/xiaomi/mistatistic/sdk/a/J;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/a/J;->close()V

    throw v0

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3
.end method
