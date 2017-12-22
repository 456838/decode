.class Lcom/xiaomi/account/ui/V;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic em:Lcom/xiaomi/account/ui/U;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/V;->em:Lcom/xiaomi/account/ui/U;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/U;Lcom/xiaomi/account/ui/V;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/V;-><init>(Lcom/xiaomi/account/ui/U;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/V;->em:Lcom/xiaomi/account/ui/U;

    invoke-static {v0}, Lcom/xiaomi/account/ui/U;->ie(Lcom/xiaomi/account/ui/U;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.xiaomi.action.APP_CONFIG_DOWNLOAD_SUCCEED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/account/ui/V;->em:Lcom/xiaomi/account/ui/U;

    invoke-static {v0}, Lcom/xiaomi/account/ui/U;->ib(Lcom/xiaomi/account/ui/U;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.xiaomi.action.ACCOUNT_PROTECTION_SWITCH_QUERY_SUCCEED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "extra_account_protection_switch"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/V;->em:Lcom/xiaomi/account/ui/U;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/U;->id(Lcom/xiaomi/account/ui/U;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "query_user_pwd_result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "has_password"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/V;->em:Lcom/xiaomi/account/ui/U;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/U;->ig(Lcom/xiaomi/account/ui/U;Z)V

    goto :goto_0
.end method
