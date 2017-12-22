.class public Lcom/xiaomi/account/utils/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nb()Z
    .locals 1

    const-string/jumbo v0, "com.xiaomi.vipaccount"

    invoke-static {v0}, Lcom/xiaomi/account/utils/p;->oq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static nc()Z
    .locals 1

    const-string/jumbo v0, "com.xiaomi.vip"

    invoke-static {v0}, Lcom/xiaomi/account/utils/p;->oq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static nd()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.vipaccount.ACCOUNT_MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.vipaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static ne()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.vip.action.VIP_INDEX_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.vip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
