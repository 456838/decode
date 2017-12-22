.class public Lcom/xiaomi/accountsdk/request/u;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected aff(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/u;->afi()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/xiaomi/accountsdk/account/a/a;->sz(Ljava/lang/String;J)V

    return-void
.end method

.method protected afg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/u;->afi()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected afh()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/l;->aeg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected afi()Lcom/xiaomi/accountsdk/account/a/a;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    return-object v0
.end method
