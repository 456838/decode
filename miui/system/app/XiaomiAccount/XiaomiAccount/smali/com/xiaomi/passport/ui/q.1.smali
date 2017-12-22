.class public Lcom/xiaomi/passport/ui/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static qe:Lcom/xiaomi/passport/ui/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uG()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/r;->cancel(Z)Z

    sput-object v2, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    :cond_0
    return-void
.end method

.method public static uH(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    sget-object v1, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/r;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/ui/r;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/r;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    sput-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    sget-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/r;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static uI(Landroid/app/Activity;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    sget-object v1, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/r;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/xiaomi/passport/ui/r;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/r;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    sget-object v0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/r;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic uJ(Lcom/xiaomi/passport/ui/r;)Lcom/xiaomi/passport/ui/r;
    .locals 0

    sput-object p0, Lcom/xiaomi/passport/ui/q;->qe:Lcom/xiaomi/passport/ui/r;

    return-object p0
.end method
