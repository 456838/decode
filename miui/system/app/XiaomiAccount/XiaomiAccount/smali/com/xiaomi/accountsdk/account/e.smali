.class public Lcom/xiaomi/accountsdk/account/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile Xm:Landroid/app/Application;

.field private static Xn:Ljava/lang/String;

.field private static Xo:Z

.field private static volatile Xp:Ljava/lang/String;

.field private static Xq:J

.field private static Xr:Ljava/lang/String;

.field private static volatile Xs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/accountsdk/account/e;->Xo:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/accountsdk/account/e;->Xm:Landroid/app/Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acB()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/account/e;->Xq:J

    return-wide v0
.end method

.method public static acC()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/e;->Xr:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized acD(Landroid/app/Application;)V
    .locals 3

    const-class v1, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "application == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Lcom/xiaomi/accountsdk/account/e;->Xm:Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized acE()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/e;->Xs:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acF()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/e;->Xp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized acG()Landroid/app/Application;
    .locals 3

    const-class v1, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/xiaomi/accountsdk/account/e;->Xo:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/e;->Xm:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/accountsdk/account/e;->Xm:Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized acH(Landroid/app/Application;)V
    .locals 3

    const-class v1, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "application == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/accountsdk/account/e;->Xm:Landroid/app/Application;

    if-nez v0, :cond_1

    sput-object p0, Lcom/xiaomi/accountsdk/account/e;->Xm:Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-void
.end method

.method public static acI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/e;->Xn:Ljava/lang/String;

    return-object v0
.end method

.method public static acJ(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/accountsdk/account/e;->Xo:Z

    return-void
.end method

.method public static declared-synchronized acK(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/xiaomi/accountsdk/account/e;->Xp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static acL(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/account/e;->Xq:J

    return-void
.end method

.method public static acM(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/account/e;->Xr:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized acN(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/e;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/xiaomi/accountsdk/account/e;->Xs:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
