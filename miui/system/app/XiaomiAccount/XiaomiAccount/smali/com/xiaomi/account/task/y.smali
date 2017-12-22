.class public Lcom/xiaomi/account/task/y;
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
.field private jX:Ljava/util/Calendar;

.field private jY:Landroid/content/Context;

.field private jZ:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private ka:Lcom/xiaomi/account/task/z;

.field private kb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;Lcom/xiaomi/account/task/z;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/xiaomi/account/task/y;->jY:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/account/task/y;->kb:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/task/y;->jX:Ljava/util/Calendar;

    iput-object p4, p0, Lcom/xiaomi/account/task/y;->jZ:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p5, p0, Lcom/xiaomi/account/task/y;->ka:Lcom/xiaomi/account/task/z;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/y;->kX([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs kX([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/xiaomi/account/task/y;->jY:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "UploadMiUserProfileTask"

    const-string/jumbo v1, "context is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/task/y;->jY:Landroid/content/Context;

    const-string/jumbo v5, "passportapi"

    invoke-static {v0, v5}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "UploadMiUserProfileTask"

    const-string/jumbo v1, "null passportInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    move v5, v1

    move v0, v2

    :goto_0
    if-ge v5, v4, :cond_2

    :try_start_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/G;

    invoke-virtual {v7}, Lcom/xiaomi/passport/data/c;->UY()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/xiaomi/account/task/y;->kb:Ljava/lang/String;

    iget-object v9, p0, Lcom/xiaomi/account/task/y;->jX:Ljava/util/Calendar;

    iget-object v10, p0, Lcom/xiaomi/account/task/y;->jZ:Lcom/xiaomi/accountsdk/account/data/Gender;

    invoke-direct {v0, v6, v8, v9, v10}, Lcom/xiaomi/accountsdk/account/data/G;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    invoke-static {v7, v0}, Lcom/xiaomi/accountsdk/account/b;->abK(Lcom/xiaomi/accountsdk/account/data/a;Lcom/xiaomi/accountsdk/account/data/G;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UploadMiUserProfileTask"

    const-string/jumbo v3, "UploadUserInfoTask error"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "UploadMiUserProfileTask"

    const-string/jumbo v2, "UploadUserInfoTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "UploadMiUserProfileTask"

    const-string/jumbo v2, "UploadUserInfoTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "UploadMiUserProfileTask"

    const-string/jumbo v2, "UploadUserInfoTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v6, "UploadMiUserProfileTask"

    const-string/jumbo v8, "UploadUserInfoTask error"

    invoke-static {v6, v8, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/account/task/y;->jY:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    const/4 v6, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v6

    goto :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "UploadMiUserProfileTask"

    const-string/jumbo v2, "UploadUserInfoTask error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    goto :goto_1
.end method

.method protected kY(Ljava/lang/Integer;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance v0, Lcom/xiaomi/account/data/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/task/y;->jY:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/task/y;->ka:Lcom/xiaomi/account/task/z;

    iget-object v1, p0, Lcom/xiaomi/account/task/y;->kb:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/task/y;->jX:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/xiaomi/account/task/y;->jZ:Lcom/xiaomi/accountsdk/account/data/Gender;

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/account/task/z;->ab(Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/y;->kY(Ljava/lang/Integer;)V

    return-void
.end method
