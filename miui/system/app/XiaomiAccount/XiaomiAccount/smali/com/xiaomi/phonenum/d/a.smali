.class public Lcom/xiaomi/phonenum/d/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static final aeX:Ljava/lang/String;

.field private static volatile aeZ:Lcom/xiaomi/phonenum/d/a;


# instance fields
.field private aeW:Lcom/xiaomi/phonenum/utils/n;

.field private aeY:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS %s (%s INTEGER PRIMARY KEY, %s TEXT not null unique, %s TEXT not null, %s TEXT not null, %s TEXT not null, %s TEXT, %s TEXT, %s TEXT, %s INTEGER)"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "phone_number"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "iccid"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "number"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "number_hash"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "update_time"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "token"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "copywriter"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "operator_link"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "is_verified"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/d/a;->aeX:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/phonenum/d/a;->aeZ:Lcom/xiaomi/phonenum/d/a;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "phone_num2.db"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/d/a;->aeY:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized aom(Landroid/content/Context;)Lcom/xiaomi/phonenum/d/a;
    .locals 3

    const-class v1, Lcom/xiaomi/phonenum/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/phonenum/d/a;->aeZ:Lcom/xiaomi/phonenum/d/a;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/xiaomi/phonenum/d/a;->aeZ:Lcom/xiaomi/phonenum/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/phonenum/d/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/phonenum/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/phonenum/d/a;->aeZ:Lcom/xiaomi/phonenum/d/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized aon(Lcom/xiaomi/phonenum/bean/a;)V
    .locals 6
    .param p1    # Lcom/xiaomi/phonenum/bean/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "iccid"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abM:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "number"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abK:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "number_hash"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abL:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "update_time"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abP:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "token"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abN:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "copywriter"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abQ:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "operator_link"

    iget-object v4, p1, Lcom/xiaomi/phonenum/bean/a;->abR:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "is_verified"

    iget-boolean v2, p1, Lcom/xiaomi/phonenum/bean/a;->abO:Z

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/xiaomi/phonenum/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v4, "phone_number"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "PhoneNumberDBHelper"

    const-string/jumbo v2, "1 entry updated in phone_number database"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "PhoneNumberDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePhoneNum failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aoo(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/phonenum/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "phone_number"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "number_hash"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "token"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "is_verified"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "update_time"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "copywriter"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "operator_link"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iccid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v2, :cond_6

    :goto_0
    monitor-exit p0

    return-object v10

    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v9, :cond_3

    move v0, v8

    :goto_1
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v7, 0x6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x6

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_2
    iget-object v7, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v8, "PhoneNumberDBHelper"

    const-string/jumbo v9, "phoneNum loaded from db"

    invoke-interface {v7, v8, v9}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/xiaomi/phonenum/bean/b;

    invoke-direct {v7}, Lcom/xiaomi/phonenum/bean/b;-><init>()V

    invoke-virtual {v7, p1}, Lcom/xiaomi/phonenum/bean/b;->aln(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/xiaomi/phonenum/bean/b;->alj(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/xiaomi/phonenum/bean/b;->alk(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/xiaomi/phonenum/bean/b;->alq(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/xiaomi/phonenum/bean/b;->alm(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/phonenum/bean/b;->alr(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/xiaomi/phonenum/bean/b;->als(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/bean/b;->alp(Z)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/b;->build()Lcom/xiaomi/phonenum/bean/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-nez v2, :cond_5

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_3
    move v0, v9

    goto :goto_1

    :cond_4
    move-object v1, v10

    goto :goto_2

    :cond_5
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    if-nez v10, :cond_7

    :goto_5
    throw v0

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v10, v2

    goto :goto_4
.end method

.method public declared-synchronized aop(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/phonenum/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "phone_number"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "iccid=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "PhoneNumberDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deletePhoneNum failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "PhoneNumberDBHelper"

    const-string/jumbo v2, "1 entry deletePhoneNum from phone_number database"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aoq(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/phonenum/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "is_verified"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "phone_number"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iccid=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "PhoneNumberDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalidateVerifiedToken failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v5

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/phonenum/d/a;->aeW:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v1, "PhoneNumberDBHelper"

    const-string/jumbo v2, "invalidateVerifiedToken from phone_number database"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/phonenum/d/a;->aeX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
