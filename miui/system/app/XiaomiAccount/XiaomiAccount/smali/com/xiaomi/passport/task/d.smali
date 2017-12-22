.class public Lcom/xiaomi/passport/task/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final Bw:Landroid/app/Application;

.field private volatile Bx:Lcom/xiaomi/passport/task/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/task/d;->Bw:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public Gt(Lcom/xiaomi/passport/task/e;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/d;->Bx:Lcom/xiaomi/passport/task/e;

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/passport/data/a;->yI()Lcom/xiaomi/passport/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/data/a;->yJ()Lcom/xiaomi/passport/utils/l;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "lastDownloadTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/xiaomi/passport/utils/l;->DM(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const-string/jumbo v0, "DownLoadAppConfigRunnable"

    const-string/jumbo v1, "not download twice within 24 hours"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/task/d;->Bw:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/account/e;->acH(Landroid/app/Application;)V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/passport/utils/x;->FE()V

    iget-object v1, p0, Lcom/xiaomi/passport/task/d;->Bx:Lcom/xiaomi/passport/task/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/task/d;->Bx:Lcom/xiaomi/passport/task/e;

    invoke-interface {v1}, Lcom/xiaomi/passport/task/e;->call()V

    :cond_1
    const-string/jumbo v1, "lastDownloadTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/l;->DN(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DownLoadAppConfigRunnable"

    const-string/jumbo v2, "failed to get app config"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
