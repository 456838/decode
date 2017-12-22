.class public Lcom/xiaomi/account/task/j;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/task/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final iU:Ljava/lang/String;

.field private iV:Lcom/xiaomi/account/task/k;

.field private iW:Landroid/content/Context;

.field private iX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/account/task/k;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v1, "GetUserBindIdAndLimitTask"

    iput-object v1, p0, Lcom/xiaomi/account/task/j;->iU:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/account/task/j;->iW:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/task/j;->iX:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/task/j;->iV:Lcom/xiaomi/account/task/k;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/j;->jW([Ljava/lang/Void;)Lcom/xiaomi/account/task/l;

    move-result-object v0

    return-object v0
.end method

.method protected varargs jW([Ljava/lang/Void;)Lcom/xiaomi/account/task/l;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iV:Lcom/xiaomi/account/task/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iW:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "GetUserBindIdAndLimitTask"

    const-string/jumbo v1, "null callback"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iW:Landroid/content/Context;

    const-string/jumbo v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "GetUserBindIdAndLimitTask"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iX:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/xiaomi/account/utils/q;->oC(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Lcom/xiaomi/account/task/l;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidBindAddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/SendVerifyCodeExceedLimitException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "SendVerifyCodeExceedLimitException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "InvalidSafeAddressException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "CipherException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "InvalidResponseException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "AccessDeniedException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "AuthenticationFailureException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iW:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    goto :goto_1

    :catch_6
    move-exception v0

    const-string/jumbo v3, "GetUserBindIdAndLimitTask"

    const-string/jumbo v4, "IOException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method protected jX(Lcom/xiaomi/account/task/l;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iV:Lcom/xiaomi/account/task/k;

    invoke-interface {v0}, Lcom/xiaomi/account/task/k;->iP()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/task/j;->iV:Lcom/xiaomi/account/task/k;

    invoke-interface {v0, p1}, Lcom/xiaomi/account/task/k;->iQ(Lcom/xiaomi/account/task/l;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/l;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/j;->jX(Lcom/xiaomi/account/task/l;)V

    return-void
.end method
