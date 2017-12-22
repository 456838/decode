.class final Lcom/xiaomi/accountsdk/activate/h;
.super Lcom/xiaomi/accountsdk/activate/j;
.source ""


# instance fields
.field final synthetic aaQ:Lcom/xiaomi/accountsdk/activate/c;

.field final synthetic aaR:I

.field final synthetic aaS:I

.field final synthetic aaT:I

.field final synthetic aaU:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/activate/c;Lcom/xiaomi/accountsdk/activate/c;IIIZ)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/activate/h;->aaQ:Lcom/xiaomi/accountsdk/activate/c;

    iput p3, p0, Lcom/xiaomi/accountsdk/activate/h;->aaR:I

    iput p4, p0, Lcom/xiaomi/accountsdk/activate/h;->aaS:I

    iput p5, p0, Lcom/xiaomi/accountsdk/activate/h;->aaT:I

    iput-boolean p6, p0, Lcom/xiaomi/accountsdk/activate/h;->aaU:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/activate/j;-><init>(Lcom/xiaomi/accountsdk/activate/c;)V

    return-void
.end method


# virtual methods
.method protected akd(Lcom/xiaomi/accountsdk/activate/IActivateService;Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;)V
    .locals 8

    const/4 v3, 0x0

    iget v1, p0, Lcom/xiaomi/accountsdk/activate/h;->aaR:I

    iget v2, p0, Lcom/xiaomi/accountsdk/activate/h;->aaS:I

    iget-object v5, p0, Lcom/xiaomi/accountsdk/activate/h;->aaX:Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;

    iget v6, p0, Lcom/xiaomi/accountsdk/activate/h;->aaT:I

    iget-boolean v7, p0, Lcom/xiaomi/accountsdk/activate/h;->aaU:Z

    move-object v0, p1

    move-object v4, v3

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/accountsdk/activate/IActivateService;->aky(IILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse;IZ)V

    return-void
.end method
