.class public Lcom/xiaomi/accountsdk/account/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Xl:Lcom/xiaomi/accountsdk/account/d;


# instance fields
.field private Xk:Lcom/xiaomi/accountsdk/account/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/d;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/d;->Xl:Lcom/xiaomi/accountsdk/account/d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    return-void
.end method

.method public static acs()Lcom/xiaomi/accountsdk/account/d;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/d;->Xl:Lcom/xiaomi/accountsdk/account/d;

    return-object v0
.end method


# virtual methods
.method public acA(Lcom/xiaomi/accountsdk/account/a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "passportCAExternal should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    return-void
.end method

.method public act()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/xiaomi/accountsdk/account/b;->Vo:Z

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/accountsdk/account/a;->PA(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public acu(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/c;->abN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public acv(Ljava/lang/String;)Lcom/xiaomi/account/data/l;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/d;->acz()Lcom/xiaomi/account/data/l;

    move-result-object v0

    return-object v0
.end method

.method public acw()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "passportCATokenExternal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    sget-object v1, Lcom/xiaomi/account/data/l;->lF:Lcom/xiaomi/account/data/l;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/a;->PB(Lcom/xiaomi/account/data/l;)V

    return-void
.end method

.method public acx(Ljava/lang/Long;)V
    .locals 6

    const-wide/32 v2, 0x93a80

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    const-wide/32 v0, 0x15180

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/accountsdk/account/a;->PC(J)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0
.end method

.method protected acy(Ljava/lang/String;)Lcom/xiaomi/account/data/l;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "https://%s/ca/getTokenCA"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v2, "deviceId"

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v2, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v3, "_ver"

    sget-object v4, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/xiaomi/accountsdk/request/R;

    invoke-direct {v3}, Lcom/xiaomi/accountsdk/request/R;-><init>()V

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/xiaomi/accountsdk/request/R;->agT(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Lcom/xiaomi/accountsdk/request/R;->agR(Ljava/util/Map;)V

    invoke-virtual {v3, v5}, Lcom/xiaomi/accountsdk/request/R;->agV(Z)V

    new-instance v0, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v0, v3}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->agx()Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->aao(Lcom/xiaomi/accountsdk/request/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "passport_ca_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "casecurity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/account/data/l;

    invoke-direct {v2, v1, v0}, Lcom/xiaomi/account/data/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/16 v1, 0x2718

    if-ne v0, v1, :cond_1

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "when getting Token server returns code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v1, "error result"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acz()Lcom/xiaomi/account/data/l;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "passportCATokenExternal is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/account/a;->Pz()Lcom/xiaomi/account/data/l;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/xiaomi/accountsdk/account/c;->VS:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/account/g;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/account/g;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/g;->acW()V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/account/d;->acy(Ljava/lang/String;)Lcom/xiaomi/account/data/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/g;->acV(Lcom/xiaomi/account/data/l;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/d;->Xk:Lcom/xiaomi/accountsdk/account/a;

    invoke-interface {v1, v0}, Lcom/xiaomi/accountsdk/account/a;->PB(Lcom/xiaomi/account/data/l;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/account/g;->acV(Lcom/xiaomi/account/data/l;)V

    throw v1
.end method
