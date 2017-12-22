.class final Lcom/xiaomi/account/ui/bJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/o",
        "<",
        "Lcom/xiaomi/account/data/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic gY:Lcom/xiaomi/account/ui/LoginActivity;

.field final synthetic gZ:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/LoginActivity;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bJ;->gY:Lcom/xiaomi/account/ui/LoginActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bJ;->gZ:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/xiaomi/account/data/c;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bJ;->gZ:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/account/data/c;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginActivity"

    const-string/jumbo v2, "check find device status"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LoginActivity"

    const-string/jumbo v2, "check find device status"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/bJ;->run()Lcom/xiaomi/account/data/c;

    move-result-object v0

    return-object v0
.end method
