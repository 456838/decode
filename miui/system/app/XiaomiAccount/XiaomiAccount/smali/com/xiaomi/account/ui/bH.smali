.class final Lcom/xiaomi/account/ui/bH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gT:Lcom/xiaomi/account/ui/bG;

.field final synthetic gU:Z

.field final synthetic gV:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/bG;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iput-boolean p2, p0, Lcom/xiaomi/account/ui/bH;->gU:Z

    iput-boolean p3, p0, Lcom/xiaomi/account/ui/bH;->gV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v0, v0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    iget-boolean v0, v0, Lcom/xiaomi/account/ui/LoginActivity;->bu:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/bH;->gU:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v0, v0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/LoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v0, v0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/LoginActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v0, v0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v1, v1, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/LoginActivity;->fV(Lcom/xiaomi/account/ui/LoginActivity;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/LoginActivity;->fU(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/bH;->gV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v0, v0, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bH;->gT:Lcom/xiaomi/account/ui/bG;

    iget-object v1, v1, Lcom/xiaomi/account/ui/bG;->gR:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/LoginActivity;->fS(Lcom/xiaomi/account/ui/LoginActivity;)Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/LoginActivity;->fW(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
