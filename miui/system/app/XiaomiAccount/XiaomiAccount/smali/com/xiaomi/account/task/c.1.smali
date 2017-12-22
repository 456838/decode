.class public Lcom/xiaomi/account/task/c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/task/d;",
        ">;"
    }
.end annotation


# instance fields
.field private iA:Landroid/content/Context;

.field private iB:Ljava/lang/String;

.field private iC:Ljava/lang/String;

.field private iD:Ljava/lang/String;

.field private iz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/c;->iA:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/task/c;->iB:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/task/c;->iz:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/account/task/c;->iC:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/account/task/c;->iD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/c;->jN([Ljava/lang/Void;)Lcom/xiaomi/account/task/d;

    move-result-object v0

    return-object v0
.end method

.method protected varargs jN([Ljava/lang/Void;)Lcom/xiaomi/account/task/d;
    .locals 11

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/xiaomi/account/task/c;->iA:Landroid/content/Context;

    const-string/jumbo v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SendEmailActivateMessag"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/task/d;

    invoke-direct {v0, p0, v2, v6}, Lcom/xiaomi/account/task/d;-><init>(Lcom/xiaomi/account/task/c;ILjava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/account/task/c;->iA:Landroid/content/Context;

    invoke-static {v1}, Lmiui/telephony/a;->aHy(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    move v10, v7

    move v1, v2

    :goto_1
    if-ge v10, v9, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/account/task/c;->iB:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/task/c;->iz:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/account/task/c;->iC:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/task/c;->iD:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/account/b;->abt(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidBindAddressException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/UsedEmailAddressException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/ReachLimitException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v7

    :goto_2
    new-instance v1, Lcom/xiaomi/account/task/d;

    invoke-direct {v1, p0, v0, v6}, Lcom/xiaomi/account/task/d;-><init>(Lcom/xiaomi/account/task/c;ILjava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SendEmailActivateMessag"

    const-string/jumbo v4, "illegal device"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "ReachLimitException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xd

    goto :goto_2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "UsedEmailAddressException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    goto :goto_2

    :catch_3
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "NeedCaptchaException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->aad()Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xc

    goto :goto_2

    :catch_4
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "InvalidBindAddressException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x9

    goto :goto_2

    :catch_5
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "CipherException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    goto :goto_2

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "InvalidResponseException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v8

    goto :goto_2

    :catch_7
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "AccessDeniedException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_2

    :catch_8
    move-exception v1

    const-string/jumbo v2, "SendEmailActivateMessag"

    const-string/jumbo v4, "AuthenticationFailureException"

    invoke-static {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/account/task/c;->iA:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    const/4 v2, 0x1

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v1, v2

    goto/16 :goto_1

    :catch_9
    move-exception v0

    const-string/jumbo v1, "SendEmailActivateMessag"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v9

    goto/16 :goto_2

    :cond_1
    move v0, v1

    goto/16 :goto_2
.end method
