.class public Lcom/xiaomi/accountsdk/request/L;
.super Lcom/xiaomi/accountsdk/request/x;
.source ""


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/R;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/x;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    return-void
.end method


# virtual methods
.method protected afC(Lcom/xiaomi/accountsdk/account/d;Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/O;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v0, p2}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    new-instance v1, Lcom/xiaomi/accountsdk/request/O;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/accountsdk/request/O;-><init>(Lcom/xiaomi/accountsdk/request/M;Lcom/xiaomi/accountsdk/account/d;)V

    return-object v1
.end method

.method protected afD(Lcom/xiaomi/accountsdk/request/R;)Lcom/xiaomi/accountsdk/request/M;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    return-object v0
.end method

.method protected afz()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "byPassToken"

    return-object v0
.end method
