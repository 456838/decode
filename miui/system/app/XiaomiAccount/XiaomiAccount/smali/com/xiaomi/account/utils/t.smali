.class public Lcom/xiaomi/account/utils/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mG:Lcom/xiaomi/account/utils/t;


# instance fields
.field private final mF:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized ph()Lcom/xiaomi/account/utils/t;
    .locals 2

    const-class v1, Lcom/xiaomi/account/utils/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/account/utils/t;->mG:Lcom/xiaomi/account/utils/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/utils/t;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/t;-><init>()V

    sput-object v0, Lcom/xiaomi/account/utils/t;->mG:Lcom/xiaomi/account/utils/t;

    :cond_0
    sget-object v0, Lcom/xiaomi/account/utils/t;->mG:Lcom/xiaomi/account/utils/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pp()Lcom/xiaomi/passport/data/c;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    const-string/jumbo v1, "deviceinfo"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public pi(Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/q;->ow()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0, p1, v1, p2, p3}, Lcom/xiaomi/account/utils/q;->oJ(Lcom/xiaomi/accountsdk/account/data/a;Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, p1, v1, p2, p3}, Lcom/xiaomi/account/utils/q;->oJ(Lcom/xiaomi/accountsdk/account/data/a;Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public pj()Z
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/q;->ow()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/q;->oT(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/q;->oT(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pk()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo$LockedDeviceType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/account/data/LockedDeviceInfo;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/q;->ow()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/q;->oN(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaomi/account/utils/q;->oN(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public pl(ZLjava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/q;->ow()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0, v1, p1, p2, p3}, Lcom/xiaomi/account/utils/q;->oW(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;ZLjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, v1, p1, p2, p3}, Lcom/xiaomi/account/utils/q;->oW(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public pm(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/q;->ow()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0, p1, v1}, Lcom/xiaomi/account/utils/q;->oV(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/xiaomi/account/utils/q;->oV(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pn(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/account/utils/q;->oU(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/xiaomi/account/utils/q;->oU(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public po(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/utils/t;->pp()Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DeviceInfoRequest"

    const-string/jumbo v1, "null passport info"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/exception/NullPassportInfoException;

    invoke-direct {v0}, Lcom/xiaomi/account/exception/NullPassportInfoException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {v0, p1}, Lcom/xiaomi/account/utils/q;->oG(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/xiaomi/account/utils/t;->mF:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/xiaomi/account/utils/q;->oG(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V

    goto :goto_0
.end method
