.class public Lmiui/cloud/b/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aHi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lmiui/cloud/b/a;->aHj(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lmiui/cloud/b/a;->aHn(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string/jumbo v1, "device id is invalid"

    invoke-direct {v0, v1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static aHj(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lmiui/cloud/b/a;->aHm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static aHk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lmiui/cloud/b/a;->aHo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lmiui/cloud/b/a;->aHn(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lmiui/telephony/exception/IllegalDeviceException;

    const-string/jumbo v1, "device id is invalid"

    invoke-direct {v0, v1}, Lmiui/telephony/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static aHl(J)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x44800000    # 1024.0f

    const-string/jumbo v0, ""

    long-to-float v0, p0

    const v1, 0x4ccccccd    # 1.07374184E8f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    const-string/jumbo v1, "%1$.2fGB"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x47cccccd

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    const-string/jumbo v1, "%1$.2fMB"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const-string/jumbo v0, "0.1MB"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "0MB"

    goto :goto_0
.end method

.method private static aHm(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static aHn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.action.WARN_INVALID_DEVICE_ID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "device_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SysHelper"

    const-string/jumbo v2, "show device id invalid warning failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static aHo(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/cloud/b/a;->aHm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
