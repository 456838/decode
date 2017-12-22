.class public Lcom/xiaomi/accountsdk/utils/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aha()Lcom/xiaomi/accountsdk/utils/b;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/c;->ahc()Lcom/xiaomi/accountsdk/utils/b;

    move-result-object v0

    return-object v0
.end method

.method public static ahb(Lcom/xiaomi/accountsdk/utils/b;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "signer == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/accountsdk/utils/c;->ahd(Lcom/xiaomi/accountsdk/utils/b;)Lcom/xiaomi/accountsdk/utils/b;

    return-void
.end method
