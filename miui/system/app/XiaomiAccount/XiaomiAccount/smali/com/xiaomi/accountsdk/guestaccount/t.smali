.class final Lcom/xiaomi/accountsdk/guestaccount/t;
.super Lcom/xiaomi/accountsdk/guestaccount/r;
.source ""


# instance fields
.field final synthetic ON:Lcom/xiaomi/accountsdk/guestaccount/s;

.field final synthetic OO:Lcom/xiaomi/accountsdk/guestaccount/data/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/s;Lcom/xiaomi/accountsdk/guestaccount/data/f;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->ON:Lcom/xiaomi/accountsdk/guestaccount/s;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->OO:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/guestaccount/r;-><init>(Lcom/xiaomi/accountsdk/guestaccount/s;)V

    return-void
.end method


# virtual methods
.method protected Uk()Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->ON:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/guestaccount/s;->Ut(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/A;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->ON:Lcom/xiaomi/accountsdk/guestaccount/s;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/s;->Us(Lcom/xiaomi/accountsdk/guestaccount/s;)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->OO:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TM()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->OO:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TJ()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/accountsdk/guestaccount/t;->OO:Lcom/xiaomi/accountsdk/guestaccount/data/f;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/guestaccount/data/f;->TK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/accountsdk/guestaccount/A;->UF(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0
.end method
