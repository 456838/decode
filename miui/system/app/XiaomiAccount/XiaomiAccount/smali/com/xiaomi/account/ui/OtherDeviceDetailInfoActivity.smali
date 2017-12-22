.class public Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;
.super Lmiui/preference/PreferenceActivity;
.source ""


# instance fields
.field private bp:Lcom/xiaomi/account/task/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/m",
            "<",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            ">;"
        }
    .end annotation
.end field

.field private bq:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private dg()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->finish()V

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "service_id"

    const-string/jumbo v3, "deviceinfo"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/xiaomi/account/ui/bg;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/bg;-><init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private dh(ZZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/task/n;

    invoke-direct {v0}, Lcom/xiaomi/account/task/n;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0129

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/n;->kf(Landroid/app/FragmentManager;Ljava/lang/String;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bh;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/xiaomi/account/ui/bh;-><init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;ZLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bi;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bi;-><init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    iget-object v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static di(I)Lcom/xiaomi/account/data/k;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/account/data/j;->mz()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "OtherDeviceDetailInfoAc"

    const-string/jumbo v1, "invalid position or deviceList is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/k;

    return-object v0
.end method

.method private dj(Lcom/xiaomi/account/data/k;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/account/data/k;->mN()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/D;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/D;->Zd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dk()V
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "list_position_param"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bq:I

    iget v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bq:I

    invoke-static {v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->di(I)Lcom/xiaomi/account/data/k;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "OtherDeviceDetailInfoAc"

    const-string/jumbo v1, "initDeviceInfo the device info is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/account/data/k;->mK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const-string/jumbo v0, "pref_device_info"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/account/data/k;->mL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dj(Lcom/xiaomi/account/data/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v0, 0x7f0c0152

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/k;->mK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10000f

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/k;->mG()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/xiaomi/passport/utils/r;->EH(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {v1}, Lcom/xiaomi/account/data/k;->mM()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dl(Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dl(Z)V
    .locals 2

    const v0, 0x7f100011

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dm(Landroid/view/View;Z)V

    const v0, 0x7f100032

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dm(Landroid/view/View;Z)V

    const v0, 0x7f100031

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dm(Landroid/view/View;Z)V

    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    const v1, 0x7f0c014e

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0150

    goto :goto_1
.end method

.method private dm(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private dn()V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0154

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0155

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f10000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/account/ui/bj;

    invoke-direct {v3, p0}, Lcom/xiaomi/account/ui/bj;-><init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/account/ui/bk;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/bk;-><init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private do(II)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic dp(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bq:I

    return v0
.end method

.method static synthetic dq(I)Lcom/xiaomi/account/data/k;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->di(I)Lcom/xiaomi/account/data/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic dr(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dg()V

    return-void
.end method

.method static synthetic ds(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dh(ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic dt(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dl(Z)V

    return-void
.end method

.method static synthetic du(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dn()V

    return-void
.end method

.method static synthetic dv(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->do(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->setContentView(I)V

    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->addPreferencesFromResource(I)V

    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bf;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bf;-><init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->dk()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/passport/ui/q;->uG()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;->bp:Lcom/xiaomi/account/task/m;

    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    return-void
.end method
