.class public Lcom/xiaomi/passport/ui/e;
.super Lcom/xiaomi/passport/ui/l;
.source ""


# instance fields
.field private oX:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    return-void
.end method

.method public static sV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/ui/e;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "externalId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "regType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/passport/ui/e;

    invoke-direct {v1}, Lcom/xiaomi/passport/ui/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/e;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private sW(Ljava/lang/String;J)Z
    .locals 10

    const/4 v8, 0x1

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/R;

    invoke-direct {v1, p0, p1, v7}, Lcom/xiaomi/passport/ui/R;-><init>(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p2, p3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-interface {v2, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AccountRegSuccessFragment"

    const-string/jumbo v4, "blockingCheckPhoneAccountSynced"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private sX(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/accountsdk/request/m;->aek(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->aao(Lcom/xiaomi/accountsdk/request/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v1, "response content is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountRegSuccessFragment"

    const-string/jumbo v2, "checkPhoneAccountSynced"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const-string/jumbo v2, "AccountRegSuccessFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",desc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "description"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v5
.end method

.method private sY(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/ui/Q;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/ui/Q;-><init>(Lcom/xiaomi/passport/ui/e;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/e;->oX:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/e;->oX:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static sZ(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/e;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "account_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "externalId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "regType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/xiaomi/passport/ui/e;

    invoke-direct {v1}, Lcom/xiaomi/passport/ui/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/e;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p3}, Lcom/xiaomi/passport/ui/e;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v1
.end method

.method static synthetic ta(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;J)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/e;->sW(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic tb(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/e;->sX(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AccountRegSuccessFragment"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/e;->px:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030024

    :goto_0
    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const v0, 0x7f1000a6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f10003b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string/jumbo v4, "regType"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "externalId"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v5, v4, v8

    const v5, 0x7f0c0017

    invoke-virtual {p0, v5, v4}, Lcom/xiaomi/passport/ui/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1000a7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f1000a8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string/jumbo v0, "account_info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    const v2, 0x7f1000a5

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    aput-object v7, v6, v8

    const v7, 0x7f0c00b7

    invoke-virtual {p0, v7, v6}, Lcom/xiaomi/passport/ui/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->PE:Ljava/lang/String;

    new-instance v6, Lcom/xiaomi/passport/ui/I;

    invoke-direct {v6, p0, v4, v1}, Lcom/xiaomi/passport/ui/I;-><init>(Lcom/xiaomi/passport/ui/e;Landroid/view/View;Landroid/widget/Button;)V

    new-instance v7, Lcom/xiaomi/passport/ui/J;

    invoke-direct {v7, p0, v4, v1, v0}, Lcom/xiaomi/passport/ui/J;-><init>(Lcom/xiaomi/passport/ui/e;Landroid/view/View;Landroid/widget/Button;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    new-instance v0, Lcom/xiaomi/passport/ui/N;

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/xiaomi/passport/ui/N;-><init>(Lcom/xiaomi/passport/ui/e;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    invoke-direct {p0, v2, v6, v7, v0}, Lcom/xiaomi/passport/ui/e;->sY(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    const-string/jumbo v0, "reg_success"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/e;->tS(Ljava/lang/String;)V

    return-object v3

    :cond_1
    const v0, 0x7f030012

    goto/16 :goto_0

    :cond_2
    if-ne v4, v9, :cond_0

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v5, v2, v8

    const v4, 0x7f0c003e

    invoke-virtual {p0, v4, v2}, Lcom/xiaomi/passport/ui/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/xiaomi/passport/ui/P;

    invoke-direct {v0, p0, v5, v6}, Lcom/xiaomi/passport/ui/P;-><init>(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/e;->oX:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/e;->oX:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/passport/ui/e;->oX:Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/passport/ui/l;->onDestroy()V

    return-void
.end method
