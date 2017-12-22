.class public Lcom/xiaomi/finddevice/v2/track/TrackManager;
.super Ljava/lang/Object;
.source "TrackManager.java"


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/v2/track/TrackManager;


# instance fields
.field private mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

.field private mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;


# direct methods
.method private constructor <init>(Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "Initialized with %s. "

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    .line 36
    return-void
.end method

.method private applySMSTicketLocked(Landroid/content/Context;)Z
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 250
    const/16 v1, 0xf

    .line 251
    .local v1, "maxCount":I
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget v0, v2, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSTicketIssueCount:I

    .line 253
    .local v0, "count":I
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Max tickets: %s, tickets: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 250
    const/16 v2, 0xf

    .line 255
    if-lt v0, v2, :cond_0

    .line 256
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Deny to issue a ticket. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 257
    return v6

    .line 260
    :cond_0
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Issue a ticket"

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusChangeSMSTicketIssueCountLocked(Landroid/content/Context;I)V

    .line 262
    return v7
.end method

.method private applySMSUploadTicketLocked(Landroid/content/Context;)Z
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 231
    .local v2, "now":J
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-wide v0, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSUploadTicketLastIssueTime:J

    .line 233
    .local v0, "last":J
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "now: %s, last: %s. "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 234
    invoke-static {v2, v3}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeSting(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 235
    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeSting(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 233
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 237
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 238
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1499700

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 239
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Deny to issue a ticket. "

    aput-object v5, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 240
    return v8

    .line 243
    :cond_0
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "Issue a ticket"

    aput-object v5, v4, v8

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 244
    invoke-direct {p0, p1, v2, v3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusChangeSMSUploadTicketLastIssueTimeLocked(Landroid/content/Context;J)V

    .line 245
    return v9
.end method

.method private changeStatusAddLocationRecordsLocked(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "records"    # [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .prologue
    const/16 v7, 0x90

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 300
    array-length v4, p2

    if-le v4, v7, :cond_0

    .line 301
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Too many records to add. "

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v4, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v4}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->size()I

    move-result v4

    array-length v5, p2

    add-int v2, v4, v5

    .line 306
    .local v2, "total":I
    if-le v2, v7, :cond_1

    .line 307
    add-int/lit16 v1, v2, -0x90

    .line 309
    .local v1, "toRemove":I
    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "Drop %s records. "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 310
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v4, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v4, v3, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 313
    .end local v1    # "toRemove":I
    :cond_1
    array-length v4, p2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p2, v3

    .line 314
    .local v0, "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    iget-object v5, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v5, v5, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v5, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 317
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->startUploadLocationTaskIfNecessaryLocked()V

    .line 298
    return-void
.end method

.method private changeStatusChangeSMSTicketIssueCountLocked(Landroid/content/Context;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "newIssuedCount"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput p2, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSTicketIssueCount:I

    .line 295
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method private changeStatusChangeSMSUploadTicketLastIssueTimeLocked(Landroid/content/Context;J)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "newIssueTime"    # J

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput-wide p2, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->SMSUploadTicketLastIssueTime:J

    .line 289
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method private changeStatusChangeSessionInfoLocked(Landroid/content/Context;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;JLcom/xiaomi/finddevice/common/SMSGateways;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sessionId"    # J
    .param p4, "sessionKey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p5, "sessionUserId"    # Ljava/lang/String;
    .param p6, "lostTime"    # J
    .param p8, "gateways"    # Lcom/xiaomi/finddevice/common/SMSGateways;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput-wide p2, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionId:J

    .line 279
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput-object p4, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .line 280
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput-object p5, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionUserId:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput-wide p6, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->lostTime:J

    .line 282
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iput-object p8, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    .line 283
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 277
    return-void
.end method

.method private changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "newStatus"    # Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    .prologue
    .line 266
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    .line 267
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 268
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->startOrStopLocateTaskIfNecessaryLocked()V

    .line 265
    return-void
.end method

.method private changeStatusRemoveLocationRecordsLocked(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "records"    # [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .prologue
    const/4 v2, 0x0

    .line 342
    array-length v3, p2

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p2, v1

    .line 343
    .local v0, "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v4, v4, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v4, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Record not added or removed/replaced. "

    aput-object v5, v4, v2

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 342
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v0    # "r":Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 341
    return-void
.end method

.method private changeStatusReplaceLocationRecordLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .param p3, "newRecord"    # Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "found":Z
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 326
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/xiaomi/finddevice/v2/track/LocationRecord;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v2, p2}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    invoke-interface {v1, p3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 329
    const/4 v0, 0x1

    .line 334
    :cond_1
    if-nez v0, :cond_2

    .line 335
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Record not added or removed/replaced. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 338
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->saveStatusLocked(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/xiaomi/finddevice/v2/track/TrackManager;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->sInstance:Lcom/xiaomi/finddevice/v2/track/TrackManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/TrackManager;

    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatusStorage;->load(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/finddevice/v2/track/TrackManager;-><init>(Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->sInstance:Lcom/xiaomi/finddevice/v2/track/TrackManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->sInstance:Lcom/xiaomi/finddevice/v2/track/TrackManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPersistentTaskManager()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;
    .locals 1

    .prologue
    .line 382
    const-string/jumbo v0, "TrackManagerTaskManager"

    invoke-static {v0}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->get(Ljava/lang/String;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    return-object v0
.end method

.method private saveStatusLocked(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 351
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "New status saved: %s. "

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatusStorage;->save(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V

    .line 350
    return-void
.end method

.method private scheduleNextLocateLocked()V
    .locals 4

    .prologue
    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    .line 370
    invoke-static {v0, v1}, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;->build(J)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 372
    invoke-static {}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->getPersistentTaskManager()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 369
    return-void
.end method

.method private startOrStopLocateTaskIfNecessaryLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->getPersistentTaskManager()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->cancelTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Z

    .line 359
    iput-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/xiaomi/finddevice/v2/track/task/LocateTask;->build()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 364
    invoke-static {}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->getPersistentTaskManager()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mLocateTask:Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    goto :goto_0
.end method

.method private startUploadLocationTaskIfNecessaryLocked()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    invoke-static {}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->getPersistentTaskManager()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/finddevice/v2/track/task/UploadLocationTask;->build()Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager;->addTask(Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;)Lcom/xiaomi/finddevice/common/task/PersistentAppTaskManager$PersistentAppTask;

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRecords(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "records"    # [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    .line 94
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Called"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 96
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    .line 97
    return v6

    .line 100
    :cond_0
    :try_start_1
    array-length v3, p2

    if-eqz v3, :cond_4

    .line 101
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSUploadTicketLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, "selected":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 104
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    move v2, v1

    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_2
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    aget-object v3, p2, v1

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getAccuracy()F

    move-result v3

    aget-object v4, p2, v2

    invoke-virtual {v4}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->getAccuracy()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 112
    move v2, v1

    goto :goto_1

    .line 115
    :cond_3
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/xiaomi/finddevice/v2/track/LocationRecord;->toBuilder()Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;

    move-result-object v0

    .line 116
    .local v0, "b":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    iget v3, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->flags:I

    .line 117
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;->build()Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    move-result-object v3

    aput-object v3, p2, v2

    .line 121
    .end local v0    # "b":Lcom/xiaomi/finddevice/v2/track/LocationRecord$LocationRecordBuilder;
    .end local v1    # "i":I
    .end local v2    # "selected":I
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusAddLocationRecordsLocked(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 122
    return v7

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized applySMSTicket(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 207
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 210
    return v3

    .line 212
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->applySMSTicketLocked(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buildLocator(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/Locator;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 82
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 85
    return-object v3

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/Locator;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v2, v1, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v3, v1, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-wide v4, v1, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionId:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/finddevice/v2/track/Locator;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doInitTasks()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 43
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->startOrStopLocateTaskIfNecessaryLocked()V

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->startUploadLocationTaskIfNecessaryLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 41
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endSession(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 74
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "endSession. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 73
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecords()[Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 129
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 132
    return-object v3

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v0, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locationRecords:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    invoke-virtual {v0, v1}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus$LocationRecordList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSMSGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 174
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Called"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 176
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    if-nez v2, :cond_0

    .line 177
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "No active session. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 178
    return-object v5

    .line 181
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    if-nez v2, :cond_1

    .line 182
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "No gateway provided. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 183
    return-object v5

    .line 186
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    iget-object v2, v2, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    invoke-virtual {v2, p1}, Lcom/xiaomi/finddevice/common/SMSGateways;->getAvailableGateway(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "gateways":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 189
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "No available gateway. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 190
    return-object v5

    .line 193
    :cond_2
    :try_start_3
    array-length v2, v0

    if-nez v2, :cond_3

    .line 194
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty available gateway list. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 195
    return-object v5

    .line 198
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    array-length v4, v0

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-int v1, v2

    .line 199
    .local v1, "r":I
    aget-object v2, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    .end local v0    # "gateways":[Ljava/lang/String;
    .end local v1    # "r":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeRecords(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "records"    # [Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 157
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 160
    return v3

    .line 163
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusRemoveLocationRecordsLocked(Landroid/content/Context;[Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 164
    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replaceRecord(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/xiaomi/finddevice/v2/track/LocationRecord;
    .param p3, "newRecord"    # Lcom/xiaomi/finddevice/v2/track/LocationRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 143
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 146
    return v3

    .line 149
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusReplaceLocationRecordLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/LocationRecord;Lcom/xiaomi/finddevice/v2/track/LocationRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 150
    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scheduleNextLocate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 219
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 222
    return v3

    .line 225
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->scheduleNextLocateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 226
    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Landroid/content/Context;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;JLcom/xiaomi/finddevice/common/SMSGateways;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sessionId"    # J
    .param p4, "sessionKey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p5, "sessionUserId"    # Ljava/lang/String;
    .param p6, "lostTime"    # J
    .param p8, "gateways"    # Lcom/xiaomi/finddevice/common/SMSGateways;

    .prologue
    monitor-enter p0

    .line 57
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "startSession: sessionId: %s, sessionUserId: %s, lostTime: %s, gateways: %s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 58
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-static {p6, p7}, Lcom/xiaomi/finddevice/common/util/TimeUtil;->getDebugTimeSting(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    aput-object p8, v3, v4

    .line 57
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/track/TrackManager;->mStatus:Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    if-eqz v1, :cond_0

    .line 61
    invoke-direct/range {p0 .. p8}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusChangeSessionInfoLocked(Landroid/content/Context;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;JLcom/xiaomi/finddevice/common/SMSGateways;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 55
    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;-><init>()V

    .line 64
    .local v0, "newStatus":Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    iput-wide p2, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionId:J

    .line 65
    iput-object p4, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionKey:Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .line 66
    iput-object p5, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->sessionUserId:Ljava/lang/String;

    .line 67
    iput-wide p6, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->lostTime:J

    .line 68
    iput-object p8, v0, Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;->locateSMSGateways:Lcom/xiaomi/finddevice/common/SMSGateways;

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "newStatus":Lcom/xiaomi/finddevice/v2/track/TrackManagerStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
