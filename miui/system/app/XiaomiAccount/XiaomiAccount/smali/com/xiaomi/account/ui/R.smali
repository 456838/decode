.class public Lcom/xiaomi/account/ui/R;
.super Lcom/xiaomi/account/ui/x;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    return-void
.end method

.method private hp()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/R;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/task/n;

    invoke-direct {v1}, Lcom/xiaomi/account/task/n;-><init>()V

    new-instance v2, Lcom/xiaomi/account/ui/cj;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/ui/cj;-><init>(Lcom/xiaomi/account/ui/R;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/ck;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/ck;-><init>(Lcom/xiaomi/account/ui/R;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private hq(Lcom/xiaomi/account/utils/r;)V
    .locals 2

    const-string/jumbo v0, "pref_bank_card"

    iget v1, p1, Lcom/xiaomi/account/utils/r;->mC:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/R;->db(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pref_balance"

    iget-object v1, p1, Lcom/xiaomi/account/utils/r;->mD:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/R;->db(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pref_identity"

    iget-boolean v0, p1, Lcom/xiaomi/account/utils/r;->mE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c01ab

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/ui/R;->da(Ljava/lang/String;I)V

    return-void

    :cond_0
    const v0, 0x7f0c01ac

    goto :goto_0
.end method

.method private hr(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/R;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private hs(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "https://app.mipay.com?id=%s&miref=miaccount"

    const-string/jumbo v0, "https://app.mipay.com?id=%s&miref=miaccount"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "com.mipay.wallet"

    const-string/jumbo v1, "com.mipay.wallet"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/R;->hr(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "com.android.browser"

    const-string/jumbo v1, "com.android.browser"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/R;->hr(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ht()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.miui.tsmclient"

    invoke-static {v0}, Lcom/xiaomi/account/utils/p;->oq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.nfc"

    invoke-static {v0}, Lcom/xiaomi/account/utils/p;->oq(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic hu(Lcom/xiaomi/account/ui/R;Lcom/xiaomi/account/utils/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/R;->hq(Lcom/xiaomi/account/utils/r;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/R;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/R;->ht()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_category_mi_pay"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/R;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "pref_transit_card"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/R;->cU(Landroid/preference/PreferenceCategory;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "pref_bank_card"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "back_card"

    const-string/jumbo v2, "mipay.bankCardList"

    const-string/jumbo v2, "mipay.bankCardList"

    invoke-direct {p0, v2}, Lcom/xiaomi/account/ui/R;->hs(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v2, "pref_identity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "mi_pay_identity"

    const-string/jumbo v1, "mipay.identityCenter"

    const-string/jumbo v1, "mipay.identityCenter"

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/R;->hs(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "mi_pay_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/xiaomi/account/ui/x;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_3
    :try_start_1
    const-string/jumbo v2, "pref_transit_card"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "transit_card"

    const-string/jumbo v2, "com.miui.tsmclient.action.ENTER_TSMCLIENT"

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.tsmclient.action.ENTER_TSMCLIENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "account_cards_type"

    const-string/jumbo v4, "account_transit_cards"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.tsmclient"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/R;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiPayInfoFragment"

    const-string/jumbo v2, "activity not found"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/R;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0143

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    return v0

    :cond_4
    :try_start_2
    const-string/jumbo v2, "pref_balance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "balance"

    const-string/jumbo v2, "mipay.userBalance"

    const-string/jumbo v2, "mipay.userBalance"

    invoke-direct {p0, v2}, Lcom/xiaomi/account/ui/R;->hs(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onResume()V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/R;->hp()V

    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MiPayInfoFragment"

    return-object v0
.end method
