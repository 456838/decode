.class final Lcom/xiaomi/accountsdk/activate/k;
.super Lcom/xiaomi/accountsdk/activate/j;
.source ""


# instance fields
.field final synthetic abg:Lcom/xiaomi/accountsdk/activate/c;

.field final synthetic abh:I


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/activate/c;Lcom/xiaomi/accountsdk/activate/c;I)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/activate/k;->abg:Lcom/xiaomi/accountsdk/activate/c;

    iput p3, p0, Lcom/xiaomi/accountsdk/activate/k;->abh:I

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/activate/j;-><init>(Lcom/xiaomi/accountsdk/activate/c;)V

    return-void
.end method


# virtual methods
.method protected akd(Lcom/xiaomi/accountsdk/activate/IActivateService;Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/k;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    const-string/jumbo v1, "getActivateInfo2"

    invoke-interface {v0, v3, v1}, Lcom/xiaomi/accountsdk/activate/IActivateService;->akx(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/k;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    iget v1, p0, Lcom/xiaomi/accountsdk/activate/k;->abh:I

    invoke-interface {v0, v1, p2}, Lcom/xiaomi/accountsdk/activate/IActivateService;->akm(ILcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/k;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    iget v1, p0, Lcom/xiaomi/accountsdk/activate/k;->abh:I

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, p2, v2}, Lcom/xiaomi/accountsdk/activate/IActivateService;->akn(IILcom/xiaomi/accountsdk/activate/IActivateServiceResponse;Landroid/os/Bundle;)V

    goto :goto_0
.end method
