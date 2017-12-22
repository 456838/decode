.class public Lcom/xiaomi/account/ui/C;
.super Lcom/xiaomi/account/ui/x;
.source ""


# static fields
.field private static final bV:Landroid/content/IntentFilter;


# instance fields
.field private bR:Landroid/preference/Preference;

.field private bS:Landroid/preference/Preference;

.field private bT:Landroid/preference/Preference;

.field private bU:Lcom/xiaomi/account/ui/D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_SNS_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/account/ui/C;->bV:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    return-void
.end method

.method private ej()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bT:Landroid/preference/Preference;

    const-string/jumbo v1, "extra_sina_weibo_access_token"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/C;->ek(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bS:Landroid/preference/Preference;

    const-string/jumbo v1, "extra_qq_access_token"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/C;->ek(Landroid/preference/Preference;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bR:Landroid/preference/Preference;

    const-string/jumbo v1, "extra_facebook_access_token"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/C;->ek(Landroid/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method private ek(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/C;->bl:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00e1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const v0, 0x7f0c00e0

    goto :goto_0
.end method

.method static synthetic el(Lcom/xiaomi/account/ui/C;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/C;->ej()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "pref_sina_weibo"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/C;->bT:Landroid/preference/Preference;

    const-string/jumbo v0, "pref_qq"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/C;->bS:Landroid/preference/Preference;

    const-string/jumbo v0, "pref_facebook"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/C;->bR:Landroid/preference/Preference;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_sns_list"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/xiaomi/account/ui/C;->bR:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "pref_sns_list"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/xiaomi/account/ui/C;->bT:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v0, "pref_sns_list"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/C;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/xiaomi/account/ui/C;->bS:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onPause()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bU:Lcom/xiaomi/account/ui/D;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/C;->bU:Lcom/xiaomi/account/ui/D;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/account/ui/C;->bU:Lcom/xiaomi/account/ui/D;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v3, "pref_sina_weibo"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "extra_sina_weibo_access_token"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "sina"

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, v0}, Lcom/xiaomi/account/ui/SnsAddAccountActivity;->ii(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/account/ui/x;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v3, "pref_qq"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "extra_qq_access_token"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "qq"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "pref_facebook"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/C;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "extra_facebook_access_token"

    invoke-virtual {v1, v0, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "facebook"

    goto :goto_0

    :cond_2
    invoke-static {v2, v0}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dU(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/C;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/ui/D;-><init>(Lcom/xiaomi/account/ui/C;Lcom/xiaomi/account/ui/D;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/C;->bU:Lcom/xiaomi/account/ui/D;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/C;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/C;->bU:Lcom/xiaomi/account/ui/D;

    sget-object v2, Lcom/xiaomi/account/ui/C;->bV:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/C;->ej()V

    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SnsListFragment"

    return-object v0
.end method
