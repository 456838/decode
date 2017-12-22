.class final Lcom/xiaomi/passport/ui/aW;
.super Lcom/xiaomi/passport/uicontroller/j;
.source ""


# instance fields
.field final synthetic ve:Lcom/xiaomi/passport/ui/B;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/B;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected yx(Lcom/xiaomi/passport/uicontroller/e;)V
    .locals 6

    const v2, 0x7f0c0096

    const/4 v1, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/xiaomi/passport/ui/B;->xz(Lcom/xiaomi/passport/ui/B;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/B;->xx(Lcom/xiaomi/passport/ui/B;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/e;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v3, v0}, Lcom/xiaomi/passport/ui/B;->xw(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/B;->xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/B;->xA(Lcom/xiaomi/passport/ui/B;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/uicontroller/e;->MZ(Ljava/util/concurrent/ExecutionException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidStep2codeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v2, v5}, Lcom/xiaomi/passport/ui/B;->xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "remote exception"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wrong step2 code"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008e

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "illegal device id "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008f

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wrong password"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/B;->xi()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/B;->xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;

    return-void

    :catch_5
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "access denied"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c008c

    goto :goto_1

    :catch_6
    move-exception v0

    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "invalid response"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c0095

    goto :goto_1

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nonExist user name"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/B;->xj()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/B;->xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;

    return-void

    :catch_8
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "network error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0c0093

    goto/16 :goto_1

    :catch_9
    move-exception v0

    invoke-static {}, Lcom/xiaomi/passport/ui/B;->xr()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "interrupted"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0, v5}, Lcom/xiaomi/passport/ui/B;->xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aW;->ve:Lcom/xiaomi/passport/ui/B;

    invoke-static {v1, v5}, Lcom/xiaomi/passport/ui/B;->xv(Lcom/xiaomi/passport/ui/B;Lcom/xiaomi/passport/uicontroller/e;)Lcom/xiaomi/passport/uicontroller/e;

    throw v0
.end method
