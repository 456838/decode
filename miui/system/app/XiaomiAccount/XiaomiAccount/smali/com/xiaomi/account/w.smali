.class final Lcom/xiaomi/account/w;
.super Lcom/xiaomi/account/e;
.source ""


# instance fields
.field final synthetic ow:Lcom/xiaomi/account/PassportServiceTokenService;

.field final synthetic ox:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/PassportServiceTokenService;Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/account/w;->ow:Lcom/xiaomi/account/PassportServiceTokenService;

    iput-object p4, p0, Lcom/xiaomi/account/w;->ox:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-direct {p0, p1, p3}, Lcom/xiaomi/account/e;-><init>(Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected rk()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected rl()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/w;->nM:Lcom/xiaomi/passport/servicetoken/a;

    iget-object v1, p0, Lcom/xiaomi/account/w;->nK:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/account/w;->ox:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a;->Co(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
