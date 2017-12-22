.class final Lcom/xiaomi/passport/servicetoken/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Io:Lcom/xiaomi/passport/servicetoken/n;

.field final synthetic Ip:Lcom/xiaomi/passport/servicetoken/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/n;Lcom/xiaomi/passport/servicetoken/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/l;->Io:Lcom/xiaomi/passport/servicetoken/n;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/l;->Ip:Lcom/xiaomi/passport/servicetoken/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/l;->Ip:Lcom/xiaomi/passport/servicetoken/b;

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/l;->Io:Lcom/xiaomi/passport/servicetoken/n;

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/n;->MJ()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/servicetoken/b;->ajC(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/l;->Ip:Lcom/xiaomi/passport/servicetoken/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/servicetoken/b;->ajB(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
