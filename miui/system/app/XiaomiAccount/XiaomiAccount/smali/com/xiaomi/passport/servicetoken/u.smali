.class final Lcom/xiaomi/passport/servicetoken/u;
.super Lcom/xiaomi/passport/servicetoken/n;
.source ""


# instance fields
.field final synthetic IC:Lcom/xiaomi/passport/servicetoken/j;

.field final synthetic ID:Landroid/content/Context;

.field final synthetic IE:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/j;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/u;->IC:Lcom/xiaomi/passport/servicetoken/j;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/u;->ID:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/u;->IE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/n;-><init>(Lcom/xiaomi/passport/servicetoken/n;)V

    return-void
.end method


# virtual methods
.method protected MJ()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/u;->IC:Lcom/xiaomi/passport/servicetoken/j;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/u;->ID:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/u;->IE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/j;->MG(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    return-object v0
.end method
