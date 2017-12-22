.class public Lcom/xiaomi/phonenum/a/d;
.super Lcom/xiaomi/phonenum/a/s;
.source ""


# instance fields
.field private final adt:Lcom/xiaomi/phonenum/a/r;

.field private adu:Lcom/xiaomi/phonenum/utils/n;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/a/r;Lcom/xiaomi/phonenum/a/g;)V
    .locals 1
    .param p1    # Lcom/xiaomi/phonenum/a/r;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/a/s;-><init>(Lcom/xiaomi/phonenum/a/n;Lcom/xiaomi/phonenum/a/g;)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/d;->adu:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    return-void
.end method

.method private ano(ILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a/d;->aej:Lcom/xiaomi/phonenum/utils/a;

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/r;->anQ(Lcom/xiaomi/phonenum/a/r;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/r;->anR(Lcom/xiaomi/phonenum/a/r;)J

    move-result-wide v4

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/phonenum/utils/a;->alS(ILjava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adu:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "SmsObtainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendSmsAndWait Timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v4}, Lcom/xiaomi/phonenum/a/r;->anR(Lcom/xiaomi/phonenum/a/r;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adu:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "SmsObtainer"

    const-string/jumbo v3, "sendSmsAndWait Interrupted"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private followUpRequest()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/d;->aek:Lcom/xiaomi/phonenum/c/j;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/j;->aol()Lcom/xiaomi/phonenum/c/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/r;->anP(Lcom/xiaomi/phonenum/a/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SmsObtainerfollowUp response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, v0, Lcom/xiaomi/phonenum/c/a;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ann(I)Lcom/xiaomi/phonenum/bean/a;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->aej:Lcom/xiaomi/phonenum/utils/a;

    const-string/jumbo v2, "android.permission.SEND_SMS"

    invoke-interface {v1, v2}, Lcom/xiaomi/phonenum/utils/a;->alX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->aej:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v1, p1}, Lcom/xiaomi/phonenum/utils/a;->alJ(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/r;->anM(Lcom/xiaomi/phonenum/a/r;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/phonenum/a/d;->ano(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/r;->anN(Lcom/xiaomi/phonenum/a/r;)I

    move-result v1

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acm:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acq:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acn:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acc:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/d;->adt:Lcom/xiaomi/phonenum/a/r;

    invoke-static {v1}, Lcom/xiaomi/phonenum/a/r;->anO(Lcom/xiaomi/phonenum/a/r;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/xiaomi/phonenum/a/d;->followUpRequest()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaomi/phonenum/a/d;->anT(ILjava/lang/String;Z)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v1

    iget v2, v1, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acl:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method
