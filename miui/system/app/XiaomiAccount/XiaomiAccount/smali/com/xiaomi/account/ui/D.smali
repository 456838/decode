.class Lcom/xiaomi/account/ui/D;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bW:Lcom/xiaomi/account/ui/C;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/C;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/D;->bW:Lcom/xiaomi/account/ui/C;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/C;Lcom/xiaomi/account/ui/D;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/D;-><init>(Lcom/xiaomi/account/ui/C;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_SNS_INFO_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/D;->bW:Lcom/xiaomi/account/ui/C;

    invoke-static {v0}, Lcom/xiaomi/account/ui/C;->el(Lcom/xiaomi/account/ui/C;)V

    :cond_0
    return-void
.end method
