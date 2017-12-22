.class final Lcom/xiaomi/passport/uicontroller/J;
.super Lcom/xiaomi/passport/uicontroller/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/w",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jv:Lcom/xiaomi/passport/uicontroller/y;

.field final synthetic Jw:Lcom/xiaomi/passport/uicontroller/B;

.field final synthetic Jx:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/B;Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/J;->Jv:Lcom/xiaomi/passport/uicontroller/y;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/J;->Jx:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

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
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/uicontroller/B;->KN(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string/jumbo v0, "PhoneLoginController"

    const-string/jumbo v2, "loginByPhoneTicket"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/J;->Jx:Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;->Sg:Ljava/lang/String;

    check-cast v0, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->aae()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/B;->KO(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/B;->KP()V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/B;->KQ()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/y;->Nv(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/passport/uicontroller/B;->KM(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PhoneLoginController"

    const-string/jumbo v2, "loginByPhoneTicket"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/J;->Jw:Lcom/xiaomi/passport/uicontroller/B;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jj:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/B;->KM(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
