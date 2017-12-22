.class final Lcom/xiaomi/passport/servicetoken/s;
.super Lcom/xiaomi/passport/servicetoken/y;
.source ""


# instance fields
.field final synthetic Iy:Lcom/xiaomi/passport/servicetoken/t;

.field final synthetic Iz:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/t;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/b;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/s;->Iy:Lcom/xiaomi/passport/servicetoken/t;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/s;->Iz:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/y;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/b;)V

    return-void
.end method


# virtual methods
.method protected ML()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/s;->Iz:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/q;->MP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/s;->Iz:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/d;->LZ(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/d;->Ma(Z)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/s;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/IPassportServiceTokenService;->su(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/s;->Iz:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-object v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic ML()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/s;->ML()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
