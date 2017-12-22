.class final Lcom/xiaomi/accounts/t;
.super Lcom/xiaomi/accounts/c;
.source ""


# instance fields
.field final synthetic Nk:Lcom/xiaomi/accounts/a;

.field final synthetic Nl:Landroid/os/Bundle;

.field final synthetic Nm:Landroid/accounts/Account;

.field final synthetic Nn:Ljava/lang/String;

.field final synthetic No:Z

.field final synthetic Np:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/b;Lcom/xiaomi/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZ)V
    .locals 8

    iput-object p2, p0, Lcom/xiaomi/accounts/t;->Nk:Lcom/xiaomi/accounts/a;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/xiaomi/accounts/t;->Nl:Landroid/os/Bundle;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/xiaomi/accounts/t;->Nm:Landroid/accounts/Account;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/xiaomi/accounts/t;->Nn:Ljava/lang/String;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/xiaomi/accounts/t;->No:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/xiaomi/accounts/t;->Np:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/accounts/c;-><init>(Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/b;Lcom/xiaomi/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public RA(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_3

    const-string/jumbo v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "accountType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v0, "the type and name should not be empty"

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/accounts/t;->Ry(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/accounts/t;->Nk:Lcom/xiaomi/accounts/a;

    iget-object v4, p0, Lcom/xiaomi/accounts/t;->Mu:Lcom/xiaomi/accounts/b;

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nn:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v0}, Lcom/xiaomi/accounts/a;->Rj(Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/b;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/accounts/t;->No:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nk:Lcom/xiaomi/accounts/a;

    iget-object v2, p0, Lcom/xiaomi/accounts/t;->Mu:Lcom/xiaomi/accounts/b;

    iget-object v3, p0, Lcom/xiaomi/accounts/t;->Nm:Landroid/accounts/Account;

    const-string/jumbo v4, "authFailedMessage"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/xiaomi/accounts/a;->Rm(Lcom/xiaomi/accounts/a;Lcom/xiaomi/accounts/b;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/xiaomi/accounts/c;->RA(Landroid/os/Bundle;)V

    return-void
.end method

.method protected RD(J)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accounts/t;->Nl:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accounts/t;->Nl:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/xiaomi/accounts/c;->RD(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getAuthToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nm:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", authTokenType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", loginOptions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nl:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notifyOnAuthFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accounts/t;->No:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/accounts/t;->Np:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accounts/t;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nn:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/xiaomi/accounts/IAccountAuthenticator;->RR(Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accounts/t;->Mv:Lcom/xiaomi/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/xiaomi/accounts/t;->Nm:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/xiaomi/accounts/t;->Nn:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accounts/t;->Nl:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/xiaomi/accounts/IAccountAuthenticator;->RQ(Lcom/xiaomi/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
