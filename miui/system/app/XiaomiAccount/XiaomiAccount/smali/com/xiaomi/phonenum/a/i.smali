.class public Lcom/xiaomi/phonenum/a/i;
.super Lcom/xiaomi/phonenum/a/s;
.source ""


# instance fields
.field private final adF:Lcom/xiaomi/phonenum/a/c;

.field private adG:Lcom/xiaomi/phonenum/utils/s;

.field private adH:Lcom/xiaomi/phonenum/utils/n;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/a/c;Lcom/xiaomi/phonenum/a/g;)V
    .locals 1
    .param p1    # Lcom/xiaomi/phonenum/a/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/a/s;-><init>(Lcom/xiaomi/phonenum/a/n;Lcom/xiaomi/phonenum/a/g;)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/i;->adH:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/i;->adF:Lcom/xiaomi/phonenum/a/c;

    iget-object v0, p2, Lcom/xiaomi/phonenum/a/g;->adD:Lcom/xiaomi/phonenum/utils/s;

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/i;->adG:Lcom/xiaomi/phonenum/utils/s;

    return-void
.end method

.method private anx(Lcom/xiaomi/phonenum/utils/s;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v0, v1

    :goto_0
    if-lt v0, p3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sub-long v6, p4, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v6, v7}, Lcom/xiaomi/phonenum/utils/s;->amN(J)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/phonenum/a/i;->adH:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v6, "SmsReceiveObtainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ACT"

    const-string/jumbo v3, "ACT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "ACT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v6, "ACT"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v3, 0x20

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v7, 0xb

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0
.end method


# virtual methods
.method public ann(I)Lcom/xiaomi/phonenum/bean/a;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/i;->adG:Lcom/xiaomi/phonenum/utils/s;

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/i;->adF:Lcom/xiaomi/phonenum/a/c;

    invoke-static {v0}, Lcom/xiaomi/phonenum/a/c;->ank(Lcom/xiaomi/phonenum/a/c;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/i;->adF:Lcom/xiaomi/phonenum/a/c;

    invoke-static {v0}, Lcom/xiaomi/phonenum/a/c;->anl(Lcom/xiaomi/phonenum/a/c;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/phonenum/a/i;->anx(Lcom/xiaomi/phonenum/utils/s;Ljava/lang/String;IJ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/i;->adF:Lcom/xiaomi/phonenum/a/c;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/c;->anm(Lcom/xiaomi/phonenum/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unikey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/c/c;->anY(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/i;->aek:Lcom/xiaomi/phonenum/c/j;

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/c/j;->aol()Lcom/xiaomi/phonenum/c/n;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/i;->adH:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "SmsReceiveObtainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify response\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmsReceiveObtainerverify response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/i;->adH:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "SmsReceiveObtainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitUnikey Timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/phonenum/a/i;->adF:Lcom/xiaomi/phonenum/a/c;

    invoke-static {v4}, Lcom/xiaomi/phonenum/a/c;->anl(Lcom/xiaomi/phonenum/a/c;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/i;->adH:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "SmsReceiveObtainer"

    const-string/jumbo v3, "waitUnikey Interrupted:"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->aci:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_2
    iget v1, v0, Lcom/xiaomi/phonenum/c/a;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/phonenum/a/i;->anT(ILjava/lang/String;Z)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
