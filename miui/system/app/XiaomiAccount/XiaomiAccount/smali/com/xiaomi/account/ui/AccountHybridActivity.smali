.class public Lcom/xiaomi/account/ui/AccountHybridActivity;
.super Lmiui/hybrid/HybridActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/hybrid/HybridActivity;-><init>()V

    return-void
.end method

.method private gO()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "account.hybrid.activity.action.bar.title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private gP(Lmiui/hybrid/HybridView;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/hybrid/HybridView;->getSettings()Lmiui/hybrid/HybridSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridSettings;->setDomStorageEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/hybrid/HybridActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->gO()V

    sget v0, Lmiui/R$id;->hybrid_view:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/hybrid/HybridView;

    new-instance v1, Lcom/xiaomi/account/ui/cb;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/cb;-><init>(Lcom/xiaomi/account/ui/AccountHybridActivity;)V

    invoke-virtual {v0, v1}, Lmiui/hybrid/HybridView;->setHybridChromeClient(Lmiui/hybrid/HybridChromeClient;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->gP(Lmiui/hybrid/HybridView;)V

    return-void
.end method
