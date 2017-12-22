.class Lcom/xiaomi/mistatistic/sdk/a/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic ahB:Landroid/content/Context;

.field final synthetic ahC:Lcom/xiaomi/mistatistic/sdk/a/H;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->ahC:Lcom/xiaomi/mistatistic/sdk/a/H;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->ahB:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->ahC:Lcom/xiaomi/mistatistic/sdk/a/H;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->ahB:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/a/M;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/H;->arx(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
