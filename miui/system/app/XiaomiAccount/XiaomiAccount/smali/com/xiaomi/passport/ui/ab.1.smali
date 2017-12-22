.class final Lcom/xiaomi/passport/ui/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/k;


# instance fields
.field final synthetic tK:Lcom/xiaomi/passport/ui/k;

.field final synthetic tL:Ljava/lang/String;

.field final synthetic tM:Ljava/lang/String;

.field final synthetic tN:Ljava/lang/String;

.field final synthetic tO:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/ab;->tK:Lcom/xiaomi/passport/ui/k;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/ab;->tL:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/ab;->tM:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/ab;->tN:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/ui/ab;->tO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/M;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/M;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ab;->tL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/M;->ZF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ab;->tM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/M;->password(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ab;->tN:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/ab;->tO:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/account/data/M;->ZE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ab;->tK:Lcom/xiaomi/passport/ui/k;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/k;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/M;->ZD(Landroid/app/Application;)Lcom/xiaomi/accountsdk/account/data/M;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/ab;->tK:Lcom/xiaomi/passport/ui/k;

    iget-object v2, v2, Lcom/xiaomi/passport/ui/k;->pB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/data/M;->ZG(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/M;->build()Lcom/xiaomi/accountsdk/account/data/I;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->abo(Lcom/xiaomi/accountsdk/account/data/I;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/passport/data/f;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/ab;->tM:Ljava/lang/String;

    const-string/jumbo v4, "reg_email"

    iget-object v5, p0, Lcom/xiaomi/passport/ui/ab;->tL:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/xiaomi/passport/data/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/passport/data/e;->yY(Lcom/xiaomi/passport/data/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/UsedEmailAddressException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "InputRegisterEmailFragm"

    const-string/jumbo v3, "RegByEmailTask error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xa

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "InputRegisterEmailFragm"

    const-string/jumbo v3, "RegByEmailTask error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v1, "captcha_error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x7

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/passport/utils/w;->Fw(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "InputRegisterEmailFragm"

    const-string/jumbo v3, "RegByEmailTask error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v1, "server_error"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x2

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/passport/utils/w;->Fw(Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "network_error"

    const-string/jumbo v2, "InputRegisterEmailFragm"

    const-string/jumbo v3, "RegByEmailTask error"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/passport/utils/w;->Fw(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/xiaomi/passport/utils/w;->Fw(Ljava/lang/String;)V

    :cond_1
    throw v0
.end method
