.class final Lcom/xiaomi/accountsdk/guestaccount/x;
.super Lcom/xiaomi/accountsdk/guestaccount/C;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/accountsdk/guestaccount/C",
        "<",
        "Lcom/xiaomi/accountsdk/guestaccount/data/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic OW:Lcom/xiaomi/accountsdk/guestaccount/p;

.field final synthetic OX:Lcom/xiaomi/accountsdk/guestaccount/data/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/x;->OW:Lcom/xiaomi/accountsdk/guestaccount/p;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/x;->OX:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/accountsdk/guestaccount/C;-><init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;)V

    return-void
.end method


# virtual methods
.method protected ML()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/x;->OX:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TQ()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/x;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;->jq(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected bridge synthetic ML()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/x;->ML()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method
