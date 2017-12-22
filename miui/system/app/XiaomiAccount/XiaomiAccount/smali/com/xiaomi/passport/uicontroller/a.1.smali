.class public abstract Lcom/xiaomi/passport/uicontroller/a;
.super Lcom/xiaomi/passport/uicontroller/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/b",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/m",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/b;-><init>(Lcom/xiaomi/passport/uicontroller/m;)V

    return-void
.end method


# virtual methods
.method protected MY(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v1, "result is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->SY:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should not be happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->SZ:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->notificationUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->Ta:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->Tb:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;-><init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;-><init>()V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "network error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->Ta:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->Tc:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->Td:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;-><init>(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;Ljava/lang/String;Z)V

    throw v0

    :pswitch_7
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;->Tc:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;-><init>()V

    throw v0

    :pswitch_9
    new-instance v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    const-string/jumbo v1, "access denied"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v1, "server error"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string/jumbo v1, "time or network error"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    new-instance v0, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    const-string/jumbo v1, "device id should not be null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Service side fatal error"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public MZ(Ljava/util/concurrent/ExecutionException;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    throw v0

    :cond_0
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    throw v0

    :cond_1
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException;

    throw v0

    :cond_2
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    throw v0

    :cond_4
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    throw v0

    :cond_5
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    throw v0

    :cond_6
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    throw v0

    :cond_7
    instance-of v1, v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    throw v0

    :cond_8
    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_9

    check-cast v0, Ljavax/net/ssl/SSLException;

    throw v0

    :cond_9
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    throw v0

    :cond_a
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0

    :cond_b
    instance-of v1, v0, Landroid/os/RemoteException;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/os/RemoteException;

    throw v0

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown exception met: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic Na(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/uicontroller/a;->MY(Lcom/xiaomi/accountsdk/account/data/MiLoginResult;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    return-object v0
.end method
