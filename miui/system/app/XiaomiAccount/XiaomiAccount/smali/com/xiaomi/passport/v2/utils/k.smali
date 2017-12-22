.class final Lcom/xiaomi/passport/v2/utils/k;
.super Lcom/xiaomi/passport/uicontroller/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/w",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic Gx:Lcom/xiaomi/passport/v2/utils/c;

.field final synthetic Gy:Lcom/xiaomi/passport/v2/utils/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/c;Lcom/xiaomi/passport/v2/utils/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/k;->Gx:Lcom/xiaomi/passport/v2/utils/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/w;-><init>()V

    return-void
.end method


# virtual methods
.method public Lb(Lcom/xiaomi/passport/uicontroller/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/v",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/v;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v0, "ActivatorPhoneController"

    const-string/jumbo v1, "no inserted phone"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/d;->KB()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should not happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ActivatorPhoneController"

    const-string/jumbo v2, "getLocalActivatorPhone"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/d;->KB()V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "ActivatorPhoneController"

    const-string/jumbo v1, "no activator phone"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/d;->KB()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "ActivatorPhoneController"

    const-string/jumbo v2, "getLocalActivatorPhone"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    invoke-interface {v0}, Lcom/xiaomi/passport/v2/utils/d;->KB()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    const-string/jumbo v1, "ActivatorPhoneController"

    const-string/jumbo v2, "one activator phone"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    invoke-interface {v1, v0}, Lcom/xiaomi/passport/v2/utils/d;->KC(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "ActivatorPhoneController"

    const-string/jumbo v2, "two activator phone"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/passport/v2/utils/k;->Gy:Lcom/xiaomi/passport/v2/utils/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-interface {v2, v1, v0}, Lcom/xiaomi/passport/v2/utils/d;->KA(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
