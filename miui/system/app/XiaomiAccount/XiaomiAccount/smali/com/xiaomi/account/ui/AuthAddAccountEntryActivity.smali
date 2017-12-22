.class public Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private dF:Lcom/xiaomi/account/XiaomiOAuthResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private gC()V
    .locals 8

    const/4 v3, 0x0

    new-instance v6, Lcom/xiaomi/account/ui/bX;

    invoke-direct {v6, p0}, Lcom/xiaomi/account/ui/bX;-><init>(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi"

    const-string/jumbo v2, "passportapi"

    move-object v4, v3

    move-object v5, p0

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public static gD(Landroid/content/Context;Lcom/xiaomi/account/XiaomiOAuthResponse;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "extra_response"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic gE(Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;)Lcom/xiaomi/account/XiaomiOAuthResponse;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->dF:Lcom/xiaomi/account/XiaomiOAuthResponse;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_response"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/XiaomiOAuthResponse;

    iput-object v0, p0, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->dF:Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {p0}, Lcom/xiaomi/account/ui/AuthAddAccountEntryActivity;->gC()V

    return-void
.end method
