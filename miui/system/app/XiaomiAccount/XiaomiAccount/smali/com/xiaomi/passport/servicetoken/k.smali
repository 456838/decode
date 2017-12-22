.class final Lcom/xiaomi/passport/servicetoken/k;
.super Lcom/xiaomi/passport/servicetoken/n;
.source ""


# instance fields
.field final synthetic Il:Lcom/xiaomi/passport/servicetoken/j;

.field final synthetic Im:Landroid/content/Context;

.field final synthetic In:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/j;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/k;->Il:Lcom/xiaomi/passport/servicetoken/j;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/k;->Im:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/k;->In:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/n;-><init>(Lcom/xiaomi/passport/servicetoken/n;)V

    return-void
.end method


# virtual methods
.method protected MJ()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/k;->Il:Lcom/xiaomi/passport/servicetoken/j;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/k;->Im:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/k;->In:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/j;->MH(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
