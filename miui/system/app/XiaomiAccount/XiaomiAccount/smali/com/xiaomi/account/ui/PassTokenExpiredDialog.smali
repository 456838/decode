.class public Lcom/xiaomi/account/ui/PassTokenExpiredDialog;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source ""


# instance fields
.field private db:Lcom/xiaomi/account/utils/f;

.field private dc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method

.method private fZ(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "booleanResult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->finish()V

    return-void
.end method

.method private ga(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->dc:Z

    new-instance v0, Lcom/xiaomi/account/utils/f;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    iget-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    new-instance v1, Lcom/xiaomi/account/ui/bR;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bR;-><init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/account/utils/f;->ns(Landroid/app/Activity;Lcom/xiaomi/account/utils/h;)V

    return-void
.end method

.method private gb(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/account/utils/f;

    invoke-direct {v0}, Lcom/xiaomi/account/utils/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    new-instance v5, Lcom/xiaomi/account/ui/bS;

    invoke-direct {v5, p0}, Lcom/xiaomi/account/ui/bS;-><init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/account/utils/f;->nt(Landroid/app/Activity;ZZZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic gc(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->dc:Z

    return v0
.end method

.method static synthetic gd(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->fZ(Z)V

    return-void
.end method

.method static synthetic ge(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->ga(Z)V

    return-void
.end method

.method static synthetic gf(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->gb(ZZ)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/accounts/AccountAuthenticatorActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "extra_wipe_data"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "extra_wipe_synced_data"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->gb(ZZ)V

    goto :goto_0

    :sswitch_1
    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->fZ(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/accountsdk/utils/i;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/i;->ahH(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->fZ(Z)V

    return-void

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01ad

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v2, v3

    const v0, 0x7f0c01ae

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bP;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bP;-><init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V

    const v2, 0x7f0c0006

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/account/ui/bQ;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bQ;-><init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V

    const v2, 0x7f0c004e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    invoke-virtual {v0}, Lcom/xiaomi/account/utils/f;->cancel()V

    iput-object v1, p0, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->db:Lcom/xiaomi/account/utils/f;

    :cond_0
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    return-void
.end method
