.class final Lcom/xiaomi/accountsdk/utils/H;
.super Lcom/xiaomi/accountsdk/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/a/e",
        "<",
        "Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aaa:Lcom/xiaomi/accountsdk/utils/G;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/utils/G;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/H;->aaa:Lcom/xiaomi/accountsdk/utils/G;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/xiaomi/accountsdk/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic ML()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/H;->ML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ML()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/H;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/H;->aaa:Lcom/xiaomi/accountsdk/utils/G;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/G;->ajk(Lcom/xiaomi/accountsdk/utils/G;)Landroid/accounts/Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->sk(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected MX(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->acX(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic MX(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/H;->MX(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object v0

    return-object v0
.end method
