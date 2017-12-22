.class public Lcom/xiaomi/account/task/a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final iu:Ljava/lang/String;

.field private iv:Ljava/lang/String;

.field private iw:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field private ix:Lcom/xiaomi/account/task/b;

.field private iy:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;Lcom/xiaomi/account/task/b;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    iput-object v1, p0, Lcom/xiaomi/account/task/a;->iu:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/account/task/a;->iy:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/task/a;->iv:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/task/a;->iw:Lcom/xiaomi/accountsdk/account/data/BindingType;

    iput-object p4, p0, Lcom/xiaomi/account/task/a;->ix:Lcom/xiaomi/account/task/b;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/a;->jL([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs jL([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/task/a;->ix:Lcom/xiaomi/account/task/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/a;->iy:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SendBindedVerifyCodeTas"

    const-string/jumbo v1, "null callback"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/a;->iy:Landroid/content/Context;

    const-string/jumbo v4, "passportapi"

    invoke-static {v0, v4}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v0, "SendBindedVerifyCodeTas"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    const/4 v0, 0x5

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/task/a;->iv:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/task/a;->iw:Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-static {v6, v0, v5}, Lcom/xiaomi/accountsdk/account/b;->aby(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/BindingType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidBindAddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/SendVerifyCodeExceedLimitException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    const-string/jumbo v2, "GetVerifyCodeExceedLimitException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0xa

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    const-string/jumbo v2, "InvalidSafeAddressException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x9

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    const-string/jumbo v3, "CipherException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    const-string/jumbo v3, "InvalidResponseException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    const-string/jumbo v2, "AccessDeniedException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v5, "SendBindedVerifyCodeTas"

    const-string/jumbo v7, "AuthenticationFailureException"

    invoke-static {v5, v7, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/task/a;->iy:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    const/4 v5, 0x1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SendBindedVerifyCodeTas"

    const-string/jumbo v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto :goto_1
.end method

.method protected jM(Ljava/lang/Integer;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "SendBindedVerifyCodeTas"

    const-string/jumbo v1, "result is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/data/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/task/a;->ix:Lcom/xiaomi/account/task/b;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/xiaomi/account/task/b;->iN(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/a;->ix:Lcom/xiaomi/account/task/b;

    invoke-interface {v0}, Lcom/xiaomi/account/task/b;->iO()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/a;->jM(Ljava/lang/Integer;)V

    return-void
.end method
