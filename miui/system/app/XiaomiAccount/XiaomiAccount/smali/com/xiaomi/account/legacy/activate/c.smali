.class public Lcom/xiaomi/account/legacy/activate/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static final ko:Ljava/lang/String;

.field private static volatile kq:Lcom/xiaomi/account/legacy/activate/c;


# instance fields
.field private kp:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY, %s STRING, %s STRING, %s STRING, %s STRING, %s STRING, %s STRING, %s INTEGER, %s INTEGER DEFAULT 0)"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "activate_info"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "_id"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "simId"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "phone"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "userId"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "passToken"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "vkey1"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "vkey2"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "nextAutoActivationTime"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "insertedToServer"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/legacy/activate/c;->ko:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/account/legacy/activate/c;->kq:Lcom/xiaomi/account/legacy/activate/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "activate_info.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/xiaomi/account/legacy/activate/c;->kp:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized ld(Landroid/content/Context;)Lcom/xiaomi/account/legacy/activate/c;
    .locals 3

    const-class v1, Lcom/xiaomi/account/legacy/activate/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/account/legacy/activate/c;->kq:Lcom/xiaomi/account/legacy/activate/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/legacy/activate/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/account/legacy/activate/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/account/legacy/activate/c;->kq:Lcom/xiaomi/account/legacy/activate/c;

    :cond_0
    sget-object v0, Lcom/xiaomi/account/legacy/activate/c;->kq:Lcom/xiaomi/account/legacy/activate/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private le(Landroid/database/sqlite/SQLiteDatabase;Lcom/xiaomi/account/legacy/activate/b;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string/jumbo v1, "simId"

    iget-object v2, p2, Lcom/xiaomi/account/legacy/activate/b;->kf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    iget-object v2, p2, Lcom/xiaomi/account/legacy/activate/b;->kg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    iget-object v2, p2, Lcom/xiaomi/account/legacy/activate/b;->kh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "passToken"

    iget-object v2, p2, Lcom/xiaomi/account/legacy/activate/b;->ki:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "vkey1"

    iget-object v2, p2, Lcom/xiaomi/account/legacy/activate/b;->kl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "vkey2"

    iget-object v2, p2, Lcom/xiaomi/account/legacy/activate/b;->km:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "nextAutoActivationTime"

    iget-wide v2, p2, Lcom/xiaomi/account/legacy/activate/b;->kk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "insertedToServer"

    iget-boolean v2, p2, Lcom/xiaomi/account/legacy/activate/b;->kj:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "activate_info"

    const-string/jumbo v2, "simId=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p2, Lcom/xiaomi/account/legacy/activate/b;->kf:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v0, "ActivateDatabase"

    const-string/jumbo v1, "1 entry updated in activated info database"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "activate_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string/jumbo v0, "ActivateDatabase"

    const-string/jumbo v1, "1 entry inserted in activated info database"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private lf(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string/jumbo v0, "ALTER TABLE activate_info ADD COLUMN insertedToServer INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private lg(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/account/legacy/activate/c;->ko:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/a/a;->atN()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/legacy/activate/c;->kp:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/account/legacy/activate/a;->lc(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/legacy/activate/c;->kp:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/account/legacy/activate/a;->lb(Landroid/content/Context;Ljava/util/List;)Z

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/legacy/activate/c;->kp:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/account/legacy/activate/a;->la(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/account/legacy/activate/c;->kp:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/account/legacy/activate/a;->kZ(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/legacy/activate/b;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/account/legacy/activate/c;->le(Landroid/database/sqlite/SQLiteDatabase;Lcom/xiaomi/account/legacy/activate/b;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string/jumbo v0, "ActivateDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-gt p3, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/account/legacy/activate/c;->lf(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :pswitch_1
    const/4 v0, 0x2

    if-gt p3, v0, :cond_1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "ActivateDatabase"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/account/legacy/activate/c;->lg(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "ActivateDatabase"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
