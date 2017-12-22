.class final Lcom/xiaomi/passport/widget/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic za:Lcom/xiaomi/passport/widget/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/widget/r;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/widget/z;->za:Lcom/xiaomi/passport/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/widget/z;->za:Lcom/xiaomi/passport/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/r;->Bq()Lcom/xiaomi/passport/widget/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/z;->za:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/widget/r;->BI(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/z;->za:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/widget/r;->BJ(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/widget/z;->za:Lcom/xiaomi/passport/widget/r;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/widget/r;->BK(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/widget/z;->za:Lcom/xiaomi/passport/widget/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/passport/widget/r;->BK(Lcom/xiaomi/passport/widget/r;Lcom/xiaomi/passport/widget/i;)V

    goto :goto_0
.end method
