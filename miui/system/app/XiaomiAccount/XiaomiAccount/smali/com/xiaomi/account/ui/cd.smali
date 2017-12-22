.class final Lcom/xiaomi/account/ui/cd;
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
.field final synthetic hA:Z

.field final synthetic hB:Z

.field final synthetic hx:Lcom/xiaomi/account/ui/O;

.field final synthetic hy:Lcom/xiaomi/account/data/LockedDeviceInfo;

.field final synthetic hz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/O;Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cd;->hx:Lcom/xiaomi/account/ui/O;

    iput-object p2, p0, Lcom/xiaomi/account/ui/cd;->hy:Lcom/xiaomi/account/data/LockedDeviceInfo;

    iput-object p3, p0, Lcom/xiaomi/account/ui/cd;->hz:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaomi/account/ui/cd;->hA:Z

    iput-boolean p5, p0, Lcom/xiaomi/account/ui/cd;->hB:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/cd;->hy:Lcom/xiaomi/account/data/LockedDeviceInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/cd;->hy:Lcom/xiaomi/account/data/LockedDeviceInfo;

    iget-object v2, p0, Lcom/xiaomi/account/ui/cd;->hz:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaomi/account/ui/cd;->hA:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/account/utils/t;->pi(Lcom/xiaomi/account/data/LockedDeviceInfo;Ljava/lang/String;Z)V

    :goto_0
    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/cd;->hB:Z

    iget-object v2, p0, Lcom/xiaomi/account/ui/cd;->hz:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/xiaomi/account/ui/cd;->hA:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/account/utils/t;->pl(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jw:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jv:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jp:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_6
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_8
    move-exception v0

    const-string/jumbo v1, "InputVerifyPhoneCodeFragment"

    const-string/jumbo v2, "do with verify code"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/cd;->run()Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    move-result-object v0

    return-object v0
.end method
