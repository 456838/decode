.class public abstract Lcom/xiaomi/accountsdk/request/x;
.super Lcom/xiaomi/accountsdk/request/N;
.source ""


# instance fields
.field private final Yw:Lcom/xiaomi/accountsdk/request/N;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/R;)V
    .locals 6

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/N;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/x;->afD(Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/M;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/request/x;->afA(Lcom/xiaomi/accountsdk/request/R;Lcom/xiaomi/accountsdk/request/M;)Lcom/xiaomi/accountsdk/request/K;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PassportLoginRequest"

    const-string/jumbo v2, "CA-Request not ready for login %s, fallback to https way"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/x;->afz()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/x;->Yw:Lcom/xiaomi/accountsdk/request/N;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/x;->Yw:Lcom/xiaomi/accountsdk/request/N;

    goto :goto_0
.end method

.method private afA(Lcom/xiaomi/accountsdk/request/R;Lcom/xiaomi/accountsdk/request/M;)Lcom/xiaomi/accountsdk/request/K;
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/accountsdk/account/d;->acs()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/d;->act()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/d;->acu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v3

    :cond_0
    return-object v3

    :cond_1
    sget-object v3, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/R;->agM()Lcom/xiaomi/accountsdk/request/R;

    move-result-object v4

    iget-object v0, v4, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v5, "sid"

    invoke-virtual {v0, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    const-string/jumbo v2, "_ver"

    invoke-virtual {v4, v2, v3}, Lcom/xiaomi/accountsdk/request/R;->agO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v5, "sid"

    invoke-virtual {v2, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "_sid"

    invoke-virtual {v4, v2, v0}, Lcom/xiaomi/accountsdk/request/R;->agO(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/xiaomi/accountsdk/request/R;->Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v5, "_ver"

    invoke-virtual {v2, v5, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahx(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v2, v4, Lcom/xiaomi/accountsdk/request/R;->Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v3, "_sid"

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahx(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v0, "x-mistats-header"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lcom/xiaomi/accountsdk/request/R;->agP(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v4}, Lcom/xiaomi/accountsdk/request/x;->afC(Lcom/xiaomi/accountsdk/account/d;Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/O;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/G;

    invoke-direct {v1, p0, v0, p2}, Lcom/xiaomi/accountsdk/request/G;-><init>(Lcom/xiaomi/accountsdk/request/x;Lcom/xiaomi/accountsdk/request/N;Lcom/xiaomi/accountsdk/request/N;)V

    return-object v1
.end method


# virtual methods
.method public afB()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/x;->Yw:Lcom/xiaomi/accountsdk/request/N;

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/K;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/x;->Yw:Lcom/xiaomi/accountsdk/request/N;

    check-cast v0, Lcom/xiaomi/accountsdk/request/K;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/K;->agu()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected abstract afC(Lcom/xiaomi/accountsdk/account/d;Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/O;
.end method

.method protected abstract afD(Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/M;
.end method

.method protected abstract afz()Ljava/lang/String;
.end method

.method public execute()Lcom/xiaomi/accountsdk/request/f;
    .locals 5

    new-instance v2, Lcom/xiaomi/accountsdk/account/a/c;

    const-string/jumbo v1, "login/%s/%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/x;->afz()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/x;->Yw:Lcom/xiaomi/accountsdk/request/N;

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/K;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "withCA"

    :goto_0
    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/accountsdk/account/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/a/c;->aak()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/x;->Yw:Lcom/xiaomi/accountsdk/request/N;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/N;->execute()Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/a/c;->aam()V

    return-object v0

    :cond_0
    const-string/jumbo v0, "withoutCA"

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/a/c;->aal(Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/a/c;->aam()V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    :try_start_2
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/account/exception/PassportCAException;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/a/c;->aal(Ljava/lang/Exception;)V

    :cond_1
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
