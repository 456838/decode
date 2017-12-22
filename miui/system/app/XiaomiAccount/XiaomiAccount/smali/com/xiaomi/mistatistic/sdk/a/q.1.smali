.class Lcom/xiaomi/mistatistic/sdk/a/q;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic agU:Lcom/xiaomi/mistatistic/sdk/a/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/m;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/q;->agU:Lcom/xiaomi/mistatistic/sdk/a/m;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->b()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/V;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/V;-><init>(Lcom/xiaomi/mistatistic/sdk/a/q;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ff
        :pswitch_0
    .end packed-switch
.end method
