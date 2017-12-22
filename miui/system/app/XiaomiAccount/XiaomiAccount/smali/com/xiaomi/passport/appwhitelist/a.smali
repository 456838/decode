.class public Lcom/xiaomi/passport/appwhitelist/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Km:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/passport/appwhitelist/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final Kn:Ljava/lang/Object;

.field private final Ko:Lcom/xiaomi/passport/appwhitelist/g;

.field private final Kp:Lcom/xiaomi/passport/appwhitelist/h;

.field private final Kq:Lcom/xiaomi/passport/appwhitelist/i;

.field private final Kr:Lcom/xiaomi/passport/appwhitelist/j;


# direct methods
.method private constructor <init>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/g;

    invoke-direct {v0}, Lcom/xiaomi/passport/appwhitelist/g;-><init>()V

    new-instance v1, Lcom/xiaomi/passport/appwhitelist/h;

    invoke-direct {v1}, Lcom/xiaomi/passport/appwhitelist/h;-><init>()V

    new-instance v2, Lcom/xiaomi/passport/appwhitelist/j;

    invoke-direct {v2}, Lcom/xiaomi/passport/appwhitelist/j;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/passport/appwhitelist/a;-><init>(Lcom/xiaomi/passport/appwhitelist/g;Lcom/xiaomi/passport/appwhitelist/h;Lcom/xiaomi/passport/appwhitelist/j;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/appwhitelist/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/passport/appwhitelist/g;Lcom/xiaomi/passport/appwhitelist/h;Lcom/xiaomi/passport/appwhitelist/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Km:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kn:Ljava/lang/Object;

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/appwhitelist/e;-><init>(Lcom/xiaomi/passport/appwhitelist/a;)V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kq:Lcom/xiaomi/passport/appwhitelist/i;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "afetcherManager == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "afrequencyManager == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "asignatureUtil == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/xiaomi/passport/appwhitelist/a;->Ko:Lcom/xiaomi/passport/appwhitelist/g;

    iput-object p2, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kp:Lcom/xiaomi/passport/appwhitelist/h;

    iput-object p3, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kr:Lcom/xiaomi/passport/appwhitelist/j;

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Ko:Lcom/xiaomi/passport/appwhitelist/g;

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kq:Lcom/xiaomi/passport/appwhitelist/i;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/appwhitelist/g;->Oi(Lcom/xiaomi/passport/appwhitelist/i;)V

    return-void
.end method

.method public static NW(Landroid/content/Context;)Lcom/xiaomi/passport/appwhitelist/a;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/passport/appwhitelist/l;->Ot(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/c;->Oa()Lcom/xiaomi/passport/appwhitelist/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method NR(Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/a/a;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/appwhitelist/a;->NV(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/a;->NX()Lcom/xiaomi/passport/appwhitelist/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/appwhitelist/d;->Od(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v1, v1, Lcom/xiaomi/passport/appwhitelist/a/b;->Ke:[Lcom/xiaomi/passport/appwhitelist/a/a;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    invoke-virtual {p2, v3}, Lcom/xiaomi/passport/appwhitelist/a/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/a;->NX()Lcom/xiaomi/passport/appwhitelist/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/appwhitelist/d;->Od(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public NS(Landroid/content/Context;ILjava/lang/String;Z)Lcom/xiaomi/passport/appwhitelist/b;
    .locals 6

    sget-object v4, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;->Kt:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/appwhitelist/a;->NT(Landroid/content/Context;ILjava/lang/String;Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;Z)Lcom/xiaomi/passport/appwhitelist/b;

    move-result-object v0

    return-object v0
.end method

.method public NT(Landroid/content/Context;ILjava/lang/String;Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;Z)Lcom/xiaomi/passport/appwhitelist/b;
    .locals 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sidCategory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p2, v1, :cond_1

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kv:Lcom/xiaomi/passport/appwhitelist/b;

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_8

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kr:Lcom/xiaomi/passport/appwhitelist/j;

    invoke-virtual {v4, v3}, Lcom/xiaomi/passport/appwhitelist/j;->Oq(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kv:Lcom/xiaomi/passport/appwhitelist/b;

    return-object v0

    :cond_2
    if-eqz p5, :cond_3

    iget-object v4, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kp:Lcom/xiaomi/passport/appwhitelist/h;

    invoke-virtual {v4, v3}, Lcom/xiaomi/passport/appwhitelist/h;->Om(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kr:Lcom/xiaomi/passport/appwhitelist/j;

    invoke-virtual {v4, v3}, Lcom/xiaomi/passport/appwhitelist/j;->Op(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/a;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kw:Lcom/xiaomi/passport/appwhitelist/b;

    return-object v0

    :cond_4
    sget-object v0, Lcom/xiaomi/passport/appwhitelist/b;->KB:Lcom/xiaomi/passport/appwhitelist/b;

    return-object v0

    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/passport/appwhitelist/a;->NR(Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/a/a;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v3, p3, p4}, Lcom/xiaomi/passport/appwhitelist/a;->NU(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Kv:Lcom/xiaomi/passport/appwhitelist/b;

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Ko:Lcom/xiaomi/passport/appwhitelist/g;

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/g;->Oh()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Ko:Lcom/xiaomi/passport/appwhitelist/g;

    iget-object v2, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kq:Lcom/xiaomi/passport/appwhitelist/i;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Runnable;

    new-instance v4, Lcom/xiaomi/passport/appwhitelist/f;

    invoke-direct {v4, p0, v1}, Lcom/xiaomi/passport/appwhitelist/f;-><init>(Lcom/xiaomi/passport/appwhitelist/a;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/passport/appwhitelist/g;->Oj(Lcom/xiaomi/passport/appwhitelist/i;[Ljava/lang/Runnable;)V

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/b;

    sget-object v2, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;Ljava/util/concurrent/CountDownLatch;Lcom/xiaomi/passport/appwhitelist/b;)V
    :try_end_0
    .catch Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AppWhiteListManager"

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    :goto_1
    new-instance v2, Lcom/xiaomi/passport/appwhitelist/b;

    invoke-direct {v2, v0, v1, v6}, Lcom/xiaomi/passport/appwhitelist/b;-><init>(Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;Ljava/util/concurrent/CountDownLatch;Lcom/xiaomi/passport/appwhitelist/b;)V

    return-object v2

    :cond_9
    sget-object v0, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/xiaomi/passport/appwhitelist/b;->Ky:Lcom/xiaomi/passport/appwhitelist/b;

    return-object v0
.end method

.method NU(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sidCategory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v0

    :cond_2
    const-string/jumbo v1, "weblogin:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v4

    :cond_3
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;->Ks:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$SidCategory;

    if-ne p3, v1, :cond_4

    const-string/jumbo v1, "ga:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/appwhitelist/a;->NV(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/b;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/a;->NX()Lcom/xiaomi/passport/appwhitelist/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/appwhitelist/d;->Oc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ga:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    iget-object v2, v1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    const-string/jumbo v2, "any"

    iget-object v3, v1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v4

    :cond_8
    iget-object v1, v1, Lcom/xiaomi/passport/appwhitelist/a/b;->Kd:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_a

    aget-object v3, v1, v0

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/passport/appwhitelist/a;->NX()Lcom/xiaomi/passport/appwhitelist/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/appwhitelist/d;->Oc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method NV(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/a/b;
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Km:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/appwhitelist/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method NX()Lcom/xiaomi/passport/appwhitelist/d;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/d;

    invoke-direct {v0}, Lcom/xiaomi/passport/appwhitelist/d;-><init>()V

    return-object v0
.end method

.method NY(Lcom/xiaomi/passport/appwhitelist/a/c;)V
    .locals 7

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/a;->Kn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/a;->Km:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/passport/appwhitelist/a/c;->Kg:[Lcom/xiaomi/passport/appwhitelist/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/xiaomi/passport/appwhitelist/a/c;->Kg:[Lcom/xiaomi/passport/appwhitelist/a/b;

    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/xiaomi/passport/appwhitelist/a;->Km:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/xiaomi/passport/appwhitelist/a/b;->Kc:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
