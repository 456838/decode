.class Lcom/xiaomi/account/ui/J;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private cL:Lcom/xiaomi/passport/ui/C;

.field private cM:Ljava/lang/String;

.field final synthetic cN:Lcom/xiaomi/account/ui/I;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/account/ui/J;->cM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/J;->fu([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs fu([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, v1

    :goto_0
    invoke-static {}, Lmiui/telephony/a;->aHD()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-static {v3, v0}, Lcom/xiaomi/account/ui/I;->fk(Lcom/xiaomi/account/ui/I;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/account/ui/J;->cM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lmiui/telephony/a;->aHD()I

    move-result v3

    if-lt v0, v3, :cond_2

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v3}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lmiui/telephony/a;->aHA(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_0
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v3}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmiui/telephony/a;->aHy(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_1
    iget-object v4, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v4}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "passportapi"

    invoke-static {v4, v5}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v2

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    const-string/jumbo v3, "InputBindedPhoneFragmen"

    const-string/jumbo v4, "CheckPhoneActivateStatusTask"

    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_3
    const/4 v1, 0x2

    if-ge v4, v1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/account/ui/J;->cM:Ljava/lang/String;

    invoke-static {v5, v1, v3, v0}, Lcom/xiaomi/accountsdk/account/b;->aas(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidBindAddressException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v3, "InvalidSafeAddressException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-object v2

    :catch_2
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v3, "CipherException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_3
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v3, "InvalidResponseException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_4
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v3, "AccessDeniedException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_5
    move-exception v1

    const-string/jumbo v6, "InputBindedPhoneFragmen"

    const-string/jumbo v7, "AuthenticationFailureException"

    invoke-static {v6, v7, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/I;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :catch_6
    move-exception v0

    const-string/jumbo v1, "InputBindedPhoneFragmen"

    const-string/jumbo v3, "IOException"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_7
    move-exception v3

    goto :goto_2
.end method

.method protected fv(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/J;->cL:Lcom/xiaomi/passport/ui/C;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/C;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fg(Lcom/xiaomi/account/ui/I;Lcom/xiaomi/account/ui/J;)Lcom/xiaomi/account/ui/J;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-static {v1}, Lcom/xiaomi/account/ui/I;->ff(Lcom/xiaomi/account/ui/I;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fn(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-static {v0, p1}, Lcom/xiaomi/account/ui/I;->fs(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/J;->fv(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    const v2, 0x7f0c011c

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/I;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/J;->cL:Lcom/xiaomi/passport/ui/C;

    iget-object v0, p0, Lcom/xiaomi/account/ui/J;->cL:Lcom/xiaomi/passport/ui/C;

    new-instance v1, Lcom/xiaomi/account/ui/bv;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bv;-><init>(Lcom/xiaomi/account/ui/J;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/C;->xE(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/J;->cL:Lcom/xiaomi/passport/ui/C;

    iget-object v1, p0, Lcom/xiaomi/account/ui/J;->cN:Lcom/xiaomi/account/ui/I;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/I;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "checkActivatedPhoneProgress"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
