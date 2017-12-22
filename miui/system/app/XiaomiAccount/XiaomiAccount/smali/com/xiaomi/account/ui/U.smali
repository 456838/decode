.class public Lcom/xiaomi/account/ui/U;
.super Lcom/xiaomi/account/ui/x;
.source ""


# static fields
.field private static final synthetic el:[I


# instance fields
.field private eg:Lcom/xiaomi/account/task/s;

.field private eh:Landroid/os/Handler;

.field private ei:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

.field private ej:Ljava/lang/Runnable;

.field private ek:Lcom/xiaomi/account/ui/V;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/account/ui/x;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/U;->eh:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/account/ui/cn;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/cn;-><init>(Lcom/xiaomi/account/ui/U;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/U;->ej:Ljava/lang/Runnable;

    return-void
.end method

.method private hI()Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/passport/data/a;->yI()Lcom/xiaomi/passport/data/a;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vp:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/data/a;->yH(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private hJ(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/account/ui/U;->ei:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "identity_auth_token"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/task/s;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/account/ui/cp;

    invoke-direct {v3, p0}, Lcom/xiaomi/account/ui/cp;-><init>(Lcom/xiaomi/account/ui/U;)V

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/xiaomi/account/task/s;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;Lcom/xiaomi/account/task/t;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/task/s;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private hK()Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "has_password"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private hL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private hM(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/account/ui/U;->ih()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/account/ui/U;->hU(ZLjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private hN()V
    .locals 3

    const-string/jumbo v0, "pref_account_settings"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/U;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "pref_account_protection"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/U;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hI()Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    new-instance v1, Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "pref_account_protection"

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f0c01a1

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->setTitle(I)V

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->setIcon(I)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private hO()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "extra_account_protection_switch"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/U;->hP(Z)V

    return-void
.end method

.method private hP(Z)V
    .locals 2

    const-string/jumbo v0, "pref_account_protection"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/U;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const v1, 0x7f0c01a2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dd(I)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0c01a3

    goto :goto_0
.end method

.method private hQ()V
    .locals 5

    const v4, 0x7f0c0111

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_email"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pref_account_useremail"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/ui/U;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/account/ui/U;->db(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_phone"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_account_userphone"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/xiaomi/account/ui/U;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/ui/U;->db(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hR()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hK()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/U;->hS(Z)V

    return-void
.end method

.method private hS(Z)V
    .locals 3

    const-string/jumbo v0, "pref_account_password"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/U;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    const-string/jumbo v1, "pref_account_user_secure_info"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/U;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/account/ui/U;->cY(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/account/ui/AccountValuePreference;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "pref_account_password"

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/ui/AccountValuePreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    const v1, 0x7f0c00b1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->setTitle(I)V

    goto :goto_0
.end method

.method private hT(IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private hU(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/xiaomi/account/ui/BindSafeEmailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_has_unactivated_email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "unactivated_email_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/U;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private hV()V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "unactivated_email_address"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unactivated_email_time_stamp"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v7, "acc_user_email"

    invoke-virtual {v4, v5, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Ra:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/U;->hJ(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4, v1}, Lcom/xiaomi/account/ui/U;->hL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/U;->hU(ZLjava/lang/String;)V

    return-void

    :cond_2
    new-instance v4, Lcom/xiaomi/account/ui/co;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/co;-><init>(Lcom/xiaomi/account/ui/U;)V

    const v1, 0x7f0c0136

    const v2, 0x7f0c0137

    const v3, 0x104000a

    const/high16 v5, 0x1040000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/account/ui/U;->hT(IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic hW(Lcom/xiaomi/account/ui/U;)Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->ei:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    return-object v0
.end method

.method static synthetic hX(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/account/task/s;)Lcom/xiaomi/account/task/s;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    return-object p1
.end method

.method static synthetic hY(Lcom/xiaomi/account/ui/U;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hI()Z

    move-result v0

    return v0
.end method

.method static synthetic hZ(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/U;->hJ(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    return-void
.end method

.method static synthetic ia(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/U;->hM(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    return-void
.end method

.method static synthetic ib(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hN()V

    return-void
.end method

.method static synthetic ic(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hO()V

    return-void
.end method

.method static synthetic id(Lcom/xiaomi/account/ui/U;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/U;->hP(Z)V

    return-void
.end method

.method static synthetic ie(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hQ()V

    return-void
.end method

.method static synthetic if(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hR()V

    return-void
.end method

.method static synthetic ig(Lcom/xiaomi/account/ui/U;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/U;->hS(Z)V

    return-void
.end method

.method private static synthetic ih()[I
    .locals 3

    sget-object v0, Lcom/xiaomi/account/ui/U;->el:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/account/ui/U;->el:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->values()[Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QV:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QW:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QX:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QY:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QZ:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Ra:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Rb:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/xiaomi/account/ui/U;->el:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "MiAccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult() requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/account/ui/x;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "notification_auth_end"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/U;->bl:Landroid/accounts/Account;

    const-string/jumbo v3, "identity_auth_token"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->Th:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->ei:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/U;->hM(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x270f

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->Ra:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/U;->hJ(Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/account/ui/x;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/U;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->eh:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->ej:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/task/s;->cancel(Z)Z

    iput-object v2, p0, Lcom/xiaomi/account/ui/U;->eg:Lcom/xiaomi/account/task/s;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->ek:Lcom/xiaomi/account/ui/V;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->ek:Lcom/xiaomi/account/ui/V;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/xiaomi/account/ui/U;->ek:Lcom/xiaomi/account/ui/V;

    :cond_0
    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pref_account_userphone"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "user_phone"

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/U;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "account_security_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xiaomi/account/ui/x;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v3, "pref_account_useremail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "user_email"

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hV()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "pref_account_protection"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v0, "account_protection"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xiaomi/account/ui/AccountProtectionActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/U;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "pref_sns_bind"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v0, "sns_accounts"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xiaomi/account/ui/SnsListActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/U;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "pref_bind_devices"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v0, "devices"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xiaomi/account/ui/MyDeviceActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/U;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "pref_account_password"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/U;->hK()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "set_password"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/U;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/account/ui/x;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->cS()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/U;->eh:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/account/ui/U;->ej:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/xiaomi/account/ui/V;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/account/ui/V;-><init>(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/account/ui/V;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/U;->ek:Lcom/xiaomi/account/ui/V;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.xiaomi.action.APP_CONFIG_DOWNLOAD_SUCCEED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.action.ACCOUNT_PROTECTION_SWITCH_QUERY_SUCCEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "query_user_pwd_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/U;->ek:Lcom/xiaomi/account/ui/V;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MiAccountSettingsFragment"

    return-object v0
.end method
