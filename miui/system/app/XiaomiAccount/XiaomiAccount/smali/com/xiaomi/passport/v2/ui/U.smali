.class final Lcom/xiaomi/passport/v2/ui/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/E;


# instance fields
.field final synthetic Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

.field final synthetic Fg:Lcom/xiaomi/accountsdk/account/data/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;Lcom/xiaomi/accountsdk/account/data/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/U;->Fg:Lcom/xiaomi/accountsdk/account/data/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public im()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "has set password"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hi:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0088

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public in()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Fg:Lcom/xiaomi/accountsdk/account/data/e;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/e;->Qd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    new-instance v1, Lcom/xiaomi/passport/v2/ui/W;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/U;->Fg:Lcom/xiaomi/accountsdk/account/data/e;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/passport/v2/ui/W;-><init>(Lcom/xiaomi/passport/v2/ui/U;Lcom/xiaomi/accountsdk/account/data/e;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->ai(Lcom/xiaomi/passport/v2/ui/p;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hj:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0088

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V

    goto :goto_0
.end method

.method public io()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hk:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0088

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public ip(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    const-string/jumbo v0, "SetPasswordActivity"

    invoke-static {v0, p2}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0088

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->JC(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;II)V

    return-void
.end method

.method public iq(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SetPasswordActivity"

    const-string/jumbo v1, "set success"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/c;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jv(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/c;->VN(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/c;->VF(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/c;->VE(Z)Lcom/xiaomi/accountsdk/account/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/c;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-virtual {v1}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/n;->Nf(Landroid/content/Context;)Lcom/xiaomi/passport/uicontroller/n;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/v2/ui/V;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/v2/ui/V;-><init>(Lcom/xiaomi/passport/v2/ui/U;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/passport/uicontroller/n;->Ne(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/uicontroller/l;)Lcom/xiaomi/passport/uicontroller/g;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/U;->Ff:Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;->Jz(Lcom/xiaomi/passport/v2/ui/SetPasswordActivity;)V

    return-void
.end method
