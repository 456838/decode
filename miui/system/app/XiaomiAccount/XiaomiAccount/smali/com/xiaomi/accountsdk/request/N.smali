.class public abstract Lcom/xiaomi/accountsdk/request/N;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final agx()Lcom/xiaomi/accountsdk/request/f;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/N;->execute()Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    throw v0

    :cond_0
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    throw v0

    :cond_1
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    throw v0

    :cond_2
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    throw v0

    :cond_4
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_5
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    throw v0

    :cond_6
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    throw v0

    :cond_7
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    throw v0

    :cond_8
    instance-of v1, v0, Lcom/xiaomi/account/exception/PassportCAException;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/xiaomi/account/exception/PassportCAException;

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract execute()Lcom/xiaomi/accountsdk/request/f;
.end method
