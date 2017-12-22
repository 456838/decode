.class final Lcom/xiaomi/passport/v2/ui/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/A;


# instance fields
.field final synthetic DO:Lcom/xiaomi/passport/v2/ui/a;

.field final synthetic DP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/s;->DP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KG(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 3

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "registered but recycled phone, go to login"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "registered_not_recycled_phone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/s;->DP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/passport/v2/ui/a;->Id(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method public KH()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "queryPhoneUserInfo: activator phone error"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "failed_to_query_phone_info"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    return-void
.end method

.method public KI(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 3

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "probably recycled but registered phone"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "registered_possibly_recycled_phone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->Ie(Lcom/xiaomi/passport/v2/ui/a;)V

    return-void
.end method

.method public KJ(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "GetActivatorPhoneFragment"

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

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "failed_to_query_phone_info"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    return-void
.end method

.method public KK(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)V
    .locals 3

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "recycled phone or not registered phone, go to register"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "not_registered_phone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/s;->DP:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/passport/v2/ui/a;->If(Lcom/xiaomi/passport/v2/ui/a;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method

.method public KL()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "queryPhoneUserInfo:token expired"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HV(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GetActivatorPhoneFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/a;->HT(Lcom/xiaomi/passport/v2/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0, v2}, Lcom/xiaomi/passport/v2/ui/a;->HW(Lcom/xiaomi/passport/v2/ui/a;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-static {v0, v2}, Lcom/xiaomi/passport/v2/ui/a;->HU(Lcom/xiaomi/passport/v2/ui/a;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    const-string/jumbo v1, "failed_to_query_phone_info"

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iu(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/s;->DO:Lcom/xiaomi/passport/v2/ui/a;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/v2/ui/a;->Iv(Z)V

    goto :goto_0
.end method
