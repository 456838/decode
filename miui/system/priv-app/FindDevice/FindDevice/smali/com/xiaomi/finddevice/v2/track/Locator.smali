.class public Lcom/xiaomi/finddevice/v2/track/Locator;
.super Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
.source "Locator.java"


# instance fields
.field private mBaseStationRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

.field private mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

.field private final mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;J)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "lostSessionId"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V1:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    .line 25
    iput-wide p4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->seq:J

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->timestamp:J

    .line 27
    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->uid:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->SMSfrom:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "4"

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->SMSEncode:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private buildLocationRecord(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .locals 4
    .param p1, "option"    # Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;-><init>()V

    .line 142
    .local v0, "locationRecordBuilder":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget-wide v2, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->timestamp:J

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->time:J

    .line 143
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/track/Locator;->getFullJsonReplyMessage(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedJSON:Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/track/Locator;->getFullBinaryReplyMessage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->encodedBinary:Ljava/lang/String;

    .line 145
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Locator::execute should not be called. "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public locate()[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 37
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mUsed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Can be used only once. "

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_0
    const-string/jumbo v4, "Don\'t call this method in the main thread. "

    invoke-static {v4}, Lcom/xiaomi/finddevice/common/util/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 43
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/xiaomi/finddevice/v2/track/Locator$1;

    invoke-direct {v4, p0, v2}, Lcom/xiaomi/finddevice/v2/track/Locator$1;-><init>(Lcom/xiaomi/finddevice/v2/track/Locator;Ljava/util/concurrent/CountDownLatch;)V

    invoke-super {p0, v4}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;->execute(Lcom/xiaomi/finddevice/v2/command/command/Command$IExecutionCompleteHandler;)V

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    if-eqz v1, :cond_1

    .line 63
    throw v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Interrupted. "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 58
    move-object v1, v0

    .line 59
    .local v1, "interrupted":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/track/Locator;->stop()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "interrupted":Ljava/lang/InterruptedException;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v3, "rst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaomi/finddevice/v2/track/LocationRecord;>;"
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mBaseStationRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    if-eqz v4, :cond_2

    .line 69
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mBaseStationRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    if-eqz v4, :cond_3

    .line 72
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_3
    new-array v4, v6, [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    return-object v4
.end method

.method protected reply(Ljava/lang/Object;)Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;
    .locals 12
    .param p1, "args"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    instance-of v4, p1, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 86
    check-cast v3, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;

    .line 90
    .local v3, "phoneNetworkReportOption":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/xiaomi/finddevice/v2/track/Locator;->buildLocationRecord(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v1

    .line 91
    .local v1, "locationRecordBuilder":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    const-string/jumbo v4, "BASE_STATION"

    iput-object v4, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->provider:Ljava/lang/String;

    .line 93
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Base station location record built: %s. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mBaseStationRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "locationRecordBuilder":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .end local v3    # "phoneNetworkReportOption":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;
    :cond_0
    :goto_0
    sget-object v4, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;->MEMORY:Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyGate;

    return-object v4

    .line 96
    .restart local v3    # "phoneNetworkReportOption":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
    new-array v4, v11, [Ljava/lang/Object;

    const-string/jumbo v5, "Building base station location record failed. "

    aput-object v5, v4, v9

    aput-object v0, v4, v10

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 98
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;

    invoke-direct {v4}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;-><init>()V

    throw v4

    .line 101
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
    .end local v3    # "phoneNetworkReportOption":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;
    :cond_1
    instance-of v4, p1, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 102
    check-cast v2, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;

    .line 106
    .local v2, "locationReportOption":Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/xiaomi/finddevice/v2/track/Locator;->buildLocationRecord(Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;)Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v1

    .line 107
    .restart local v1    # "locationRecordBuilder":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->getProvider()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->provider:Ljava/lang/String;

    .line 108
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->getLongi()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->longi:D

    .line 109
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->getLati()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->lati:D

    .line 110
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->getAccuracy()F

    move-result v4

    iput v4, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    .line 112
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Location facility location record built: %s. "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 114
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    if-nez v4, :cond_2

    .line 115
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "mLocationFacilityRecord == null, use this record. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :try_end_1
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 128
    .end local v1    # "locationRecordBuilder":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "e":Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
    new-array v4, v11, [Ljava/lang/Object;

    const-string/jumbo v5, "Building location facility location record failed. "

    aput-object v5, v4, v9

    aput-object v0, v4, v10

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 130
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;

    invoke-direct {v4}, Lcom/xiaomi/finddevice/v2/command/command/Command$ReplyException;-><init>()V

    throw v4

    .line 118
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException;
    .restart local v1    # "locationRecordBuilder":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Old accuracy: %s, new accuracy: %s. "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 119
    iget-object v7, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getAccuracy()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 120
    iget v7, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 118
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 122
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v4}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getAccuracy()F

    move-result v4

    iget v5, v1, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->accuracy:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 123
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "More accurate, use this record. "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaomi/finddevice/v2/track/Locator;->mLocationFacilityRecord:Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/command/command/Command$EncryptionException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
