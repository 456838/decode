.class final Lcom/xiaomi/account/ui/bG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gR:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic gS:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bG;->gS:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/xiaomi/account/n;

    invoke-direct {v0}, Lcom/xiaomi/account/n;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/account/n;->sb()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/account/n;

    invoke-direct {v0}, Lcom/xiaomi/account/n;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/account/ui/bG;->gS:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/n;->sd(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/bG;->gS:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/xiaomi/account/n;->se(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-static {v2}, Lcom/xiaomi/account/ui/LoginActivity;->fT(Lcom/xiaomi/account/ui/LoginActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/account/ui/bH;

    invoke-direct {v3, p0, v1, v0}, Lcom/xiaomi/account/ui/bH;-><init>(Lcom/xiaomi/account/ui/bG;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
