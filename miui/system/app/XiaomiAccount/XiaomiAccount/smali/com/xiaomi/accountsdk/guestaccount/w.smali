.class public final Lcom/xiaomi/accountsdk/guestaccount/w;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static final OT:Ljava/lang/String;

.field private static final OU:Ljava/lang/String;

.field private static volatile OV:Lcom/xiaomi/accountsdk/guestaccount/w;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY, %s TEXT, %s TEXT,%s TEXT, %s INTEGER DEFAULT 0)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "account"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "userId"

    aput-object v2, v1, v6

    const-string/jumbo v2, "cUserId"

    aput-object v2, v1, v7

    const-string/jumbo v2, "passToken"

    aput-object v2, v1, v8

    const-string/jumbo v2, "userType"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OT:Ljava/lang/String;

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY, %s TEXT, %s TEXT, %s TEXT,  %s TEXT, %s TEXT, %s TEXT)"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "service_token"

    aput-object v2, v1, v4

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "userId"

    aput-object v2, v1, v6

    const-string/jumbo v2, "sid"

    aput-object v2, v1, v7

    const-string/jumbo v2, "serviceToken"

    aput-object v2, v1, v8

    const-string/jumbo v2, "security"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "slh"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "ph"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OU:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OV:Lcom/xiaomi/accountsdk/guestaccount/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "guest_account.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized Uv(Landroid/content/Context;)Lcom/xiaomi/accountsdk/guestaccount/w;
    .locals 3

    const-class v1, Lcom/xiaomi/accountsdk/guestaccount/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OV:Lcom/xiaomi/accountsdk/guestaccount/w;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/w;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OV:Lcom/xiaomi/accountsdk/guestaccount/w;

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OV:Lcom/xiaomi/accountsdk/guestaccount/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Uw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;
    .locals 17

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/accountsdk/guestaccount/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "account"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "userId"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "cUserId"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "passToken"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "userType"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/accountsdk/guestaccount/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "service_token"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "serviceToken"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "security"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "slh"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string/jumbo v4, "ph"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string/jumbo v4, "sid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_7

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x3

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    :goto_0
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    new-instance v5, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v5}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    invoke-virtual {v5, v13}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ty(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->To(I)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tx(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v1

    return-object v1

    :cond_7
    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    goto :goto_0

    :catchall_1
    move-exception v1

    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :cond_9
    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    goto :goto_1
.end method

.method public declared-synchronized Ux(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ga == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v0, "userId"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "cUserId"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "passToken"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "userType"

    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NM:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    iget v0, v0, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->serverValue:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "account"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v0, "GuestAccountDatabaseHe"

    const-string/jumbo v1, "1 entry updated in guest_account/account database"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v2, "account"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string/jumbo v0, "GuestAccountDatabaseHe"

    const-string/jumbo v1, "1 entry inserted in guest_account/account database"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized Uy(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ga == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "sid"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "serviceToken"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "security"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "slh"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ph"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/w;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "service_token"

    const-string/jumbo v3, "sid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v0, "GuestAccountDatabaseHe"

    const-string/jumbo v1, "1 entry updated in guest_account/serviceToken database"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v2, "service_token"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string/jumbo v0, "GuestAccountDatabaseHe"

    const-string/jumbo v1, "1 entry inserted in guest_account/serviceToken database"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public Uz(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/w;->Uy(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/w;->OU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const-string/jumbo v0, "GuestAccountDatabaseHe"

    const-string/jumbo v1, "downgrade ignore"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string/jumbo v0, "GuestAccountDatabaseHe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v0, "ALTER TABLE account ADD COLUMN cUserId TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "GuestAccountDatabaseHe"

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

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
