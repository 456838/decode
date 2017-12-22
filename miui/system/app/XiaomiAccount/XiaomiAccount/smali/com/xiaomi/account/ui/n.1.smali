.class Lcom/xiaomi/account/ui/n;
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
.field private aA:Landroid/accounts/Account;

.field private aB:Lcom/xiaomi/account/data/e;

.field final synthetic aC:Lcom/xiaomi/account/ui/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/m;Landroid/content/Context;Lcom/xiaomi/account/data/e;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-static {p2}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method protected varargs bD([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    const/4 v1, 0x5

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "no active xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v2}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "LoadSnsInfo accessToken empty"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-virtual {v4}, Lcom/xiaomi/account/data/e;->lU()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/xiaomi/account/utils/q;->ox(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/data/b;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v2, "LoadSnsInfo userInfo is null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    const-string/jumbo v5, "acc_avatar_url"

    invoke-virtual {v3}, Lcom/xiaomi/account/data/b;->lF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v4}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/account/data/b;->lF()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lV()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/xiaomi/account/utils/k;->ob(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-virtual {v5}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/TokenExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/SNSBindedInfoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v3, "GetSNSInfoException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x6

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v3, "AccessTokenExpiredException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    const/4 v1, 0x4

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v3, "AccessDeniedException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    const/4 v1, 0x1

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v3, "AuthenticationFailureException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    const/4 v1, 0x2

    const-string/jumbo v2, "UserAvatarUpdateFragmen"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method protected bE(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "LoadSnsInfo result is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/data/d;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/data/d;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-static {v0}, Lcom/xiaomi/account/ui/m;->bC(Lcom/xiaomi/account/ui/m;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lP()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/account/data/d;->lQ()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/n;->aA:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xiaomi/account/ui/n;->aB:Lcom/xiaomi/account/data/e;

    invoke-virtual {v2}, Lcom/xiaomi/account/data/e;->lS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "UserAvatarUpdateFragmen"

    const-string/jumbo v1, "LoadSnsInfo avatarAbsPath empty"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/account/utils/k;->oc(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-static {v1}, Lcom/xiaomi/account/ui/m;->bz(Lcom/xiaomi/account/ui/m;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/graphics/BitmapFactory;->saveToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "com.xiaomi.account.fileprovider"

    invoke-static {v0, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/n;->aC:Lcom/xiaomi/account/ui/m;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/m;->bB(Lcom/xiaomi/account/ui/m;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UserAvatarUpdateFragmen"

    const-string/jumbo v2, "LoadSnsInfo failed Save the bitmap to file"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/n;->bD([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/n;->bE(Ljava/lang/Integer;)V

    return-void
.end method
