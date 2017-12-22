.class final Lcom/xiaomi/accountsdk/activate/i;
.super Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse$Stub;
.source ""


# instance fields
.field final synthetic aaV:Lcom/xiaomi/accountsdk/activate/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/activate/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/activate/i;->aaV:Lcom/xiaomi/accountsdk/activate/j;

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/activate/IActivateServiceResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public akA(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/i;->aaV:Lcom/xiaomi/accountsdk/activate/j;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/i;->aaV:Lcom/xiaomi/accountsdk/activate/j;

    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/activate/j;->akI(Lcom/xiaomi/accountsdk/activate/j;I)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/activate/j;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public akB(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/activate/i;->aaV:Lcom/xiaomi/accountsdk/activate/j;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/activate/j;->akG(Landroid/os/Bundle;)V

    return-void
.end method
