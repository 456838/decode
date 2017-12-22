.class final Lcom/xiaomi/account/y;
.super Lcom/xiaomi/accountsdk/account/a/a;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/account/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public sA(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-virtual {p2}, Ljava/lang/Exception;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->atm(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    :cond_0
    return-void
.end method

.method public sB()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->atb()V

    return-void
.end method

.method public sC(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/xiaomi/mistatistic/sdk/b;->ata(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public sx(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/account/y;->sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sy(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string/jumbo v0, "is_international"

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/b;->atd(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sz(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->atm(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    return-void
.end method
