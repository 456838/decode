.class public Lcom/xiaomi/mistatistic/sdk/a/A;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ahe:Lcom/xiaomi/mistatistic/sdk/a/A;


# instance fields
.field private ahf:Z

.field private ahg:J

.field private ahh:J

.field private ahi:Landroid/os/Handler;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahe:Lcom/xiaomi/mistatistic/sdk/a/A;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahf:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/ae;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ae;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahi:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xiaomi/mistatistic/sdk/a/A;
    .locals 2

    const-class v1, Lcom/xiaomi/mistatistic/sdk/a/A;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahe:Lcom/xiaomi/mistatistic/sdk/a/A;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahe:Lcom/xiaomi/mistatistic/sdk/a/A;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/A;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahe:Lcom/xiaomi/mistatistic/sdk/a/A;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic aqU(Lcom/xiaomi/mistatistic/sdk/a/A;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahf:Z

    return p1
.end method

.method static synthetic aqV(Lcom/xiaomi/mistatistic/sdk/a/A;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    return v0
.end method

.method static synthetic aqW(Lcom/xiaomi/mistatistic/sdk/a/A;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    return p1
.end method

.method static synthetic aqX(Lcom/xiaomi/mistatistic/sdk/a/A;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahg:J

    return-wide p1
.end method

.method static synthetic aqY(Lcom/xiaomi/mistatistic/sdk/a/A;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahg:J

    return-wide v0
.end method


# virtual methods
.method public aqT(IJ)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/t;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/t;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;IJ)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/c;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahi:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahi:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahi:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v0, "UPE"

    const-string/jumbo v1, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY %d with delay %dms "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "onEventRecorded exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahi:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahg:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string/jumbo v0, "UPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY_INTERVAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahg:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahi:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "UPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEventRecorded, no MESSAGE_UPLOAD_EVENT, send a msg for UPLOAD_POLICY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asj(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahh:J

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->b()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/mistatistic/sdk/a/ac;-><init>(Lcom/xiaomi/mistatistic/sdk/a/A;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void
.end method

.method public e()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    return v2

    :cond_1
    const-string/jumbo v0, "RemoteDataUploadManager isUploading, should NOT upload now"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->a(Ljava/lang/String;)V

    return v2

    :pswitch_1
    return v1

    :pswitch_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/N;->arz(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :pswitch_3
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/D;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->d()I

    move-result v0

    iget-boolean v3, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahf:Z

    if-eqz v3, :cond_3

    :cond_2
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahf:Z

    return v1

    :cond_3
    const/16 v3, 0x32

    if-ge v0, v3, :cond_2

    return v2

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahf:Z

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v2, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahf:Z

    return v1

    :cond_5
    iget-wide v6, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahh:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahg:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_6

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    return v2

    :cond_6
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->ahg:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/a/A;->c:I

    return v0
.end method
