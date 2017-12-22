.class Lcom/xiaomi/mistatistic/sdk/a/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/L;


# instance fields
.field final synthetic agS:Lcom/xiaomi/mistatistic/sdk/a/t;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->agS:Lcom/xiaomi/mistatistic/sdk/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->agS:Lcom/xiaomi/mistatistic/sdk/a/t;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/t;->agX:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/p;->a()V

    goto :goto_0
.end method
