.class public Lcom/xiaomi/account/ui/h;
.super Lcom/xiaomi/account/ui/x;
.source ""


# instance fields
.field private H:Landroid/app/Activity;

.field private I:Landroid/os/Handler;

.field private J:Lcom/xiaomi/account/utils/f;

.field private K:Lcom/xiaomi/account/ui/j;

.field private L:Landroid/content/BroadcastReceiver;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Ljava/lang/Runnable;

.field private Q:Z

.field private R:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->I:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/account/ui/au;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/au;-><init>(Lcom/xiaomi/account/ui/h;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->P:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/account/ui/av;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/av;-><init>(Lcom/xiaomi/account/ui/h;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->L:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private aC()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/j;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/j;

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/ui/j;-><init>(Lcom/xiaomi/account/ui/h;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private aD()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_avatar_file_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/account/utils/p;->on(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->M:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->M:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->N:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->N:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->bl:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_name"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->bl:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->O:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->O:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private aE(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/account/ui/h;->cU(Landroid/preference/PreferenceCategory;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private aF()V
    .locals 4

    const/4 v1, 0x1

    const-string/jumbo v0, "pref_vip_settings"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/h;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-static {}, Lcom/xiaomi/account/utils/c;->nb()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/xiaomi/account/utils/c;->nc()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0c013f

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->setTitle(I)V

    const v2, 0x7f0c0140

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->dd(I)V

    :goto_0
    const-string/jumbo v2, "pref_account_info"

    const-string/jumbo v3, "pref_mibi_center"

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-static {v0}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/payment/PaymentManager;->isMibiServiceDisabled()Z

    move-result v0

    :goto_1
    invoke-direct {p0, v2, v3, v0}, Lcom/xiaomi/account/ui/h;->aE(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v0, "pref_account_info"

    const-string/jumbo v2, "pref_mipay_info"

    iget-object v3, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-static {v3}, Lcom/mipay/sdk/a;->atQ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-direct {p0, v0, v2, v1}, Lcom/xiaomi/account/ui/h;->aE(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "pref_xiaomi_services"

    const-string/jumbo v2, "pref_vip_settings"

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaomi/account/ui/h;->aE(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0c0141

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->dd(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic aG(Lcom/xiaomi/account/ui/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic aH(Lcom/xiaomi/account/ui/h;)Lcom/xiaomi/account/utils/f;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    return-object v0
.end method

.method static synthetic aI(Lcom/xiaomi/account/ui/h;Lcom/xiaomi/account/utils/f;)Lcom/xiaomi/account/utils/f;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    return-object p1
.end method

.method static synthetic aJ(Lcom/xiaomi/account/ui/h;Lcom/xiaomi/account/ui/j;)Lcom/xiaomi/account/ui/j;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    return-object p1
.end method

.method static synthetic aK(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/h;->aC()V

    return-void
.end method

.method static synthetic aL(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/h;->aD()V

    return-void
.end method

.method static synthetic aM(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/h;->aF()V

    return-void
.end method


# virtual methods
.method public aB(ZZ)V
    .locals 6

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/account/ui/h;->Q:Z

    iput-boolean p2, p0, Lcom/xiaomi/account/ui/h;->R:Z

    const-string/jumbo v0, "micloudfind"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "androidPackageName"

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "service_id"

    const-string/jumbo v1, "micloudfind"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->bl:Landroid/accounts/Account;

    new-instance v4, Lcom/xiaomi/account/ui/aA;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/aA;-><init>(Lcom/xiaomi/account/ui/h;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult() requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "AccountSettingsFragment"

    const-string/jumbo v1, "no account, and finish"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :sswitch_0
    if-ne p2, v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->I:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/account/ui/ay;

    invoke-direct {v1, p0, p3}, Lcom/xiaomi/account/ui/ay;-><init>(Lcom/xiaomi/account/ui/h;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_1
    if-ne p2, v3, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/account/utils/f;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/xiaomi/account/ui/h;->Q:Z

    iget-boolean v4, p0, Lcom/xiaomi/account/ui/h;->R:Z

    new-instance v5, Lcom/xiaomi/account/ui/az;

    invoke-direct {v5, p0}, Lcom/xiaomi/account/ui/az;-><init>(Lcom/xiaomi/account/ui/h;)V

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/account/utils/f;->nt(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "AccountSettingsFragment"

    const-string/jumbo v1, "confirm password not complete"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/h;->addPreferencesFromResource(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "extra_wipe_data"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/h;->Q:Z

    const-string/jumbo v0, "extra_wipe_synced_data"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/h;->R:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/high16 v1, 0x7f030000

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v1, 0x7f100004

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaomi/account/ui/h;->M:Landroid/widget/ImageView;

    const v1, 0x7f100006

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/account/ui/h;->N:Landroid/widget/TextView;

    const v1, 0x7f100005

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaomi/account/ui/h;->O:Landroid/widget/TextView;

    const v1, 0x7f03000b

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f100022

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v4, Lcom/xiaomi/account/ui/aw;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/aw;-><init>(Lcom/xiaomi/account/ui/h;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-object v2
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/j;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/h;->K:Lcom/xiaomi/account/ui/j;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    invoke-virtual {v0}, Lcom/xiaomi/account/utils/f;->cancel()V

    iput-object v2, p0, Lcom/xiaomi/account/ui/h;->J:Lcom/xiaomi/account/utils/f;

    :cond_1
    iput-object v2, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->L:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/account/ui/h;->L:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "pref_user_info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, "user_info"

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/xiaomi/account/ui/UserDetailInfoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/h;->startActivity(Landroid/content/Intent;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v2, "account_settings"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v2, "pref_account_security"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "account_security"

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    const-class v3, Lcom/xiaomi/account/ui/AccountSecurityActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountSettingsFragment"

    const-string/jumbo v2, "onPreferenceTreeClick"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    :cond_3
    :try_start_1
    const-string/jumbo v2, "pref_mibi_center"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "mibi_center"

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-static {v2}, Lmiui/payment/PaymentManager;->get(Landroid/content/Context;)Lmiui/payment/PaymentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lmiui/payment/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "pref_mipay_info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v1, "mipay_info"

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    const-class v3, Lcom/xiaomi/account/ui/MiPayInfoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "pref_cloud_service"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v1, "cloud_service"

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.action.MICLOUD_MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "pref_vip_settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "vip_account_settings"

    invoke-static {}, Lcom/xiaomi/account/utils/c;->nb()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/xiaomi/account/utils/c;->nd()Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/xiaomi/account/utils/c;->ne()Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/h;->I:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/account/ui/h;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/h;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "extra_wipe_data"

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/h;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "extra_wipe_synced_data"

    iget-boolean v1, p0, Lcom/xiaomi/account/ui/h;->R:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onStart()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/h;->H:Landroid/app/Activity;

    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AccountSettingsFragment"

    return-object v0
.end method
