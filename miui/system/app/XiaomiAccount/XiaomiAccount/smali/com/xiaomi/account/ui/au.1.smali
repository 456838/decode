.class final Lcom/xiaomi/account/ui/au;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ff:Lcom/xiaomi/account/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/h;->cT()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aG(Lcom/xiaomi/account/ui/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qs(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aL(Lcom/xiaomi/account/ui/h;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aM(Lcom/xiaomi/account/ui/h;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aG(Lcom/xiaomi/account/ui/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/XiaomiAccountTaskService;->qr(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/au;->ff:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aK(Lcom/xiaomi/account/ui/h;)V

    return-void
.end method
