.class final Lcom/xiaomi/account/v;
.super Lcom/xiaomi/account/e;
.source ""


# instance fields
.field final synthetic ov:Lcom/xiaomi/account/PassportServiceTokenService;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/PassportServiceTokenService;Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/account/v;->ov:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/account/e;-><init>(Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected rk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected rl()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/v;->nM:Lcom/xiaomi/passport/servicetoken/a;

    iget-object v1, p0, Lcom/xiaomi/account/v;->nK:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/v;->nN:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a;->Ck(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
