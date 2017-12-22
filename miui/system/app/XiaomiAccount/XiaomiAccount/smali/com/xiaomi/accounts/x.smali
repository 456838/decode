.class final Lcom/xiaomi/accounts/x;
.super Lcom/xiaomi/accounts/i;
.source ""


# instance fields
.field final synthetic Ns:Lcom/xiaomi/accounts/h;

.field final synthetic Nt:Landroid/accounts/Account;

.field final synthetic Nu:Ljava/lang/String;

.field final synthetic Nv:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/h;Lcom/xiaomi/accounts/h;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accounts/x;->Ns:Lcom/xiaomi/accounts/h;

    iput-object p6, p0, Lcom/xiaomi/accounts/x;->Nt:Landroid/accounts/Account;

    iput-object p7, p0, Lcom/xiaomi/accounts/x;->Nu:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/accounts/x;->Nv:Landroid/os/Bundle;

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/xiaomi/accounts/i;-><init>(Lcom/xiaomi/accounts/h;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public Su()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/accounts/x;->Ns:Lcom/xiaomi/accounts/h;

    invoke-static {v0}, Lcom/xiaomi/accounts/h;->Sp(Lcom/xiaomi/accounts/h;)Lcom/xiaomi/accounts/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accounts/x;->MS:Lcom/xiaomi/accounts/IAccountManagerResponse;

    iget-object v2, p0, Lcom/xiaomi/accounts/x;->Nt:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/xiaomi/accounts/x;->Nu:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/accounts/x;->Nv:Landroid/os/Bundle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/accounts/a;->Qt(Lcom/xiaomi/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-void
.end method
