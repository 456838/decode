.class final Lcom/xiaomi/accounts/w;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic Nr:Lcom/xiaomi/accounts/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/w;->Nr:Lcom/xiaomi/accounts/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accounts/w;->Nr:Lcom/xiaomi/accounts/h;

    invoke-virtual {v0}, Lcom/xiaomi/accounts/h;->Sa()[Landroid/accounts/Account;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/accounts/w;->Nr:Lcom/xiaomi/accounts/h;

    invoke-static {v0}, Lcom/xiaomi/accounts/h;->So(Lcom/xiaomi/accounts/h;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/w;->Nr:Lcom/xiaomi/accounts/h;

    invoke-static {v0}, Lcom/xiaomi/accounts/h;->So(Lcom/xiaomi/accounts/h;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/xiaomi/accounts/w;->Nr:Lcom/xiaomi/accounts/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/OnAccountsUpdateListener;

    invoke-static {v5, v1, v0, v2}, Lcom/xiaomi/accounts/h;->St(Lcom/xiaomi/accounts/h;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    monitor-exit v3

    return-void
.end method
