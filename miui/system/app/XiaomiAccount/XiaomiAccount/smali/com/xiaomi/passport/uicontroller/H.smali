.class final Lcom/xiaomi/passport/uicontroller/H;
.super Lcom/xiaomi/passport/uicontroller/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/w",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jr:Lcom/xiaomi/passport/uicontroller/y;

.field final synthetic Js:Lcom/xiaomi/passport/uicontroller/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/A;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/H;->Jr:Lcom/xiaomi/passport/uicontroller/y;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/w;-><init>()V

    return-void
.end method


# virtual methods
.method public Lb(Lcom/xiaomi/passport/uicontroller/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qq:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qx:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/uicontroller/A;->KK(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->Qy:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/uicontroller/A;->KG(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneLoginController"

    const-string/jumbo v2, "query user phone info"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jj:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/A;->KJ(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/uicontroller/A;->KI(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PhoneLoginController"

    const-string/jumbo v2, "query user phone info"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/A;->KL()V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/A;->KH()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/y;->Nv(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/H;->Js:Lcom/xiaomi/passport/uicontroller/A;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/xiaomi/passport/uicontroller/A;->KJ(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
