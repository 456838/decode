.class final Lcom/xiaomi/accountsdk/activate/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abl:Lcom/xiaomi/accountsdk/activate/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/activate/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/activate/m;->abl:Lcom/xiaomi/accountsdk/activate/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/m;->abl:Lcom/xiaomi/accountsdk/activate/j;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/activate/j;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/m;->abl:Lcom/xiaomi/accountsdk/activate/j;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/m;->abl:Lcom/xiaomi/accountsdk/activate/j;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/activate/j;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/activate/m;->abl:Lcom/xiaomi/accountsdk/activate/j;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/activate/j;->aaX:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/activate/j;->akd(Lcom/xiaomi/accountsdk/activate/IActivateService;Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/m;->abl:Lcom/xiaomi/accountsdk/activate/j;

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/activate/j;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
