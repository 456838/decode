.class Lcom/xiaomi/passport/appwhitelist/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method Or()Lcom/xiaomi/passport/appwhitelist/a/d;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/accountsdk/request/R;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/R;-><init>()V

    const-string/jumbo v1, "https://account.xiaomi.com/appConf/getWhiteList"

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/R;->agN(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/H;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->aao(Lcom/xiaomi/accountsdk/request/f;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/xiaomi/passport/appwhitelist/a/d;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/appwhitelist/a/d;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException;

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException;

    invoke-direct {v1, v0}, Lcom/xiaomi/passport/appwhitelist/AppWhiteListOnlineFetcher$FetchException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
