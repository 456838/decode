.class final Lcom/xiaomi/passport/uicontroller/P;
.super Lcom/xiaomi/passport/uicontroller/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/w",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic JJ:Lcom/xiaomi/passport/uicontroller/y;

.field final synthetic JK:Lcom/xiaomi/passport/uicontroller/E;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/y;Lcom/xiaomi/passport/uicontroller/E;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/P;->JJ:Lcom/xiaomi/passport/uicontroller/y;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/uicontroller/E;->iq(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneLoginController"

    const-string/jumbo v2, "setPassword"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/E;->in()V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/E;->io()V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

    invoke-interface {v0}, Lcom/xiaomi/passport/uicontroller/E;->im()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/y;->Nv(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/xiaomi/passport/uicontroller/E;->ip(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PhoneLoginController"

    const-string/jumbo v2, "setPassword"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/P;->JK:Lcom/xiaomi/passport/uicontroller/E;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->Jj:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/passport/uicontroller/E;->ip(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
