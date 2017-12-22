.class public Lcom/xiaomi/account/ui/AccountSettingsActivity;
.super Lmiui/app/Activity;
.source ""


# instance fields
.field private bt:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private dA(Lmiui/app/Activity;Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2, p3}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/AccountSettingsActivity;->bt:Landroid/accounts/AccountManagerFuture;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dB()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "fromApp"

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    const v2, 0x7f0c0144

    invoke-virtual {p0, v2}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.scanbarcode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v0, "com.xiaomi.scanner"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private dC()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "key_package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "key_page_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "package_name"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "page_name"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "account_settings"

    const-string/jumbo v3, "calling_app_of_account"

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method static synthetic dD(Lcom/xiaomi/account/ui/AccountSettingsActivity;)Landroid/accounts/AccountManagerFuture;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AccountSettingsActivity;->bt:Landroid/accounts/AccountManagerFuture;

    return-object v0
.end method

.method static synthetic dE(Lcom/xiaomi/account/ui/AccountSettingsActivity;Landroid/accounts/AccountManagerFuture;)Landroid/accounts/AccountManagerFuture;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/AccountSettingsActivity;->bt:Landroid/accounts/AccountManagerFuture;

    return-object p1
.end method

.method static synthetic dF(Lcom/xiaomi/account/ui/AccountSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dB()V

    return-void
.end method

.method private dx(Landroid/app/ActionBar;)V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/xiaomi/account/ui/bm;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bm;-><init>(Lcom/xiaomi/account/ui/AccountSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const v2, 0x800015

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private dy()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dC()V

    new-instance v0, Lcom/xiaomi/account/ui/h;

    invoke-direct {v0}, Lcom/xiaomi/account/ui/h;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x1020002

    invoke-static {v1, v2, v0}, Lcom/xiaomi/passport/utils/f;->Df(Landroid/app/FragmentManager;ILandroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method protected dz()V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "com.xiaomi.scanner"

    invoke-static {v0}, Lcom/xiaomi/account/utils/p;->oq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x14

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v1, v0, v0}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dx(Landroid/app/ActionBar;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dz()V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->ot(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->finish()V

    return-void

    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/Activity;

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dA(Lmiui/app/Activity;Landroid/accounts/AccountManager;Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "passportapi"

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/AccountSettingsActivity;->bt:Landroid/accounts/AccountManagerFuture;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bl;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bl;-><init>(Lcom/xiaomi/account/ui/AccountSettingsActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/account/utils/p;->op(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
