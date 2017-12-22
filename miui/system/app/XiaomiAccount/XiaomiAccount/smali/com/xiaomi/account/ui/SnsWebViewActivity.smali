.class public Lcom/xiaomi/account/ui/SnsWebViewActivity;
.super Lmiui/app/Activity;
.source ""


# instance fields
.field private dL:Landroid/accounts/Account;

.field private dM:Landroid/os/AsyncTask;
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
.end field

.field private dN:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Lcom/xiaomi/account/ui/Q;",
            ">;"
        }
    .end annotation
.end field

.field private dO:Landroid/widget/ProgressBar;

.field private dP:Lcom/xiaomi/accountsdk/utils/s;

.field private dQ:Z

.field private dR:Lcom/xiaomi/account/data/e;

.field private dS:Landroid/webkit/WebView;

.field dT:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Lcom/xiaomi/account/ui/ch;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/ch;-><init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dT:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static gU(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/SnsWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra_show_sns_account_after_binding_success"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ":miui:starting_window_label"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private gV()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/P;

    invoke-direct {v0, p0, p0}, Lcom/xiaomi/account/ui/P;-><init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private gW()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/ui/ci;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/ui/ci;-><init>(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private gX()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dR:Lcom/xiaomi/account/data/e;

    invoke-virtual {v0}, Lcom/xiaomi/account/data/e;->md()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mobile"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "wap"

    goto :goto_0
.end method

.method private gY(Ljava/util/Map;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v3, "%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private gZ()V
    .locals 1

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private ha()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dO:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dO:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hb()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dO:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dO:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic hc(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dL:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic hd(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dQ:Z

    return v0
.end method

.method static synthetic he(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Lcom/xiaomi/account/data/e;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dR:Lcom/xiaomi/account/data/e;

    return-object v0
.end method

.method static synthetic hf(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic hg(Lcom/xiaomi/account/ui/SnsWebViewActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic hh(Lcom/xiaomi/account/ui/SnsWebViewActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic hi(Lcom/xiaomi/account/ui/SnsWebViewActivity;Ljava/util/Map;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gY(Ljava/util/Map;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic hj(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gW()V

    return-void
.end method

.method static synthetic hk(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gZ()V

    return-void
.end method

.method static synthetic hl(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->ha()V

    return-void
.end method

.method static synthetic hm(Lcom/xiaomi/account/ui/SnsWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hb()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f03005d

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->setContentView(I)V

    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dO:Landroid/widget/ProgressBar;

    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/u;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/u;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/u;->air(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/v;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/v;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/v;->ait(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/y;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/y;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/y;->aiy(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/x;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/x;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/x;->aiw(Landroid/webkit/WebView;)V

    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->hb()V

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dT:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_bind_sns_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "SnsWebViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown bind type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahm(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->finish()V

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dR:Lcom/xiaomi/account/data/e;

    invoke-virtual {v1}, Lcom/xiaomi/account/data/e;->mc()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/utils/w;

    iget-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/utils/w;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dP:Lcom/xiaomi/accountsdk/utils/s;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dP:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/r;->aij(Lcom/xiaomi/accountsdk/utils/s;)V

    return-void

    :pswitch_1
    const-string/jumbo v1, "extra_sns_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dR:Lcom/xiaomi/account/data/e;

    const-string/jumbo v1, "extra_show_sns_account_after_binding_success"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dQ:Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "sina"

    invoke-static {v0}, Lcom/xiaomi/account/data/e;->lW(Ljava/lang/String;)Lcom/xiaomi/account/data/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dR:Lcom/xiaomi/account/data/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dQ:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dN:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dM:Landroid/os/AsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dP:Lcom/xiaomi/accountsdk/utils/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dP:Lcom/xiaomi/accountsdk/utils/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/r;->aim(Lcom/xiaomi/accountsdk/utils/s;)V

    iput-object v1, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dP:Lcom/xiaomi/accountsdk/utils/s;

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gZ()V

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dS:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dL:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/xiaomi/account/ui/SnsWebViewActivity;->dL:Landroid/accounts/Account;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SnsWebViewActivity"

    const-string/jumbo v1, "no xiaomi account"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/SnsWebViewActivity;->gV()V

    return-void
.end method
