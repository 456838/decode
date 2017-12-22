.class final Lcom/xiaomi/accountsdk/guestaccount/n;
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
.field final synthetic OB:Lcom/xiaomi/accountsdk/guestaccount/p;

.field final synthetic OC:Lcom/xiaomi/accountsdk/guestaccount/data/f;

.field final synthetic OD:Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;Lcom/xiaomi/accountsdk/guestaccount/data/f;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/n;->OB:Lcom/xiaomi/accountsdk/guestaccount/p;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/guestaccount/n;->OC:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/guestaccount/n;->OD:Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/accountsdk/guestaccount/C;-><init>(Lcom/xiaomi/accountsdk/guestaccount/p;Lcom/xiaomi/accountsdk/a/f;)V

    return-void
.end method


# virtual methods
.method protected ML()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/n;->OC:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TQ()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/n;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/n;->OD:Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountService;->js(Landroid/os/Bundle;Lcom/xiaomi/accountsdk/guestaccount/IGuestAccountIntentHandler;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method protected bridge synthetic ML()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/guestaccount/n;->ML()Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method
