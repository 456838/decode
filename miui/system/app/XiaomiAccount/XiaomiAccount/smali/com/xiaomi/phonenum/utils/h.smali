.class public Lcom/xiaomi/phonenum/utils/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final acR:Landroid/os/Handler;


# instance fields
.field private acO:Landroid/telephony/PhoneStateListener;

.field private final acP:I

.field private acQ:Landroid/telephony/TelephonyManager;

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PhoneInServiceListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaomi/phonenum/utils/h;->acR:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/utils/h;->latch:Ljava/util/concurrent/CountDownLatch;

    iput p2, p0, Lcom/xiaomi/phonenum/utils/h;->acP:I

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/xiaomi/phonenum/utils/h;->acQ:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static amn(Landroid/content/Context;IJ)Z
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/utils/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/phonenum/utils/h;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p2, p3}, Lcom/xiaomi/phonenum/utils/h;->amo(J)Z

    move-result v0

    return v0
.end method

.method private amo(J)Z
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/h;->amp()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/h;->latch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/h;->amq()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/xiaomi/phonenum/utils/h;->amq()V

    throw v0
.end method

.method private amp()V
    .locals 2

    sget-object v0, Lcom/xiaomi/phonenum/utils/h;->acR:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/phonenum/utils/C;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/utils/C;-><init>(Lcom/xiaomi/phonenum/utils/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private amq()V
    .locals 2

    sget-object v0, Lcom/xiaomi/phonenum/utils/h;->acR:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/phonenum/utils/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/phonenum/utils/f;-><init>(Lcom/xiaomi/phonenum/utils/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic amr(Lcom/xiaomi/phonenum/utils/h;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/utils/h;->acO:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method static synthetic ams(Lcom/xiaomi/phonenum/utils/h;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/phonenum/utils/h;->acP:I

    return v0
.end method

.method static synthetic amt(Lcom/xiaomi/phonenum/utils/h;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/h;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic amu(Lcom/xiaomi/phonenum/utils/h;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/h;->acO:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic amv(Lcom/xiaomi/phonenum/utils/h;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/utils/h;->acQ:Landroid/telephony/TelephonyManager;

    return-object v0
.end method
