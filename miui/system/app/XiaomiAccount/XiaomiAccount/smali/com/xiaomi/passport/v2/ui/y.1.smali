.class final Lcom/xiaomi/passport/v2/ui/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/A;


# instance fields
.field final synthetic Ec:Lcom/xiaomi/passport/v2/ui/b;

.field final synthetic Ed:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/y;->Ed:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KG(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    const-string/jumbo v1, "registered_not_recycled_phone"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    const-string/jumbo v1, "registered but recycled phone, go to login"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/n;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/n;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/y;->Ed:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/n;->Xq(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/b;->IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    return-void
.end method

.method public KH()V
    .locals 3

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    const-string/jumbo v1, "queryPhoneUserInfo: phone invalid"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0085

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/b;->It(Lcom/xiaomi/passport/v2/ui/b;II)V

    return-void
.end method

.method public KI(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    const-string/jumbo v1, "registered_possibly_recycled_phone"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    const-string/jumbo v1, "probably recycled but registered phone"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/y;->Ed:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/passport/v2/ui/b;->Ir(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V

    return-void
.end method

.method public KJ(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryPhoneUserInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0085

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/b;->It(Lcom/xiaomi/passport/v2/ui/b;II)V

    return-void
.end method

.method public KK(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    const-string/jumbo v1, "not_registered_phone"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/b;->Ix(Ljava/lang/String;)V

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    const-string/jumbo v1, "recycled phone or not registered phone, go to register"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/p;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/p;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/y;->Ed:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/p;->XE(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qu:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/passport/v2/ui/b;->IB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    return-void
.end method

.method public KL()V
    .locals 3

    const-string/jumbo v0, "PhoneTicketLoginFragment"

    const-string/jumbo v1, "queryPhoneUserInfo: ticket invalid"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/y;->Ec:Lcom/xiaomi/passport/v2/ui/b;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hj:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0085

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/b;->It(Lcom/xiaomi/passport/v2/ui/b;II)V

    return-void
.end method
