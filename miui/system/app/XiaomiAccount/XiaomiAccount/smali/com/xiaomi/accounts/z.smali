.class final Lcom/xiaomi/accounts/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic NA:Landroid/accounts/OnAccountsUpdateListener;

.field final synthetic NB:[Landroid/accounts/Account;

.field final synthetic Nz:Lcom/xiaomi/accounts/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/h;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/z;->Nz:Lcom/xiaomi/accounts/h;

    iput-object p2, p0, Lcom/xiaomi/accounts/z;->NA:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p3, p0, Lcom/xiaomi/accounts/z;->NB:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/z;->NA:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v1, p0, Lcom/xiaomi/accounts/z;->NB:[Landroid/accounts/Account;

    invoke-interface {v0, v1}, Landroid/accounts/OnAccountsUpdateListener;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AccountManager"

    const-string/jumbo v2, "Can\'t update accounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
