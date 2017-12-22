.class final Lcom/xiaomi/account/ui/aY;
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
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic fS:Lcom/xiaomi/account/ui/r;

.field final synthetic fT:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/r;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aY;->fS:Lcom/xiaomi/account/ui/r;

    iput-boolean p2, p0, Lcom/xiaomi/account/ui/aY;->fT:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/aY;->fT:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/account/utils/t;->pl(ZLjava/lang/String;Z)V

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    :goto_0
    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jv:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_7
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0

    :catch_8
    move-exception v0

    const-string/jumbo v1, "AccountProtectionFragment"

    const-string/jumbo v2, "set device lock switch flag"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/aY;->run()Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-result-object v0

    return-object v0
.end method
