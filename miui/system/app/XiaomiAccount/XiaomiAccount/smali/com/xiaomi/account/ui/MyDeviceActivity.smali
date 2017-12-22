.class public Lcom/xiaomi/account/ui/MyDeviceActivity;
.super Lmiui/preference/PreferenceActivity;
.source ""


# instance fields
.field private aJ:Landroid/widget/ImageView;

.field private aK:Lcom/xiaomi/account/ui/q;

.field private aL:Lcom/xiaomi/account/task/e;

.field private aM:Landroid/widget/TextView;

.field private aN:Landroid/preference/Preference;

.field private aO:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private bK()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aN:Landroid/preference/Preference;

    const v1, 0x7f0c0152

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/ui/q;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/account/ui/q;-><init>(Lcom/xiaomi/account/ui/MyDeviceActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/ui/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/task/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/task/f;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/xiaomi/account/ui/aQ;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/aQ;-><init>(Lcom/xiaomi/account/ui/MyDeviceActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/f;->jQ(Lcom/xiaomi/account/task/g;)Lcom/xiaomi/account/task/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/f;->build()Lcom/xiaomi/account/task/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private bL(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "deviceName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qK(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic bM(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aJ:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic bN(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aM:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic bO(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aN:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic bP(Lcom/xiaomi/account/ui/MyDeviceActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aO:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic bQ(Lcom/xiaomi/account/ui/MyDeviceActivity;Lcom/xiaomi/account/ui/q;)Lcom/xiaomi/account/ui/q;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    return-object p1
.end method

.method static synthetic bR(Lcom/xiaomi/account/ui/MyDeviceActivity;Lcom/xiaomi/account/task/e;)Lcom/xiaomi/account/task/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    return-object p1
.end method

.method static synthetic bS(Lcom/xiaomi/account/ui/MyDeviceActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->setImmersionMenuEnabled(Z)V

    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const-string/jumbo v0, "pref_my_device_info"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aN:Landroid/preference/Preference;

    const-string/jumbo v0, "pref_view_other_devices"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/account/ui/aP;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/aP;-><init>(Lcom/xiaomi/account/ui/MyDeviceActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f10000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aJ:Landroid/widget/ImageView;

    const v0, 0x7f100010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aM:Landroid/widget/TextView;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aO:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aO:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->bK()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/q;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aK:Lcom/xiaomi/account/ui/q;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/task/e;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aL:Lcom/xiaomi/account/task/e;

    :cond_1
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.settings.DEVICE_NAME_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.settings.DEVICE_INFO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f1000c2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->ol(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0c0146

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.account.action.MY_DEVICE"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/account/ui/NoNetworkActivity;->fy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/MyDeviceActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/MyDeviceActivity;->aN:Landroid/preference/Preference;

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
