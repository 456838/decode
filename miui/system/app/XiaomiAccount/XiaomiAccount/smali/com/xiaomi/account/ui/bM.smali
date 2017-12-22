.class final Lcom/xiaomi/account/ui/bM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic he:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic hf:Z

.field final synthetic hg:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bM;->he:Lcom/xiaomi/account/ui/LoginActivity;

    iput-boolean p2, p0, Lcom/xiaomi/account/ui/bM;->hf:Z

    iput-object p3, p0, Lcom/xiaomi/account/ui/bM;->hg:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/bM;->hf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bM;->he:Lcom/xiaomi/account/ui/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/LoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bM;->he:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/LoginActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bM;->he:Lcom/xiaomi/account/ui/LoginActivity;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bM;->he:Lcom/xiaomi/account/ui/LoginActivity;

    invoke-static {v1}, Lcom/xiaomi/account/ui/LoginActivity;->fV(Lcom/xiaomi/account/ui/LoginActivity;)Ljava/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/account/ui/bM;->hg:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/LoginActivity;->fW(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
