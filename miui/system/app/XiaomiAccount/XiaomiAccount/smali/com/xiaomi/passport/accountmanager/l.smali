.class final Lcom/xiaomi/passport/accountmanager/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zC:Lcom/xiaomi/passport/servicetoken/b;

.field final synthetic zD:Lcom/xiaomi/passport/accountmanager/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/b;Lcom/xiaomi/passport/accountmanager/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/l;->zC:Lcom/xiaomi/passport/servicetoken/b;

    iput-object p2, p0, Lcom/xiaomi/passport/accountmanager/l;->zD:Lcom/xiaomi/passport/accountmanager/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/l;->zC:Lcom/xiaomi/passport/servicetoken/b;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/b;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/i;->MF(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/l;->zD:Lcom/xiaomi/passport/accountmanager/i;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/accountmanager/i;->CR(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/l;->zD:Lcom/xiaomi/passport/accountmanager/i;

    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/i;->ME(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/accountmanager/i;->CS(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/l;->zD:Lcom/xiaomi/passport/accountmanager/i;

    new-instance v2, Landroid/accounts/AuthenticatorException;

    const-string/jumbo v3, "errorCode=%s;errorMsg:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->errorMsg:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/accountmanager/i;->CR(Ljava/lang/Exception;)V

    goto :goto_0
.end method
