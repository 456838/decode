.class final Lcom/xiaomi/account/ui/aF;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic fr:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aF;->fr:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/aF;->fr:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bh(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V

    :cond_0
    return-void
.end method
