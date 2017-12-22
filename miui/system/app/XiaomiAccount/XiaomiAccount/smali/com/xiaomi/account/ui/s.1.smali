.class public Lcom/xiaomi/account/ui/s;
.super Lcom/xiaomi/account/ui/x;
.source ""


# instance fields
.field private aT:Lcom/xiaomi/account/ui/t;

.field private aU:Lcom/xiaomi/account/task/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/account/task/m",
            "<",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    return-void
.end method

.method private cn()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_binding_phone_num"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/s;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private co()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/account/ui/s;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "acc_user_phone_list"

    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "SelectVerifyPhoneFragment"

    const-string/jumbo v2, "JSONException"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private cp(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "pref_select_verify_phone"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/s;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/s;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "acc_user_phone"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lmiui/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Lmiui/preference/RadioButtonPreferenceCategory;->setCheckedPreference(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "pref_button_next"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/s;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/account/ui/ButtonPreference;

    const v2, 0x7f0c0067

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/ButtonPreference;->setText(I)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/ButtonPreference;->dw(I)V

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/ButtonPreference;->setBackgroundResource(I)V

    new-instance v2, Lcom/xiaomi/account/ui/ba;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/account/ui/ba;-><init>(Lcom/xiaomi/account/ui/s;Lmiui/preference/RadioButtonPreferenceCategory;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private cr(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/account/ui/O;->gR(Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/account/ui/O;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v2, v1, p2, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    return-void
.end method

.method static synthetic cs(Lcom/xiaomi/account/ui/s;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/s;->cr(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public cq(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "send verify code"

    new-instance v0, Lcom/xiaomi/account/task/n;

    invoke-direct {v0}, Lcom/xiaomi/account/task/n;-><init>()V

    new-instance v1, Lcom/xiaomi/account/ui/bb;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/account/ui/bb;-><init>(Lcom/xiaomi/account/ui/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kg(Lcom/xiaomi/account/task/o;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bc;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/account/ui/bc;-><init>(Lcom/xiaomi/account/ui/s;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/n;->kh(Lcom/xiaomi/account/task/p;)Lcom/xiaomi/account/task/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/task/n;->build()Lcom/xiaomi/account/task/m;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/m;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/account/ui/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/account/ui/t;-><init>(Lcom/xiaomi/account/ui/s;Lcom/xiaomi/account/ui/t;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/s;->aT:Lcom/xiaomi/account/ui/t;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/s;->aT:Lcom/xiaomi/account/ui/t;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/s;->bl:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->bl:Landroid/accounts/Account;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/s;->co()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/s;->cn()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/account/ui/s;->cq(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const v1, 0x7f05000f

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/s;->addPreferencesFromResource(I)V

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/s;->cp(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    invoke-virtual {v0}, Lcom/xiaomi/account/task/m;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/m;->cancel(Z)Z

    :cond_0
    iput-object v2, p0, Lcom/xiaomi/account/ui/s;->aU:Lcom/xiaomi/account/task/m;

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/s;->aT:Lcom/xiaomi/account/ui/t;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/s;->aT:Lcom/xiaomi/account/ui/t;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/account/ui/s;->aT:Lcom/xiaomi/account/ui/t;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onPause()V

    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SelectVerifyPhoneFragment"

    return-object v0
.end method
