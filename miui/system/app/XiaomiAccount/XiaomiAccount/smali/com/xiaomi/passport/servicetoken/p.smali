.class final Lcom/xiaomi/passport/servicetoken/p;
.super Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;
.source ""


# instance fields
.field final synthetic It:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

.field final synthetic Iu:Lcom/xiaomi/passport/servicetoken/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Lcom/xiaomi/passport/servicetoken/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/p;->It:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/p;->Iu:Lcom/xiaomi/passport/servicetoken/b;

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public Mp(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/p;->It:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/passport/servicetoken/i;->MA(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/p;->Iu:Lcom/xiaomi/passport/servicetoken/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/b;->ajC(Ljava/lang/Object;)V

    return-void
.end method

.method public Mq()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/p;->Iu:Lcom/xiaomi/passport/servicetoken/b;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/p;->It:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;->ajC(Ljava/lang/Object;)V

    return-void
.end method

.method public Mr(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/p;->Iu:Lcom/xiaomi/passport/servicetoken/b;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/d;

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/p;->It:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v2, v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->HC:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/d;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->HN:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/servicetoken/d;->LP(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/d;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;->ajC(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/p;->Iu:Lcom/xiaomi/passport/servicetoken/b;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/p;->It:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;->ajC(Ljava/lang/Object;)V

    goto :goto_0
.end method
