.class public Lcom/xiaomi/account/task/s;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/task/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final jJ:Ljava/lang/String;

.field private jK:Ljava/lang/String;

.field private jL:Lcom/xiaomi/account/task/t;

.field private jM:Landroid/content/Context;

.field private jN:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;Lcom/xiaomi/account/task/t;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo v1, "GetIdentityAuthUrlTask"

    iput-object v1, p0, Lcom/xiaomi/account/task/s;->jJ:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/account/task/s;->jM:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/task/s;->jK:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/task/s;->jN:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    iput-object p4, p0, Lcom/xiaomi/account/task/s;->jL:Lcom/xiaomi/account/task/t;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/s;->kM([Ljava/lang/Void;)Lcom/xiaomi/account/task/u;

    move-result-object v0

    return-object v0
.end method

.method protected varargs kM([Ljava/lang/Void;)Lcom/xiaomi/account/task/u;
    .locals 9

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/xiaomi/account/task/s;->jL:Lcom/xiaomi/account/task/t;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/account/task/s;->jM:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v0, "GetIdentityAuthUrlTask"

    const-string/jumbo v1, "null callback"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/account/task/s;->jM:Landroid/content/Context;

    const-string/jumbo v4, "passportapi"

    invoke-static {v3, v4}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v0, "GetIdentityAuthUrlTask"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    const/4 v3, 0x5

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/account/task/s;->jK:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/account/task/s;->jN:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-static {v5, v4, v6}, Lcom/xiaomi/accountsdk/account/b;->aaE(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/xiaomi/account/task/u;

    invoke-direct {v6, p0, v4, v0}, Lcom/xiaomi/account/task/u;-><init>(Lcom/xiaomi/account/task/s;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GetIdentityAuthUrlTask"

    const-string/jumbo v3, "CipherException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    :cond_3
    :goto_1
    new-instance v1, Lcom/xiaomi/account/task/u;

    invoke-direct {v1, p0, v7, v0}, Lcom/xiaomi/account/task/u;-><init>(Lcom/xiaomi/account/task/s;Ljava/lang/String;I)V

    return-object v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "GetIdentityAuthUrlTask"

    const-string/jumbo v3, "InvalidResponseException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "GetIdentityAuthUrlTask"

    const-string/jumbo v2, "AccessDeniedException"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v4, "GetIdentityAuthUrlTask"

    const-string/jumbo v6, "AuthenticationFailureException"

    invoke-static {v4, v6, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/task/s;->jM:Landroid/content/Context;

    invoke-virtual {v5, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    const/4 v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v1, "GetIdentityAuthUrlTask"

    const-string/jumbo v3, "IOException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1
.end method

.method protected kN(Lcom/xiaomi/account/task/u;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "GetIdentityAuthUrlTask"

    const-string/jumbo v1, "null result"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/account/task/u;->kQ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/task/s;->jL:Lcom/xiaomi/account/task/t;

    invoke-virtual {p1}, Lcom/xiaomi/account/task/u;->kO()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaomi/account/task/t;->iz(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/account/task/u;->kP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/task/s;->jL:Lcom/xiaomi/account/task/t;

    invoke-interface {v0}, Lcom/xiaomi/account/task/t;->iB()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/task/s;->jL:Lcom/xiaomi/account/task/t;

    invoke-virtual {p1}, Lcom/xiaomi/account/task/u;->kP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/account/task/t;->iA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/task/u;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/s;->kN(Lcom/xiaomi/account/task/u;)V

    return-void
.end method
