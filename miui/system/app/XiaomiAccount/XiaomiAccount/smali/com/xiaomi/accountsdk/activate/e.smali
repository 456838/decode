.class final Lcom/xiaomi/accountsdk/activate/e;
.super Lcom/xiaomi/accountsdk/activate/j;
.source ""


# instance fields
.field final synthetic aaC:Lcom/xiaomi/accountsdk/activate/c;

.field final synthetic aaD:I


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/activate/c;Lcom/xiaomi/accountsdk/activate/c;I)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/activate/e;->aaC:Lcom/xiaomi/accountsdk/activate/c;

    iput p3, p0, Lcom/xiaomi/accountsdk/activate/e;->aaD:I

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/activate/j;-><init>(Lcom/xiaomi/accountsdk/activate/c;)V

    return-void
.end method


# virtual methods
.method protected akd(Lcom/xiaomi/accountsdk/activate/IActivateService;Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/e;->aaW:Lcom/xiaomi/accountsdk/activate/IActivateService;

    iget v1, p0, Lcom/xiaomi/accountsdk/activate/e;->aaD:I

    invoke-interface {v0, v1, p2}, Lcom/xiaomi/accountsdk/activate/IActivateService;->akr(ILcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V

    return-void
.end method
