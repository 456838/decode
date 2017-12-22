.class public Lcom/xiaomi/account/task/e;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final iH:Landroid/content/Context;

.field private final iI:Lcom/xiaomi/account/task/g;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/task/f;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/account/task/f;->jR(Lcom/xiaomi/account/task/f;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/e;->iH:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/account/task/f;->jS(Lcom/xiaomi/account/task/f;)Lcom/xiaomi/account/task/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/e;->iI:Lcom/xiaomi/account/task/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/task/f;Lcom/xiaomi/account/task/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/task/e;-><init>(Lcom/xiaomi/account/task/f;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/e;->jO([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs jO([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lmiui/telephony/a;->aHD()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/account/task/e;->iH:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/activate/a;->ajU(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "GetActivatePhoneTask"

    const-string/jumbo v3, "getPhoneNumber: Null ActivateManagerFuture."

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/xiaomi/accountsdk/activate/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_2

    const-string/jumbo v0, "GetActivatePhoneTask"

    const-string/jumbo v3, "getPhoneNumber: Null ActivateManagerFuture bundle."

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GetActivatePhoneTask"

    const-string/jumbo v4, "getPhoneNumber: "

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    :try_start_1
    const-string/jumbo v3, "sim_inserted"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "GetActivatePhoneTask"

    const-string/jumbo v3, "getPhoneNumber: SIM not inserted"

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "GetActivatePhoneTask"

    const-string/jumbo v4, "getPhoneNumber: "

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_2
    const-string/jumbo v3, "activate_phone"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v3, "GetActivatePhoneTask"

    const-string/jumbo v4, "getPhoneNumber: "

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method protected jP(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/task/e;->iI:Lcom/xiaomi/account/task/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/e;->iI:Lcom/xiaomi/account/task/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/account/task/g;->iE(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/e;->jP(Ljava/util/List;)V

    return-void
.end method
