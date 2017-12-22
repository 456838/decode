.class public Lcom/xiaomi/mistatistic/sdk/BaseService;
.super Landroid/app/Service;
.source ""


# instance fields
.field private ajk:Lcom/xiaomi/mistatistic/sdk/a/D;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic atE(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/a/D;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/mistatistic/sdk/f;-><init>(Lcom/xiaomi/mistatistic/sdk/BaseService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/D;->a()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/D;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "StatEventPojo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->arc(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "category"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "newValue"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->are(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/D;->c()V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "timeStamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arh(J)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "startTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v1, "endTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/BaseService;->ajk:Lcom/xiaomi/mistatistic/sdk/a/D;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/D;->arj(JJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
