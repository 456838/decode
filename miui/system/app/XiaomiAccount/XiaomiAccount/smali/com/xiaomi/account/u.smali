.class final Lcom/xiaomi/account/u;
.super Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;
.source ""


# instance fields
.field final synthetic ou:Lcom/xiaomi/account/PassportServiceTokenService;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/PassportServiceTokenService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/u;->ou:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-direct {p0}, Lcom/xiaomi/passport/IPassportServiceTokenService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public st(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/u;->ou:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-static {v0, p1}, Lcom/xiaomi/account/PassportServiceTokenService;->rf(Lcom/xiaomi/account/PassportServiceTokenService;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public su(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/u;->ou:Lcom/xiaomi/account/PassportServiceTokenService;

    invoke-static {v0, p1}, Lcom/xiaomi/account/PassportServiceTokenService;->rg(Lcom/xiaomi/account/PassportServiceTokenService;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method public sv()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
