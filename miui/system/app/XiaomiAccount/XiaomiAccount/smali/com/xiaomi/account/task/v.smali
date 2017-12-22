.class public Lcom/xiaomi/account/task/v;
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
.field private final jQ:Landroid/app/Activity;

.field private jR:Lcom/xiaomi/passport/ui/C;

.field private final jS:Lcom/xiaomi/account/task/x;

.field private final jT:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/xiaomi/account/task/x;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/account/task/v;->jS:Lcom/xiaomi/account/task/x;

    iput-object p3, p0, Lcom/xiaomi/account/task/v;->jT:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/xiaomi/account/task/x;Ljava/lang/Runnable;Lcom/xiaomi/account/task/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/task/v;-><init>(Landroid/app/Activity;Lcom/xiaomi/account/task/x;Ljava/lang/Runnable;)V

    return-void
.end method

.method private kR()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/v;->kS([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs kS([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    const/4 v4, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const-string/jumbo v6, "passportapi"

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "SetUserInfoTask"

    const-string/jumbo v1, "passport info is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    move v5, v1

    move v0, v4

    :goto_0
    if-ge v5, v3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jS:Lcom/xiaomi/account/task/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jS:Lcom/xiaomi/account/task/x;

    invoke-interface {v0, v7, v6}, Lcom/xiaomi/account/task/x;->ij(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v8, "SetUserInfoTask"

    const-string/jumbo v9, "auth failure"

    invoke-static {v8, v9, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "SetUserInfoTask"

    const-string/jumbo v2, "access denied"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    :cond_2
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "SetUserInfoTask"

    const-string/jumbo v3, "server error"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_2

    :catch_3
    move-exception v0

    const-string/jumbo v1, "SetUserInfoTask"

    const-string/jumbo v2, "network error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    goto :goto_2

    :catch_4
    move-exception v0

    const-string/jumbo v1, "SetUserInfoTask"

    const-string/jumbo v3, "cipher"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_2

    :catch_5
    move-exception v0

    const-string/jumbo v1, "SetUserInfoTask"

    const-string/jumbo v2, "invalid params"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    goto :goto_2
.end method

.method protected kT(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/xiaomi/account/task/v;->kR()V

    return-void
.end method

.method protected kU(Ljava/lang/Integer;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/task/v;->kR()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    const v1, 0x7f0c0096

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    new-instance v0, Lcom/xiaomi/account/data/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jT:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jT:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/v;->kT(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/task/v;->kU(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    const v2, 0x7f0c0075

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/account/task/C;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/task/C;-><init>(Lcom/xiaomi/account/task/v;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/task/v;->jR:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/account/task/v;->jQ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "SetUserInfoProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
