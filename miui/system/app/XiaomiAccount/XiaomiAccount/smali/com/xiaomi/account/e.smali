.class abstract Lcom/xiaomi/account/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final synthetic nP:[I


# instance fields
.field protected final nK:Landroid/content/Context;

.field private final nL:Lcom/xiaomi/passport/servicetoken/h;

.field protected final nM:Lcom/xiaomi/passport/servicetoken/a;

.field protected final nN:Ljava/lang/String;

.field final synthetic nO:Lcom/xiaomi/account/PassportServiceTokenService;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/account/e;->nO:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/account/e;->nO:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-virtual {v0}, Lcom/xiaomi/account/PassportServiceTokenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/e;->nK:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/h;->Mz()Lcom/xiaomi/passport/servicetoken/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/e;->nL:Lcom/xiaomi/passport/servicetoken/h;

    iget-object v0, p0, Lcom/xiaomi/account/e;->nL:Lcom/xiaomi/passport/servicetoken/h;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nL:Lcom/xiaomi/passport/servicetoken/h;

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/h;->Mx()Lcom/xiaomi/passport/servicetoken/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/h;->Mw(Lcom/xiaomi/passport/servicetoken/c;)Lcom/xiaomi/passport/servicetoken/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/e;->nM:Lcom/xiaomi/passport/servicetoken/a;

    iput-object p2, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    return-void
.end method

.method private final ri(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/e;->nO:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-virtual {v0}, Lcom/xiaomi/account/PassportServiceTokenService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/appwhitelist/a;->NW(Landroid/content/Context;)Lcom/xiaomi/passport/appwhitelist/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/e;->nK:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/account/e;->rk()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/passport/appwhitelist/a;->NS(Landroid/content/Context;ILjava/lang/String;Z)Lcom/xiaomi/passport/appwhitelist/b;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/account/e;->rm()[I

    move-result-object v1

    iget-object v2, v0, Lcom/xiaomi/passport/appwhitelist/b;->KC:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v2}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown enum checkResult"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/PassportServiceTokenService;->re()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkPermissionAndWork"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v2, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/e;->rj(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HV:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HV:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    const-string/jumbo v1, "query too frequently"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HV:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    const-string/jumbo v1, "signature invalid"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaomi/account/e;->rl()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :pswitch_4
    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/passport/appwhitelist/b;->NZ()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, v0}, Lcom/xiaomi/account/e;->ri(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/xiaomi/account/PassportServiceTokenService;->re()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkPermissionResult.await() interrupted"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HV:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    const-string/jumbo v1, "error online fetching app white list"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HQ:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    const-string/jumbo v1, "error online fetching app white list"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p0, Lcom/xiaomi/account/e;->nN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HR:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    const-string/jumbo v1, "unkown error when fetching app white list"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private rj(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nStackTrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic rm()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/e;->nP:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/e;->nP:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->values()[Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KR:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KS:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KT:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KU:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KV:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KW:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->KX:Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;

    invoke-virtual {v1}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListManager$CheckPermissionResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/xiaomi/account/e;->nP:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final rh()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/account/e;->ri(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract rk()Z
.end method

.method protected abstract rl()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end method
