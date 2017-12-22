.class final Lcom/xiaomi/account/ui/aW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/o",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic fP:Lcom/xiaomi/account/ui/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aW;->fP:Lcom/xiaomi/account/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/utils/t;->pj()Z

    move-result v0

    sget-object v1, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    goto :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "query is device locked"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/aW;->run()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
