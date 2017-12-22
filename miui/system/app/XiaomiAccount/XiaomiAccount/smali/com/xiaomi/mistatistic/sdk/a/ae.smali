.class Lcom/xiaomi/mistatistic/sdk/a/ae;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic aia:Lcom/xiaomi/mistatistic/sdk/a/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->aia:Lcom/xiaomi/mistatistic/sdk/a/A;

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
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/Q;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/Q;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ae;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/ae;->aia:Lcom/xiaomi/mistatistic/sdk/a/A;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/A;->aqU(Lcom/xiaomi/mistatistic/sdk/a/A;Z)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/C;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/C;-><init>(Lcom/xiaomi/mistatistic/sdk/a/ae;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
