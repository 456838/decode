.class Lcom/xiaomi/passport/servicetoken/v;
.super Lcom/xiaomi/passport/servicetoken/j;
.source ""


# instance fields
.field private final IF:Lcom/xiaomi/passport/servicetoken/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/c;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/j;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "amUtil == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    return-void
.end method

.method static MV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    :cond_2
    return-object v0
.end method

.method private MW(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HO:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final MG(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/c;->Cm(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/xiaomi/passport/servicetoken/v;->MW(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaomi/passport/servicetoken/c;->Cp(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {p2, v0, v2}, Lcom/xiaomi/passport/servicetoken/i;->MC(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/passport/servicetoken/v;->MU(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaomi/passport/servicetoken/c;->Ch(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p2}, Lcom/xiaomi/passport/servicetoken/i;->MA(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/passport/servicetoken/v;->MU(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p2, v0}, Lcom/xiaomi/passport/servicetoken/i;->MD(Ljava/lang/String;Ljava/lang/Exception;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method protected final MH(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/c;->Cm(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/v;->MW(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/passport/servicetoken/i;->MB(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/passport/servicetoken/c;->Cn(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v1, p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method final MU(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 5

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HP:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-ne v0, v1, :cond_0

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p3

    :cond_1
    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/K;->aju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/passport/servicetoken/c;->Ci(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-interface {v2, p1, v3, p2}, Lcom/xiaomi/passport/servicetoken/c;->Cl(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/passport/servicetoken/v;->MV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/v;->IF:Lcom/xiaomi/passport/servicetoken/c;

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-interface {v3, p1, v4, p2}, Lcom/xiaomi/passport/servicetoken/c;->Cj(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/passport/servicetoken/v;->MV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;->LQ(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v3

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;->LR(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v3

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v3

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;->LS(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v3

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;->LT(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v3

    iget-boolean v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HH:Z

    invoke-virtual {v3, v4}, Lcom/xiaomi/passport/servicetoken/d;->LU(Z)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaomi/passport/servicetoken/d;->LV(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/d;->LW(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/d;->LX(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
