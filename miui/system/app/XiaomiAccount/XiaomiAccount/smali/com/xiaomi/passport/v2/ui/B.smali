.class final Lcom/xiaomi/passport/v2/ui/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/B;


# instance fields
.field final synthetic Ek:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic El:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    iput-boolean p2, p0, Lcom/xiaomi/passport/v2/ui/B;->El:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KM(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0085

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public KN(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/B;->El:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "login_success"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Iu(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "login_success"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ix(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0, p1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Jc(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)V

    return-void
.end method

.method public KO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/B;->El:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "need_notification"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Iu(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "need_notification"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ix(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0, p2, p1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Jf(Lcom/xiaomi/passport/v2/ui/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public KP()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hm:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0085

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public KQ()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/B;->Ek:Lcom/xiaomi/passport/v2/ui/c;

    const v1, 0x7f0c0085

    const v2, 0x7f0c0089

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method
