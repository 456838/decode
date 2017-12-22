.class final Lcom/xiaomi/passport/ui/aH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/k;


# instance fields
.field final synthetic uI:Lcom/xiaomi/passport/ui/w;

.field final synthetic uJ:Landroid/content/Context;

.field final synthetic uK:I


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/w;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/aH;->uJ:Landroid/content/Context;

    iput p3, p0, Lcom/xiaomi/passport/ui/aH;->uK:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()I
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/16 v7, 0xc

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aH;->uJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/passport/ui/aH;->uK:I

    const/4 v2, 0x2

    const/16 v6, 0x20

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/accountsdk/activate/a;->ajQ(IILjava/lang/String;ZLjava/lang/String;I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    const-wide/32 v2, 0xea60

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lcom/xiaomi/accountsdk/activate/b;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    const-string/jumbo v2, "upLink_activate_success"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/passport/ui/w;->ug(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    const-string/jumbo v2, "activate_phone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/passport/ui/w;->wm(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    const-string/jumbo v2, "activate_hashed_sim_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/w;->wl(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aH;->uJ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/a;->ajT(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/a;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/passport/ui/aH;->uK:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/activate/a;->ajV(I)Lcom/xiaomi/accountsdk/activate/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/activate/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    const-string/jumbo v2, "vkey2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/passport/ui/w;->wn(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    const-string/jumbo v2, "vkey2_nonce"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/w;->wo(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wf(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aH;->uI:Lcom/xiaomi/passport/ui/w;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/w;->wg(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "PhonePasswordLoginFragment"

    const-string/jumbo v1, "empty vKey2 or nonce value"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v7

    :cond_2
    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhonePasswordLoginFragment"

    const-string/jumbo v2, "activate error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move v4, v7

    :goto_1
    const-string/jumbo v1, "PhonePasswordLoginFragment"

    const-string/jumbo v2, "activate error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const/4 v4, 0x6

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "PhonePasswordLoginFragment"

    const-string/jumbo v2, "activate error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v8

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method
