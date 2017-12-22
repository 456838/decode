.class final Lcom/xiaomi/accountsdk/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aav:Lcom/xiaomi/accountsdk/a/e;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/a/g;->aav:Lcom/xiaomi/accountsdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/g;->aav:Lcom/xiaomi/accountsdk/a/e;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/a/e;->ajL(Lcom/xiaomi/accountsdk/a/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/g;->aav:Lcom/xiaomi/accountsdk/a/e;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/a/e;->ajK()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/g;->aav:Lcom/xiaomi/accountsdk/a/e;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/a/e;->ajK()V

    throw v0
.end method
