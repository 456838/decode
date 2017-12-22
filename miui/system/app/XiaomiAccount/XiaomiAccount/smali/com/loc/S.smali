.class Lcom/loc/S;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field final synthetic alC:Lcom/loc/X;


# direct methods
.method constructor <init>(Lcom/loc/X;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/loc/aF;->a:[I

    aget v0, v0, v3

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axi(Lcom/loc/X;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "fetchoffdatamobile"

    invoke-static {v0, v1}, Lcom/loc/bd;->aDj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    move v7, v4

    :goto_1
    invoke-static {}, Lcom/loc/aV;->a()Lcom/loc/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/aV;->b()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axm(Lcom/loc/X;)V

    :try_start_0
    invoke-static {}, Lcom/loc/ao;->a()Lcom/loc/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v1}, Lcom/loc/X;->axl(Lcom/loc/X;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/ao;->ayx(Landroid/content/Context;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_7

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axh(Lcom/loc/X;)V

    return-void

    :cond_3
    :try_start_1
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v1}, Lcom/loc/X;->axi(Lcom/loc/X;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "fetchoffdatamobile"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "timerTaskO part"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    iget-object v0, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axj(Lcom/loc/X;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_3
    move v8, v4

    :goto_4
    if-ge v8, v10, :cond_0

    const/16 v0, 0x14

    if-ge v8, v0, :cond_0

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/loc/P;

    iget-object v0, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v0}, Lcom/loc/X;->axl(Lcom/loc/X;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v1}, Lcom/loc/X;->axj(Lcom/loc/X;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/loc/P;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_6

    move v5, v4

    :goto_5
    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/loc/aF;->azX(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    iget-object v1, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-virtual {v1, v3}, Lcom/loc/X;->b(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/X;->axk(Lcom/loc/X;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_6
    move v5, v3

    goto :goto_5

    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/S;->alC:Lcom/loc/X;

    invoke-static {v2}, Lcom/loc/X;->axj(Lcom/loc/X;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/loc/aF;->aAd(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "timerTaskO"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
