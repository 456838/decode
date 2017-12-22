.class final Lcom/xiaomi/passport/v2/ui/Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/k;


# instance fields
.field final synthetic Fq:Lcom/xiaomi/passport/v2/ui/g;

.field final synthetic Fr:Ljava/lang/String;

.field final synthetic Fs:Ljava/lang/String;

.field final synthetic Ft:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/Z;->Fq:Lcom/xiaomi/passport/v2/ui/g;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/Z;->Fr:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/Z;->Fs:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/Z;->Ft:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/s;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/s;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/Z;->Fr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/s;->XN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/Z;->Fs:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/Z;->Ft:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/s;->XP(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/Z;->Fq:Lcom/xiaomi/passport/v2/ui/g;

    invoke-static {v2}, Lcom/xiaomi/passport/v2/ui/g;->JL(Lcom/xiaomi/passport/v2/ui/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/account/data/s;->XR(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/s;->build()Lcom/xiaomi/accountsdk/account/data/r;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/b;->abv(Lcom/xiaomi/accountsdk/account/data/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/SendVerifyCodeExceedLimitException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneTicketRegisterFragment"

    const-string/jumbo v2, "GetVerifyCodeTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x9

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "PhoneTicketRegisterFragment"

    const-string/jumbo v2, "GetVerifyCodeTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x7

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "PhoneTicketRegisterFragment"

    const-string/jumbo v2, "GetVerifyCodeTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "PhoneTicketRegisterFragment"

    const-string/jumbo v2, "GetVerifyCodeTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xc

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "PhoneTicketRegisterFragment"

    const-string/jumbo v2, "GetVerifyCodeTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xb

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "PhoneTicketRegisterFragment"

    const-string/jumbo v2, "GetVerifyCodeTask"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
