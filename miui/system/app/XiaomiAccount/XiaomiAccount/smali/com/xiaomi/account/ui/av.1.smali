.class final Lcom/xiaomi/account/ui/av;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic fg:Lcom/xiaomi/account/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/av;->fg:Lcom/xiaomi/account/ui/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.action.XIAOMI_USER_INFO_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/av;->fg:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aL(Lcom/xiaomi/account/ui/h;)V

    :cond_0
    return-void
.end method
