.class final Lcom/xiaomi/accountsdk/request/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/request/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adQ(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/request/b;->adP()Lcom/xiaomi/accountsdk/request/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/request/b;->adP()Lcom/xiaomi/accountsdk/request/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/accountsdk/request/k;->aed(Ljava/net/URL;)V

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
