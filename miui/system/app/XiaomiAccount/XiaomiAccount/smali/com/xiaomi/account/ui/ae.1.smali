.class final Lcom/xiaomi/account/ui/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eB:Lcom/xiaomi/account/ui/c;

.field final synthetic eC:Ljava/lang/String;

.field final synthetic eD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ae;->eB:Lcom/xiaomi/account/ui/c;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ae;->eC:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/ui/ae;->eD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/ae;->eB:Lcom/xiaomi/account/ui/c;

    iget-object v1, p0, Lcom/xiaomi/account/ui/ae;->eC:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/ui/ae;->eD:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/c;->X(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ae;->eB:Lcom/xiaomi/account/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ae;->eB:Lcom/xiaomi/account/ui/c;

    iget-object v1, v1, Lcom/xiaomi/account/ui/c;->bl:Landroid/accounts/Account;

    const-string/jumbo v2, "acc_user_location"

    iget-object v3, p0, Lcom/xiaomi/account/ui/ae;->eD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
