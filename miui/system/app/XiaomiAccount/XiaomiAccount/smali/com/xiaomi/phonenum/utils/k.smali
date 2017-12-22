.class Lcom/xiaomi/phonenum/utils/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static amF(Landroid/content/Context;Lcom/xiaomi/phonenum/utils/a;ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/xiaomi/phonenum/utils/D;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/phonenum/utils/D;-><init>(Lcom/xiaomi/phonenum/utils/B;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.xiaomi.phoneNumberKeeper.SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.xiaomi.phoneNumberKeeper.SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-interface {p1, p2, p3, p4, v2}, Lcom/xiaomi/phonenum/utils/a;->alT(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p5, p6, v2}, Lcom/xiaomi/phonenum/utils/D;->anf(JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static amG(Landroid/content/Context;)Lcom/xiaomi/phonenum/utils/s;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/xiaomi/phonenum/utils/w;

    invoke-direct {v1, v0}, Lcom/xiaomi/phonenum/utils/w;-><init>(Lcom/xiaomi/phonenum/utils/B;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object v1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static amH(Landroid/content/Context;Lcom/xiaomi/phonenum/utils/s;)V
    .locals 0

    check-cast p1, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
