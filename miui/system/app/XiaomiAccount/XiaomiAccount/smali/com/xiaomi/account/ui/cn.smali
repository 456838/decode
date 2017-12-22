.class final Lcom/xiaomi/account/ui/cn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hN:Lcom/xiaomi/account/ui/U;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/U;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/U;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qs(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-static {v1}, Lcom/xiaomi/account/ui/U;->hY(Lcom/xiaomi/account/ui/U;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qI(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-static {v1}, Lcom/xiaomi/account/ui/U;->ic(Lcom/xiaomi/account/ui/U;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-static {v1}, Lcom/xiaomi/account/ui/U;->ie(Lcom/xiaomi/account/ui/U;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-static {v1}, Lcom/xiaomi/account/ui/U;->ib(Lcom/xiaomi/account/ui/U;)V

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qJ(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/cn;->hN:Lcom/xiaomi/account/ui/U;

    invoke-static {v0}, Lcom/xiaomi/account/ui/U;->if(Lcom/xiaomi/account/ui/U;)V

    return-void
.end method
