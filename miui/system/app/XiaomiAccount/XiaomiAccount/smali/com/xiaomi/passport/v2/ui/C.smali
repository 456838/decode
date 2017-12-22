.class final Lcom/xiaomi/passport/v2/ui/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/uicontroller/C;


# instance fields
.field final synthetic Em:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic En:Z

.field final synthetic Eo:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

.field final synthetic Ep:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;ZLcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    iput-boolean p2, p0, Lcom/xiaomi/passport/v2/ui/C;->En:Z

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/C;->Eo:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/ui/C;->Ep:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public KR(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/C;->Eo:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->Sr:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ja(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {p1}, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->LH(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;)I

    move-result v1

    const v2, 0x7f0c0086

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public KS()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/C;->Eo:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->Sr:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ja(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Hn:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    const v2, 0x7f0c0031

    invoke-static {v0, v2, v1}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method

.method public KT(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/C;->En:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "reg_success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Iu(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/C;->Eo:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->Sr:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ja(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    const-string/jumbo v1, "reg_success"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ix(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/C;->Ep:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaomi/passport/v2/ui/c;->Jh(Lcom/xiaomi/passport/v2/ui/c;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    return-void
.end method

.method public KU()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/C;->Eo:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->Sr:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Ja(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/c;->IY(Lcom/xiaomi/passport/v2/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PhoneLoginBaseFragment"

    const-string/jumbo v1, "attached activity is not alive"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/C;->Em:Lcom/xiaomi/passport/v2/ui/c;

    const v1, 0x7f0c0086

    const v2, 0x7f0c0089

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->Je(Lcom/xiaomi/passport/v2/ui/c;II)V

    return-void
.end method
