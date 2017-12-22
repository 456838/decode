.class public Lcom/loc/bX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private arK:Lcom/loc/aJ;

.field private arL:Landroid/database/sqlite/SQLiteDatabase;

.field private arM:Lcom/loc/cv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/cv;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/loc/aJ;

    invoke-interface {p2}, Lcom/loc/cv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/loc/cv;->b()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/aJ;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/cv;)V

    iput-object v0, p0, Lcom/loc/bX;->arK:Lcom/loc/aJ;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object p2, p0, Lcom/loc/bX;->arM:Lcom/loc/cv;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bX;->arK:Lcom/loc/aJ;

    invoke-virtual {v0}, Lcom/loc/aJ;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aFc(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    move v1, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_0
.end method

.method private aFj(Landroid/database/sqlite/SQLiteDatabase;Lcom/loc/ai;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/loc/ai",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/loc/ai;->a()Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bX;->arK:Lcom/loc/aJ;

    invoke-virtual {v0}, Lcom/loc/aJ;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public aFd(Ljava/lang/String;Lcom/loc/ai;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ai",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/bX;->arM:Lcom/loc/cv;

    monitor-enter v1

    :try_start_0
    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/bX;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :cond_4
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "deleteData"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_7

    :goto_2
    throw v0

    :cond_6
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public aFe(Ljava/lang/String;Lcom/loc/ai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ai",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/bX;->aFf(Ljava/lang/String;Lcom/loc/ai;Z)V

    return-void
.end method

.method public aFf(Ljava/lang/String;Lcom/loc/ai;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ai",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/bX;->arM:Lcom/loc/cv;

    monitor-enter v1

    if-nez p2, :cond_1

    :cond_0
    :try_start_0
    monitor-exit v1

    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/loc/ai;->a()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    :cond_2
    invoke-direct {p0, p3}, Lcom/loc/bX;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    :try_start_1
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :cond_4
    monitor-exit v1

    return-void

    :cond_5
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    if-eqz p3, :cond_7

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_7
    :try_start_5
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "updateData"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_9

    :goto_3
    throw v0

    :cond_8
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public aFg(Lcom/loc/ai;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ai",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/bX;->arM:Lcom/loc/cv;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/loc/bX;->aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/loc/bX;->aFh(Lcom/loc/ai;)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/loc/bX;->aFe(Ljava/lang/String;Lcom/loc/ai;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aFh(Lcom/loc/ai;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ai",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/loc/bX;->aFi(Lcom/loc/ai;Z)V

    return-void
.end method

.method public aFi(Lcom/loc/ai;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/loc/ai",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/loc/bX;->arM:Lcom/loc/cv;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, p2}, Lcom/loc/bX;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/loc/bX;->aFj(Landroid/database/sqlite/SQLiteDatabase;Lcom/loc/ai;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "insertData"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    :goto_2
    throw v0

    :cond_4
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public aFk(Ljava/lang/String;Lcom/loc/ai;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ai",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/loc/bX;->arM:Lcom/loc/cv;

    monitor-enter v9

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    :cond_0
    monitor-exit v9

    return-object v10

    :cond_1
    invoke-direct {p0, p3}, Lcom/loc/bX;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/loc/ai;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_8

    if-nez v1, :cond_f

    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_10

    :cond_4
    :goto_3
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v10

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_d

    :cond_6
    :goto_4
    :try_start_6
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_e

    :cond_7
    :goto_5
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-object v10

    :cond_8
    :try_start_7
    invoke-interface {p2, v1}, Lcom/loc/ai;->avm(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_6
    if-eqz p3, :cond_a

    :goto_7
    if-nez v1, :cond_11

    :cond_9
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_3

    move-exception v0

    if-nez p3, :cond_4

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_a
    :try_start_9
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    invoke-static {v0, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_9
    if-nez v1, :cond_12

    :cond_b
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_13

    :cond_c
    :goto_b
    throw v0

    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    move-exception v0

    if-nez p3, :cond_6

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_5

    move-exception v0

    if-nez p3, :cond_7

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    move-exception v0

    if-nez p3, :cond_3

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_3

    move-exception v0

    if-nez p3, :cond_4

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    move-exception v0

    if-nez p3, :cond_9

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    move-exception v1

    if-nez p3, :cond_b

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    iget-object v1, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/bX;->arL:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_b

    move-exception v1

    if-nez p3, :cond_c

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/loc/bm;->aDB(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_6
.end method

.method public aFl(Ljava/lang/String;Lcom/loc/ai;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/loc/ai",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/bX;->aFk(Ljava/lang/String;Lcom/loc/ai;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
