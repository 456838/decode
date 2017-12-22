.class final Lcom/xiaomi/account/A;
.super Lcom/xiaomi/account/IXiaomiAuthResponse$Stub;
.source ""


# instance fields
.field final synthetic oy:Lcom/xiaomi/account/XiaomiAuthService;

.field final synthetic oz:Lcom/xiaomi/account/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/XiaomiAuthService;Lcom/xiaomi/account/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/A;->oy:Lcom/xiaomi/account/XiaomiAuthService;

    iput-object p2, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    invoke-direct {p0}, Lcom/xiaomi/account/IXiaomiAuthResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public pX()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    new-instance v1, Landroid/accounts/OperationCanceledException;

    invoke-direct {v1}, Landroid/accounts/OperationCanceledException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/m;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public pY(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    new-instance v1, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v2, "no bundle result returned"

    invoke-direct {v1, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/m;->setException(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const-string/jumbo v0, "extra_error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "extra_error_description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    new-instance v1, Landroid/accounts/OperationCanceledException;

    invoke-direct {v1}, Landroid/accounts/OperationCanceledException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/m;->setException(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/m;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    new-instance v2, Landroid/accounts/AuthenticatorException;

    invoke-direct {v2, v1}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/m;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/m;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/account/A;->oz:Lcom/xiaomi/account/m;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/m;->sa(Ljava/lang/Object;)V

    goto :goto_0
.end method
