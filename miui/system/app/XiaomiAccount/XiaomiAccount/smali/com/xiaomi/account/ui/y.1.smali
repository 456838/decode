.class Lcom/xiaomi/account/ui/y;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/account/ui/z;",
        ">;"
    }
.end annotation


# instance fields
.field private bI:Landroid/content/Context;

.field final synthetic bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/SnsAccountActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/y;->ef([Ljava/lang/Void;)Lcom/xiaomi/account/ui/z;

    move-result-object v0

    return-object v0
.end method

.method protected varargs ef([Ljava/lang/Void;)Lcom/xiaomi/account/ui/z;
    .locals 6

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v5}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lU()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/xiaomi/account/utils/q;->ox(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/data/b;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "SnsAccountActivity"

    const-string/jumbo v3, "mLoadUserInfoTask userInfo is null"

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/ui/z;

    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/xiaomi/account/ui/z;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;ILcom/xiaomi/account/data/b;)V

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/b;->lF()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v5}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lV()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/account/utils/k;->ob(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/account/data/b;->lI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/TokenExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/SNSBindedInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/xiaomi/account/ui/z;

    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {v2, v3, v0, v1}, Lcom/xiaomi/account/ui/z;-><init>(Lcom/xiaomi/account/ui/SnsAccountActivity;ILcom/xiaomi/account/data/b;)V

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SnsAccountActivity"

    const-string/jumbo v4, "GetSNSInfoException"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SnsAccountActivity"

    const-string/jumbo v3, "AccessTokenExpiredException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x6

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "SnsAccountActivity"

    const-string/jumbo v3, "AccessDeniedException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v2, "SnsAccountActivity"

    const-string/jumbo v3, "AuthenticationFailureException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    goto :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v2, "SnsAccountActivity"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected eg(Lcom/xiaomi/account/ui/z;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->ec(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->ea(Lcom/xiaomi/account/ui/SnsAccountActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/z;->lR()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->ee(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/account/ui/z;->lP()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/xiaomi/account/ui/z;->lQ()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/xiaomi/account/ui/z;->bK:Lcom/xiaomi/account/data/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/account/ui/z;->bK:Lcom/xiaomi/account/data/b;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/b;->lG()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/account/ui/z;->bK:Lcom/xiaomi/account/data/b;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/b;->lE()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lX()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/xiaomi/account/ui/z;->bK:Lcom/xiaomi/account/data/b;

    invoke-virtual {v5}, Lcom/xiaomi/account/data/b;->lH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dV(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v4}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dY(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dX(Lcom/xiaomi/account/ui/SnsAccountActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    invoke-static {v2, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bI:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/xiaomi/account/utils/k;->oc(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaomi/account/ui/z;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/y;->eg(Lcom/xiaomi/account/ui/z;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/y;->bJ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->ed(Lcom/xiaomi/account/ui/SnsAccountActivity;)V

    return-void
.end method
