.class Lcom/xiaomi/account/ui/t;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aV:Lcom/xiaomi/account/ui/s;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/s;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/t;->aV:Lcom/xiaomi/account/ui/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/s;Lcom/xiaomi/account/ui/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/t;-><init>(Lcom/xiaomi/account/ui/s;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/t;->aV:Lcom/xiaomi/account/ui/s;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/s;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/t;->aV:Lcom/xiaomi/account/ui/s;

    iget-object v1, v1, Lcom/xiaomi/account/ui/s;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_phone"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/account/ui/t;->aV:Lcom/xiaomi/account/ui/s;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/s;->cq(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
