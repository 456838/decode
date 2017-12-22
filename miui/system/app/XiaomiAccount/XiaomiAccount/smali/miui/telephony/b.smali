.class public Lmiui/telephony/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final atY:Ljava/lang/String;

.field private static volatile atZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/b;->atY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aHH(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lmiui/telephony/b;->aHI(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHI(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3

    sget-object v0, Lmiui/telephony/b;->atZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lmiui/telephony/b;->aHT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lmiui/telephony/b;->aHV(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/cloud/b/a;->aHi(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lmiui/telephony/b;->atZ:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-static {p0}, Lmiui/telephony/b;->aHL(Landroid/content/Context;)V

    invoke-static {}, Lmiui/telephony/b;->aHO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/b/a;->aHj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v0, Lmiui/telephony/b;->atZ:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-static {p0, p1, p2}, Lmiui/telephony/b;->aHK(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/cloud/b/a;->aHi(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lmiui/telephony/b;->atZ:Ljava/lang/String;

    return-object v0
.end method

.method public static aHJ(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot call this on pad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aHK(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    add-long v0, v2, p1

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    sub-long/2addr v4, p1

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lmiui/telephony/b;->aHO()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v3, "CloudTelephonyManager"

    const-string/jumbo v4, "blockingWaitLooper"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static aHL(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static aHM()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot call this on pad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aHN(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lmiui/telephony/b;->aHT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/b;->aHS()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/telephony/b;->aHO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aHO()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHP()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static aHQ(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot call this on pad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static aHR(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot call this on pad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aHS()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMiuiDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aHT(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static aHU(Landroid/content/Context;I)Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot call this on pad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static aHV(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Lmiui/telephony/b;->aHL(Landroid/content/Context;)V

    new-instance v0, Lmiui/telephony/e;

    invoke-direct {v0}, Lmiui/telephony/e;-><init>()V

    new-instance v1, Lmiui/telephony/f;

    invoke-direct {v1, v0}, Lmiui/telephony/f;-><init>(Lmiui/telephony/e;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.DEVICE_ID_READY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lmiui/telephony/b;->aHS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Lmiui/telephony/e;->aIn(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Lmiui/telephony/e;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v4

    :catch_1
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v0
.end method
