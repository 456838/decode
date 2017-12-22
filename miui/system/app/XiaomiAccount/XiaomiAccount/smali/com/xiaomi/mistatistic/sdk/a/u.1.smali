.class Lcom/xiaomi/mistatistic/sdk/a/u;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic agY:Lcom/xiaomi/mistatistic/sdk/a/H;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/u;->agY:Lcom/xiaomi/mistatistic/sdk/a/H;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x1

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "session_begin"

    invoke-static {v2, v3, v10, v11}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ass(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "last_deactivate"

    invoke-static {v4, v5, v10, v11}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ass(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "pv_path"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    cmp-long v6, v2, v10

    if-gtz v6, :cond_2

    move v6, v0

    :goto_1
    if-nez v6, :cond_1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    :goto_2
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/u;->agY:Lcom/xiaomi/mistatistic/sdk/a/H;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/a/H;->arv(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;JJ)V

    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/u;->agY:Lcom/xiaomi/mistatistic/sdk/a/H;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/xiaomi/mistatistic/sdk/a/H;->arw(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v6, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1df5e77
        :pswitch_0
    .end packed-switch
.end method
