.class Lcom/xiaomi/account/ui/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic A:Lcom/xiaomi/account/ui/c;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/e;->A:Lcom/xiaomi/account/ui/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/ui/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/e;-><init>(Lcom/xiaomi/account/ui/c;)V

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

    iget-object v0, p0, Lcom/xiaomi/account/ui/e;->A:Lcom/xiaomi/account/ui/c;

    invoke-static {v0}, Lcom/xiaomi/account/ui/c;->W(Lcom/xiaomi/account/ui/c;)V

    :cond_0
    return-void
.end method
