.class final Lcom/xiaomi/passport/v2/utils/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic GX:Lcom/xiaomi/passport/v2/utils/f;

.field final synthetic GY:Lcom/xiaomi/accountsdk/account/data/B;

.field final synthetic GZ:Lcom/xiaomi/accountsdk/account/data/B;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/accountsdk/account/data/B;Lcom/xiaomi/accountsdk/account/data/B;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/v;->GX:Lcom/xiaomi/passport/v2/utils/f;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/v;->GY:Lcom/xiaomi/accountsdk/account/data/B;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/utils/v;->GZ:Lcom/xiaomi/accountsdk/account/data/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/utils/v;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/v;->GY:Lcom/xiaomi/accountsdk/account/data/B;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/b;->abm(Lcom/xiaomi/accountsdk/account/data/B;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/v;->GZ:Lcom/xiaomi/accountsdk/account/data/B;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->abm(Lcom/xiaomi/accountsdk/account/data/B;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidVerifyCodeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginUIController"

    const-string/jumbo v3, "phone1"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LoginUIController"

    const-string/jumbo v2, "phone1"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "LoginUIController"

    const-string/jumbo v4, "phone2"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_0

    throw v0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "LoginUIController"

    const-string/jumbo v2, "phone2"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
