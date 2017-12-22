.class final Lcom/xiaomi/passport/servicetoken/m;
.super Lcom/xiaomi/passport/servicetoken/y;
.source ""


# instance fields
.field final synthetic Iq:Lcom/xiaomi/passport/servicetoken/t;

.field final synthetic Ir:Ljava/lang/String;

.field final synthetic Is:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/t;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/m;->Iq:Lcom/xiaomi/passport/servicetoken/t;

    iput-object p4, p0, Lcom/xiaomi/passport/servicetoken/m;->Ir:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/passport/servicetoken/m;->Is:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/passport/servicetoken/y;-><init>(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/b;)V

    return-void
.end method


# virtual methods
.method protected ML()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/m;->ajJ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/IPassportServiceTokenService;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/m;->Ir:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/IPassportServiceTokenService;->st(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/m;->Is:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/servicetoken/o;->MN(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic ML()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/m;->ML()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
