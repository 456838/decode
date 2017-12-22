.class public Lcom/xiaomi/finddevice/common/util/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctTime(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/finddevice/v2/time/TimeCorrectionReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.xiaomi.finddevice.CORRECT_TIME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 17
    return-void
.end method

.method public static correctTimeIfNecessaryOnNetworkError(Landroid/content/Context;Ljava/io/IOException;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 24
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 26
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->correctTime(Landroid/content/Context;)V

    .line 23
    :cond_0
    return-void
.end method

.method public static getDebugTimeSting(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "N/A"

    return-object v0

    .line 33
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDebugTimeStringElapsedRealtime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "N/A"

    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, p0, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeSting(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
