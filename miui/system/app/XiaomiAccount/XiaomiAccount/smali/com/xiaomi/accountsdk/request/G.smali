.class final Lcom/xiaomi/accountsdk/request/G;
.super Lcom/xiaomi/accountsdk/request/K;
.source ""


# instance fields
.field final synthetic YM:Lcom/xiaomi/accountsdk/request/x;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/x;Lcom/xiaomi/accountsdk/request/N;Lcom/xiaomi/accountsdk/request/N;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/G;->YM:Lcom/xiaomi/accountsdk/request/x;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/accountsdk/request/K;-><init>(Lcom/xiaomi/accountsdk/request/N;Lcom/xiaomi/accountsdk/request/N;)V

    return-void
.end method

.method private agk(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    iget-boolean v0, p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->isHtmlOr302:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected agl()V
    .locals 5

    const-string/jumbo v0, "PassportLoginRequest"

    const-string/jumbo v1, "login %s with CA-Request failed to receive data from server"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/G;->YM:Lcom/xiaomi/accountsdk/request/x;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/x;->afz()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected agm()V
    .locals 5

    const-string/jumbo v0, "PassportLoginRequest"

    const-string/jumbo v1, "login %s with CA-Request succeeded to receive data from server"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/G;->YM:Lcom/xiaomi/accountsdk/request/x;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/x;->afz()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected agn(Lcom/xiaomi/accountsdk/request/f;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ago(Ljava/lang/Exception;)Z
    .locals 1

    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/account/exception/PassportCAException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/G;->agk(Ljava/lang/Throwable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
