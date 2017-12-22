.class final Lcom/xiaomi/passport/v2/utils/r;
.super Lcom/xiaomi/passport/uicontroller/l;
.source ""


# instance fields
.field final synthetic GN:Lcom/xiaomi/passport/v2/utils/f;

.field final synthetic GO:Lcom/xiaomi/passport/v2/utils/g;

.field final synthetic GP:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

.field final synthetic GQ:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/f;Lcom/xiaomi/passport/v2/utils/g;Lcom/xiaomi/accountsdk/account/data/AccountInfo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/r;->GN:Lcom/xiaomi/passport/v2/utils/f;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/r;->GO:Lcom/xiaomi/passport/v2/utils/g;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/utils/r;->GP:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object p4, p0, Lcom/xiaomi/passport/v2/utils/r;->GQ:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected ir(Lcom/xiaomi/passport/uicontroller/g;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/g;->get()Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/r;->GO:Lcom/xiaomi/passport/v2/utils/g;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/r;->GP:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/v2/utils/g;->yl(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/r;->GN:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/r;->GQ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/r;->GN:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/r;->GQ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/r;->GN:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/r;->GN:Lcom/xiaomi/passport/v2/utils/f;

    invoke-static {v1}, Lcom/xiaomi/passport/v2/utils/f;->LF(Lcom/xiaomi/passport/v2/utils/f;)V

    throw v0
.end method
