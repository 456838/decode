.class public Lcom/xiaomi/passport/MiPassportUIControllerService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private Lp:Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/k;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/k;-><init>(Lcom/xiaomi/passport/MiPassportUIControllerService;)V

    iput-object v0, p0, Lcom/xiaomi/passport/MiPassportUIControllerService;->Lp:Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;

    return-void
.end method

.method private Pu(Ljava/lang/Exception;)I
    .locals 3

    const/4 v0, 0x6

    instance-of v1, p1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_0

    const-string/jumbo v0, "MiPassportUIControllerS"

    const-string/jumbo v1, "system time or network error"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    const-string/jumbo v0, "MiPassportUIControllerS"

    const-string/jumbo v1, "network error"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException;

    if-eqz v1, :cond_2

    const-string/jumbo v0, "MiPassportUIControllerS"

    const-string/jumbo v1, "illegal deviceId"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;

    if-eqz v1, :cond_3

    const-string/jumbo v0, "MiPassportUIControllerS"

    const-string/jumbo v1, "invalid user name"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-eqz v1, :cond_4

    const-string/jumbo v0, "MiPassportUIControllerS"

    const-string/jumbo v1, "access denied"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "auth error"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "MiPassportUIControllerS"

    const-string/jumbo v2, "invalid response"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "MiPassportUIControllerS"

    const-string/jumbo v1, "this exception should not happen"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private Pv(Ljava/lang/RuntimeException;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/l;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/l;-><init>(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/l;->start()V

    return-void
.end method

.method static synthetic Pw(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/Exception;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Pu(Ljava/lang/Exception;)I

    move-result v0

    return v0
.end method

.method static synthetic Px(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/MiPassportUIControllerService;->Pv(Ljava/lang/RuntimeException;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/MiPassportUIControllerService;->Lp:Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/MiPassportUIControllerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/e;->acH(Landroid/app/Application;)V

    return-void
.end method
