.class public Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
.super Ljava/lang/Object;
.source "FindDeviceStatusManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException;,
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;,
        Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;


# instance fields
.field private volatile mLastSessionUserId:Ljava/lang/String;

.field private volatile mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

.field private mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;


# direct methods
.method static synthetic -wrap0(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdFromStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    .locals 3
    .param p1, "savedStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .line 64
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->syncLastStatusLocked()V

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Instantiated. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private activateAndUploadPhoneInfoIfNecessaryLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .param p3, "newStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .prologue
    .line 1043
    invoke-static {p3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-static {p2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Close->open. Activite all sims and upload the sim info. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 1046
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->invalidateCache()V

    .line 1047
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PhoneInfoUpdateTask;->doAll()V

    goto :goto_0
.end method

.method private changeStatusChangeSessionStatusToLOCKEDLocked(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 886
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->safeGetStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v0

    .line 888
    .local v0, "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->changeSessionStatusToLOCKED()V

    .line 889
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->saveStatusLocked(Landroid/content/Context;)V

    .line 891
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->onNonSeqStatusChangeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V

    .line 885
    return-void
.end method

.method private changeStatusChangeSessionStatusToLOSTLocked(Landroid/content/Context;JJZLcom/xiaomi/finddevice/common/SMSGateways;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sessionId"    # J
    .param p4, "lostTime"    # J
    .param p6, "needLocateDevice"    # Z
    .param p7, "gateways"    # Lcom/xiaomi/finddevice/common/SMSGateways;

    .prologue
    .line 896
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->safeGetStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v0

    .line 898
    .local v0, "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->changeSessionStatusToLOST(JJZLcom/xiaomi/finddevice/common/SMSGateways;)V

    .line 899
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->saveStatusLocked(Landroid/content/Context;)V

    .line 901
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->onNonSeqStatusChangeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V

    .line 895
    return-void
.end method

.method private changeStatusChangeSessionStatusToOPENEDLocked(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "clearNeedVerify"    # Z

    .prologue
    .line 874
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->safeGetStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v0

    .line 876
    .local v0, "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->changeSessionStatusToOPENED()V

    .line 877
    if-eqz p2, :cond_0

    .line 878
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->clearNeedVerify()V

    .line 880
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->saveStatusLocked(Landroid/content/Context;)V

    .line 882
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->onNonSeqStatusChangeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V

    .line 873
    return-void
.end method

.method private changeStatusIncreaseSeqLocked(Landroid/content/Context;J)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "newSeq"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 868
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "Seq changed from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getSeq()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 869
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v0, p2, p3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->increaseSeq(J)V

    .line 870
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->saveStatusLocked(Landroid/content/Context;)V

    .line 867
    return-void
.end method

.method private changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "newStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 905
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->safeGetStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v0

    .line 907
    .local v0, "oldStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .line 908
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->saveStatusLocked(Landroid/content/Context;)V

    .line 910
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->safeGetStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->onNonSeqStatusChangeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V

    .line 904
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    monitor-enter v2

    .line 52
    :try_start_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->sInstance:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    if-nez v1, :cond_0

    .line 53
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getStatus(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v0

    .line 54
    .local v0, "savedStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    invoke-direct {v1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;-><init>(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    sput-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->sInstance:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;

    .line 56
    .end local v0    # "savedStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_0
    sget-object v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->sInstance:Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getSessionUserIdFromStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Ljava/lang/String;
    .locals 3
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 1091
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1092
    const/4 v1, 0x0

    return-object v1

    .line 1095
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "userId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1099
    const-string/jumbo v2, "Open status, but no user id in the status info. "

    .line 1098
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_1
    return-object v0
.end method

.method private getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdFromStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isLockStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 1076
    if-nez p0, :cond_0

    .line 1077
    const/4 v0, 0x0

    return v0

    .line 1079
    :cond_0
    #invoke-interface {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->isLocked()Z

    #move-result v0
    
    const/4 v0, 0x0
    
	return v0
.end method

.method private static isLostStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 1083
    if-nez p0, :cond_0

    .line 1084
    const/4 v0, 0x0

    return v0

    .line 1086
    :cond_0
    #invoke-interface {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->isLost()Z

    #move-result v0
    
    const/4 v0, 0x0
    return v0
.end method

.method private static isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 1069
    if-nez p0, :cond_0

    .line 1070
    const/4 v0, 0x0

    return v0

    .line 1072
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->isOpen()Z

    move-result v0

    return v0
.end method

.method private static needVerify(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 1111
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1112
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->needVerify()Z

    move-result v0

    return v0
.end method

.method private static notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1130
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    invoke-static {p0, v0}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method private static notifyUserCloseSuccess(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1125
    invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserCloseSuccess(Landroid/content/Context;)V

    .line 1124
    return-void
.end method

.method private static notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1121
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->failureExceptionTofailureCauseString(Landroid/content/Context;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1120
     invoke-static {p0}, Lmiui/cloud/finddevice/FindDeviceNotification;->notifyUserCloseSuccess(Landroid/content/Context;)V

    .line 1119
    return-void
.end method

.method private static notifyUserOpenSuccess(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1116
    invoke-static {}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->get()Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/finddevice/v2/ui/OpenAlertManager;->alert(Landroid/content/Context;)Z

    .line 1115
    return-void
.end method

.method private onNonSeqStatusChangeLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .param p3, "newStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .prologue
    .line 917
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->activateAndUploadPhoneInfoIfNecessaryLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V

    .line 918
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->uploadRegIdIfNecessaryLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V

    .line 919
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->startOrStopTrackLocked(Landroid/content/Context;)V

    .line 920
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->performLockUnlockLocked(Landroid/content/Context;)V

    .line 921
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->showOrHideVerifySysNotificationLocked(Landroid/content/Context;)V

    .line 922
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->syncLastStatusWithBroadcastLocked(Landroid/content/Context;)V

    .line 923
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/PeriodicUpdateTask;->doUpdateAlarm()V

    .line 916
    return-void
.end method

.method private performKickAccountIfNecessaryLocked(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1020
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "called. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 1022
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1023
    return-void

    .line 1026
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->getLoginedXiaomiAccountUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1027
    .local v0, "loginedUserId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    return-void

    .line 1031
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1032
    return-void

    .line 1035
    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Need kickout. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 1036
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->kickOutCurrentAccount(Landroid/content/Context;)V

    .line 1019
    return-void
.end method

.method private performLockUnlockLocked(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 973
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "called"

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 975
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->performKickAccountIfNecessaryLocked(Landroid/content/Context;)V

    .line 977
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 978
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "@ lock state. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 980
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 981
    const-string/jumbo v2, "device_provisioned"

    .line 980
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Lock device. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 985
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "userId":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getDisplayId()Ljava/lang/String;

    move-result-object v1

    .line 989
    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 990
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getPhone()Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-static {p1, v0, v1, v2, v3}, Lmiui/cloud/finddevice/FindDeviceKeyguardController;->lock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/ConnectivityHelper;->openWifiAndMobileNetwork(Landroid/content/Context;)V

    .line 993
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 994
    invoke-static {p1}, Lcom/xiaomi/finddevice/adapter/UsbManagerAdapter;->offUsbTransfer(Landroid/content/Context;)V

    .line 971
    .end local v0    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 996
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "PROVISION in process. do NOT lock. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 1000
    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "@ unlock state. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 1001
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Unlock device. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 1003
    invoke-static {p1}, Lmiui/cloud/finddevice/FindDeviceKeyguardController;->unlock(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static safeGetStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .locals 1
    .param p0, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    const/4 v0, 0x0

    .line 1106
    if-nez p0, :cond_0

    return-object v0

    .line 1107
    :cond_0
    invoke-interface {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v0

    return-object v0
.end method

.method private saveStatusLocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 949
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->saveStatus(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 950
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    if-nez v0, :cond_0

    .line 951
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "Status cleared. "

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 948
    :goto_0
    return-void

    .line 953
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "New status saved. "

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showOrHideVerifySysNotificationLocked(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x40

    .line 1008
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->needVerify(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    new-instance v0, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;

    .line 1011
    const v1, 0x7f070047

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1012
    const v2, 0x7f070048

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1013
    const/4 v3, 0x0

    .line 1009
    invoke-direct {v0, v4, v1, v2, v3}, Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, v0}, Lmiui/cloud/finddevice/FindDeviceSysNotification;->show(Landroid/content/Context;Lmiui/cloud/finddevice/FindDeviceSysNotification$Notification;)V

    .line 1007
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-static {p1, v4}, Lmiui/cloud/finddevice/FindDeviceSysNotification;->dismiss(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private startOrStopTrackLocked(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 958
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLostStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->needLocateDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;

    move-result-object v0

    .line 961
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getLostId()J

    move-result-wide v2

    .line 962
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getKey()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    move-result-object v4

    .line 963
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 964
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getLostTime()J

    move-result-wide v6

    .line 965
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getLocateSMSGateways()Lcom/xiaomi/finddevice/common/SMSGateways;

    move-result-object v8

    move-object v1, p1

    .line 959
    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->startSession(Landroid/content/Context;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;JLcom/xiaomi/finddevice/common/SMSGateways;)V

    .line 957
    :goto_0
    return-void

    .line 967
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/track/TrackManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/finddevice/v2/track/TrackManager;->endSession(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private syncLastStatusLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 927
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    if-nez v0, :cond_0

    .line 928
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 929
    iput-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastSessionUserId:Ljava/lang/String;

    .line 926
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 932
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdFromStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastSessionUserId:Ljava/lang/String;

    goto :goto_0
.end method

.method private syncLastStatusWithBroadcastLocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 937
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .line 939
    .local v1, "old":Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->syncLastStatusLocked()V

    .line 941
    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v2

    .line 942
    iget-object v3, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v3

    .line 941
    if-eq v2, v3, :cond_0

    .line 943
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.finddevice.action.LAST_STATUS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "miui.cloud.finddevice.AccessFindDevice"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 936
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateThrowExceptionIfFailedLocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "thingsToLogIfFailed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 690
    .local p3, "exceptionToThrowIfFailed":Ljava/lang/Exception;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->update(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "updateException":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 693
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "updateException":Ljava/lang/Exception;
    throw v0

    .line 695
    .restart local v0    # "updateException":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 696
    throw p3
.end method

.method private uploadRegIdIfNecessaryLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "oldStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;
    .param p3, "newStatus"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    .prologue
    .line 1056
    invoke-static {p3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    invoke-static {p2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Close->open, Upload RegId. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 1059
    invoke-static {}, Lcom/xiaomi/finddevice/v2/update/RegIdUpdateTask;->doAll()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized buildCommand(Landroid/content/Context;Landroid/os/Bundle;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 634
    const/4 v0, 0x0

    .line 636
    .local v0, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    const/4 v11, 0x0

    .line 639
    .local v11, "retried":Z
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    new-instance v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :catch_0
    move-exception v9

    .line 652
    .local v9, "decryptionException":Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
    if-eqz v11, :cond_3

    .line 653
    :try_start_1
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .end local v9    # "decryptionException":Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 645
    .restart local v0    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :cond_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 646
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getSeq()J

    move-result-wide v4

    .line 647
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getKey()Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    move-result-object v6

    .line 648
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getPub1()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    move-result-object v7

    .line 649
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getPub2()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    .line 642
    invoke-static/range {v1 .. v8}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;->buildCommand(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 682
    .local v0, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getSeq()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusIncreaseSeqLocked(Landroid/content/Context;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 684
    return-object v0

    .line 669
    .local v0, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :catch_1
    move-exception v10

    .line 670
    .local v10, "findDeviceNotOpenException":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException;
    if-eqz v11, :cond_1

    .line 671
    :try_start_4
    throw v10

    .line 673
    :cond_1
    const/4 v11, 0x1

    .line 674
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "FindDevice not open. Update and retry. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 675
    const-string/jumbo v1, "Updating failed. Abort retry. "

    invoke-direct {p0, p1, v1, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateThrowExceptionIfFailedLocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 676
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Updating succeed. Retry building command. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 660
    .end local v10    # "findDeviceNotOpenException":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$FindDeviceNotOpenException;
    :catch_2
    move-exception v12

    .line 661
    .local v12, "verifySignatureException":Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
    if-eqz v11, :cond_2

    .line 662
    throw v12

    .line 664
    :cond_2
    const/4 v11, 0x1

    .line 665
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Verify signature failed. Update and retry. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 666
    const-string/jumbo v1, "Updating failed. Abort retry. "

    invoke-direct {p0, p1, v1, v12}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateThrowExceptionIfFailedLocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 667
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Updating succeed. Retry building command. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 655
    .end local v12    # "verifySignatureException":Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
    .restart local v9    # "decryptionException":Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
    :cond_3
    const/4 v11, 0x1

    .line 656
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Decrypt failed. Update and retry. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 657
    const-string/jumbo v1, "Updating failed. Abort retry. "

    invoke-direct {p0, p1, v1, v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateThrowExceptionIfFailedLocked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 658
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Updating succeed. Retry building command. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized checkLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 545
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->performLockUnlockLocked(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 544
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkTrack(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 550
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->startOrStopTrackLocked(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 549
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkVerify(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 555
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->showOrHideVerifySysNotificationLocked(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 554
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close(Landroid/content/Context;Z)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notifyUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_8

    monitor-exit p0

    .line 333
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    if-eqz p2, :cond_0

    .line 327
    :try_start_2
    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 329
    :cond_0
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 320
    :catch_1
    move-exception v7

    .line 321
    .local v7, "e":Ljava/io/IOException;
    if-eqz p2, :cond_1

    .line 322
    :try_start_3
    invoke-static {p1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 324
    :cond_1
    throw v7

    .line 315
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 316
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    if-eqz p2, :cond_2

    .line 317
    invoke-static {p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 319
    :cond_2
    throw v2

    .line 310
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v5

    .line 311
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    if-eqz p2, :cond_3

    .line 312
    invoke-static {p1, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 314
    :cond_3
    throw v5

    .line 305
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_4
    move-exception v4

    .line 306
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    if-eqz p2, :cond_4

    .line 307
    invoke-static {p1, v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 309
    :cond_4
    throw v4

    .line 300
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_5
    move-exception v3

    .line 301
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    if-eqz p2, :cond_5

    .line 302
    invoke-static {p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 304
    :cond_5
    throw v3

    .line 295
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v1

    .line 296
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    if-eqz p2, :cond_6

    .line 297
    invoke-static {p1, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 299
    :cond_6
    throw v1

    .line 290
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_7
    move-exception v8

    .line 291
    .local v8, "e":Ljava/lang/InterruptedException;
    if-eqz p2, :cond_7

    .line 292
    invoke-static {p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 294
    :cond_7
    throw v8

    .line 336
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_8
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 340
    .local v9, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_4
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->unbind()V

    .line 341
    const/4 v10, 0x0

    check-cast v10, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 343
    if-eqz p2, :cond_9

    .line 344
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseSuccess(Landroid/content/Context;)V
    :try_end_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    :cond_9
    :try_start_5
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 285
    return-void

    .line 378
    :catch_8
    move-exception v7

    .line 379
    .restart local v7    # "e":Ljava/io/IOException;
    if-eqz p2, :cond_a

    .line 380
    :try_start_6
    invoke-static {p1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 382
    :cond_a
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 383
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 384
    :try_start_7
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 383
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 373
    :catch_9
    move-exception v2

    .line 374
    .restart local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    if-eqz p2, :cond_b

    .line 375
    :try_start_8
    invoke-static {p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 377
    :cond_b
    throw v2

    .line 368
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_a
    move-exception v1

    .line 369
    .restart local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    if-eqz p2, :cond_c

    .line 370
    invoke-static {p1, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 372
    :cond_c
    throw v1

    .line 363
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_b
    move-exception v3

    .line 364
    .restart local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    if-eqz p2, :cond_d

    .line 365
    invoke-static {p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 367
    :cond_d
    throw v3

    .line 358
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_c
    move-exception v4

    .line 359
    .restart local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    if-eqz p2, :cond_e

    .line 360
    invoke-static {p1, v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 362
    :cond_e
    throw v4

    .line 353
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_d
    move-exception v8

    .line 354
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    if-eqz p2, :cond_f

    .line 355
    invoke-static {p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 357
    :cond_f
    throw v8

    .line 348
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_e
    move-exception v5

    .line 349
    .restart local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    if-eqz p2, :cond_10

    .line 350
    invoke-static {p1, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 352
    :cond_10
    throw v5

    .line 346
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_f
    move-exception v6

    .line 347
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Device credential should never be null here. "

    invoke-direct {v10, v11, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public declared-synchronized closeLocal(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 614
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 616
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not open. Can\'t close. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 618
    return-void

    .line 621
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    check-cast v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 613
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ft(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    monitor-exit p0

    .line 432
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :try_start_2
    invoke-static {p1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 428
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 423
    :catch_1
    move-exception v7

    .line 424
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {p1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 425
    throw v7

    .line 420
    .end local v7    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 421
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    invoke-static {p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 422
    throw v2

    .line 417
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v5

    .line 418
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    invoke-static {p1, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 419
    throw v5

    .line 414
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_4
    move-exception v4

    .line 415
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    invoke-static {p1, v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 416
    throw v4

    .line 411
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_5
    move-exception v3

    .line 412
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    invoke-static {p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 413
    throw v3

    .line 408
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v1

    .line 409
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    invoke-static {p1, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 410
    throw v1

    .line 405
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_7
    move-exception v8

    .line 406
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-static {p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 407
    throw v8

    .line 435
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 439
    .local v9, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_4
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->ft()V

    .line 440
    const/4 v10, 0x0

    check-cast v10, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v10}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 442
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseSuccess(Landroid/content/Context;)V
    :try_end_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    :try_start_5
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 400
    return-void

    .line 463
    :catch_8
    move-exception v7

    .line 464
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {p1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 465
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 466
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 467
    :try_start_7
    invoke-virtual {v9}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 466
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 460
    :catch_9
    move-exception v2

    .line 461
    .restart local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :try_start_8
    invoke-static {p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 462
    throw v2

    .line 457
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_a
    move-exception v1

    .line 458
    .restart local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    invoke-static {p1, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 459
    throw v1

    .line 454
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_b
    move-exception v3

    .line 455
    .restart local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    invoke-static {p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 456
    throw v3

    .line 451
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_c
    move-exception v4

    .line 452
    .restart local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    invoke-static {p1, v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 453
    throw v4

    .line 448
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_d
    move-exception v8

    .line 449
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-static {p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 450
    throw v8

    .line 445
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catch_e
    move-exception v5

    .line 446
    .restart local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    invoke-static {p1, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserCloseFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 447
    throw v5

    .line 443
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_f
    move-exception v6

    .line 444
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "Device credential should never be null here. "

    invoke-direct {v10, v11, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public declared-synchronized getFindDeviceInfo(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfo;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v0, Lmiui/cloud/finddevice/FindDeviceInfo;

    invoke-direct {v0}, Lmiui/cloud/finddevice/FindDeviceInfo;-><init>()V

    .line 102
    .local v0, "info":Lmiui/cloud/finddevice/FindDeviceInfo;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v2

    iput-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isOpen:Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLocked(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isLocked:Z

    .line 104
    iget-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isOpen:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->sessionUserId:Ljava/lang/String;

    .line 105
    iget-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isOpen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getDisplayId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->displayId:Ljava/lang/String;

    .line 106
    iget-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isOpen:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getFid()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->fid:Ljava/lang/String;

    .line 107
    iget-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isOpen:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->email:Ljava/lang/String;

    .line 108
    iget-boolean v2, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->isOpen:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getPhone()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lmiui/cloud/finddevice/FindDeviceInfo;->phone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 109
    return-object v0

    :cond_1
    move-object v2, v1

    .line 104
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 105
    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 106
    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 107
    goto :goto_3

    .end local v0    # "info":Lmiui/cloud/finddevice/FindDeviceInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFindDeviceInfoFromServer(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfo;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getFindDeviceInfoWithLockMessageFromServer(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    move-result-object v0

    iget-object v0, v0, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;->findDeviceInfo:Lmiui/cloud/finddevice/FindDeviceInfo;

    return-object v0
.end method

.method public declared-synchronized getFindDeviceInfoWithLockMessageFromServer(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 133
    .local v7, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    const/4 v5, 0x0

    .line 135
    .local v5, "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    :try_start_2
    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->statusWithLockMessage()Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 154
    .local v5, "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    :try_start_3
    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 158
    .end local v5    # "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    :goto_1
    if-eqz v5, :cond_3

    .line 159
    iget-object v8, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;->findDeviceStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 160
    new-instance v4, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    .line 161
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getFindDeviceInfo(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfo;

    move-result-object v8

    .line 162
    new-instance v9, Lmiui/cloud/finddevice/LockMessage;

    .line 163
    iget-object v10, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;->lockMessage:Lmiui/cloud/finddevice/LockMessage;

    iget-object v10, v10, Lmiui/cloud/finddevice/LockMessage;->prompt:Ljava/lang/String;

    .line 164
    iget-object v11, v5, Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;->lockMessage:Lmiui/cloud/finddevice/LockMessage;

    iget-object v11, v11, Lmiui/cloud/finddevice/LockMessage;->phone:Ljava/lang/String;

    .line 162
    invoke-direct {v9, v10, v11}, Lmiui/cloud/finddevice/LockMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {v4, v8, v9}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;-><init>(Lmiui/cloud/finddevice/FindDeviceInfo;Lmiui/cloud/finddevice/LockMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v4, "findDeviceInfoWithLockMessage":Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
    :goto_2
    monitor-exit p0

    .line 170
    return-object v4

    .line 128
    .end local v4    # "findDeviceInfoWithLockMessage":Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
    .end local v7    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/4 v8, 0x2

    :try_start_4
    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "IGNORE update failure caused by AccountException. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 139
    .local v5, "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    .restart local v7    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :try_start_5
    iget-object v8, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    if-nez v8, :cond_0

    .line 141
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catchall_1
    move-exception v8

    .line 154
    :try_start_6
    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 153
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    .restart local v0    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :cond_0
    :try_start_7
    iget-object v8, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v8, v8, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    instance-of v8, v8, Lorg/json/JSONObject;

    if-nez v8, :cond_1

    .line 144
    throw v0

    .line 146
    :cond_1
    iget-object v8, v0, Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;->response:Lmiui/cloud/net/XHttpClient$HttpResponse;

    iget-object v6, v8, Lmiui/cloud/net/XHttpClient$HttpResponse;->content:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    .line 147
    .local v6, "responseContent":Lorg/json/JSONObject;
    const-string/jumbo v8, "code"

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 148
    .local v3, "errorCode":I
    const v8, 0x14ffc

    if-eq v3, v8, :cond_2

    .line 149
    const v8, 0x14ff6

    if-eq v3, v8, :cond_2

    .line 150
    throw v0

    .line 152
    :cond_2
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "IGNORE signature error. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    :try_start_8
    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 136
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    .end local v3    # "errorCode":I
    .end local v6    # "responseContent":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    .line 137
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/4 v8, 0x1

    :try_start_9
    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "NullDeviceCredentialException caught, clear status. "

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 138
    const/4 v8, 0x0

    check-cast v8, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 154
    :try_start_a
    invoke-virtual {v7}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto/16 :goto_1

    .line 167
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    .end local v5    # "findDeviceStatusWithLockMessage":Lcom/xiaomi/finddevice/v2/FindDeviceStatusWithLockMessage;
    :cond_3
    new-instance v4, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;

    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getFindDeviceInfo(Landroid/content/Context;)Lmiui/cloud/finddevice/FindDeviceInfo;

    move-result-object v8

    new-instance v9, Lmiui/cloud/finddevice/LockMessage;

    invoke-direct {v9}, Lmiui/cloud/finddevice/LockMessage;-><init>()V

    invoke-direct {v4, v8, v9}, Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;-><init>(Lmiui/cloud/finddevice/FindDeviceInfo;Lmiui/cloud/finddevice/LockMessage;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 166
    .restart local v4    # "findDeviceInfoWithLockMessage":Lmiui/cloud/finddevice/FindDeviceInfoWithLockMessage;
    goto :goto_2
.end method

.method public getLastSessionUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastSessionUserId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getRecommendUpdateTime()J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    monitor-enter p0

    .line 485
    :try_start_0
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit p0

    .line 486
    return-wide v6

    .line 489
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getExtraInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$ExtraInfo;->getRefreshSuggestion()J

    move-result-wide v0

    .line 490
    .local v0, "recommendTime":J
    iget-object v4, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v4

    invoke-interface {v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getExpireTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 491
    .local v2, "sessionExpireTime":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 492
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 493
    :cond_1
    move-wide v0, v2

    :cond_2
    monitor-exit p0

    .line 495
    return-wide v0

    .end local v0    # "recommendTime":J
    .end local v2    # "sessionExpireTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getStatusTimeInfo()Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;
    .locals 4

    .prologue
    monitor-enter p0

    .line 478
    :try_start_0
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;-><init>()V

    .line 479
    .local v0, "rst":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getRecommendUpdateTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->recommendUpdateTime:J

    .line 480
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    if-nez v1, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;->createdServerTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 481
    return-object v0

    .line 480
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-interface {v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getCreatedServerTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .end local v0    # "rst":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$StatusTimeInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isLastStatusLocked()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isLockStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    return v0
.end method

.method public isLastStatusOpen()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mLastStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Status;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isLocked(Landroid/content/Context;)Z
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLockStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 74
    return v2

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->getSessionUserIdLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/finddevice/common/util/AccountHelper;->getLoginedXiaomiAccountUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    .line 79
    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lockLocal(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 585
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not open. Can\'t lock. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 589
    return-void

    .line 592
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusChangeSessionStatusToLOCKEDLocked(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 584
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lostLocal(Landroid/content/Context;JJZLcom/xiaomi/finddevice/common/SMSGateways;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sessionId"    # J
    .param p4, "lostTime"    # J
    .param p6, "needLocateDevice"    # Z
    .param p7, "gateways"    # Lcom/xiaomi/finddevice/common/SMSGateways;

    .prologue
    monitor-enter p0

    .line 602
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Called. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Not open. Can\'t change to LOST status. "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 606
    return-void

    .line 609
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusChangeSessionStatusToLOSTLocked(Landroid/content/Context;JJZLcom/xiaomi/finddevice/common/SMSGateways;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 600
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(Landroid/content/Context;Z)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notifyUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->mStatus:Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-static {v11}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->needVerify(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v0

    .line 231
    .local v0, "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 235
    .local v10, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_2
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->bind()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 237
    if-eqz p2, :cond_1

    .line 238
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenSuccess(Landroid/content/Context;)V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    :cond_1
    :try_start_3
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 177
    return-void

    .line 217
    .end local v0    # "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    .end local v10    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    if-eqz p2, :cond_2

    .line 219
    :try_start_4
    invoke-static {p1, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 221
    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 212
    :catch_1
    move-exception v8

    .line 213
    .local v8, "e":Ljava/io/IOException;
    if-eqz p2, :cond_3

    .line 214
    :try_start_5
    invoke-static {p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 216
    :cond_3
    throw v8

    .line 207
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 208
    .local v3, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    if-eqz p2, :cond_4

    .line 209
    invoke-static {p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 211
    :cond_4
    throw v3

    .line 202
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v6

    .line 203
    .local v6, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    if-eqz p2, :cond_5

    .line 204
    invoke-static {p1, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 206
    :cond_5
    throw v6

    .line 197
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_4
    move-exception v5

    .line 198
    .local v5, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    if-eqz p2, :cond_6

    .line 199
    invoke-static {p1, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 201
    :cond_6
    throw v5

    .line 192
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_5
    move-exception v4

    .line 193
    .local v4, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    if-eqz p2, :cond_7

    .line 194
    invoke-static {p1, v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 196
    :cond_7
    throw v4

    .line 187
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v2

    .line 188
    .local v2, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    if-eqz p2, :cond_8

    .line 189
    invoke-static {p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 191
    :cond_8
    throw v2

    .line 182
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_7
    move-exception v9

    .line 183
    .local v9, "e":Ljava/lang/InterruptedException;
    if-eqz p2, :cond_9

    .line 184
    invoke-static {p1, v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 186
    :cond_9
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_a
    monitor-exit p0

    .line 225
    return-void

    .line 272
    .restart local v0    # "deviceCredentialManager":Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;
    .restart local v10    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catch_8
    move-exception v8

    .line 273
    .restart local v8    # "e":Ljava/io/IOException;
    if-eqz p2, :cond_b

    .line 274
    :try_start_6
    invoke-static {p1, v8}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 276
    :cond_b
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 277
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 278
    :try_start_7
    invoke-virtual {v10}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 277
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 267
    :catch_9
    move-exception v3

    .line 268
    .restart local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    if-eqz p2, :cond_c

    .line 269
    :try_start_8
    invoke-static {p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 271
    :cond_c
    throw v3

    .line 262
    .end local v3    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_a
    move-exception v2

    .line 263
    .restart local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    if-eqz p2, :cond_d

    .line 264
    invoke-static {p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 266
    :cond_d
    throw v2

    .line 257
    .end local v2    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_b
    move-exception v4

    .line 258
    .restart local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    if-eqz p2, :cond_e

    .line 259
    invoke-static {p1, v4}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 261
    :cond_e
    throw v4

    .line 252
    .end local v4    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_c
    move-exception v5

    .line 253
    .restart local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    if-eqz p2, :cond_f

    .line 254
    invoke-static {p1, v5}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 256
    :cond_f
    throw v5

    .line 247
    .end local v5    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_d
    move-exception v9

    .line 248
    .restart local v9    # "e":Ljava/lang/InterruptedException;
    if-eqz p2, :cond_10

    .line 249
    invoke-static {p1, v9}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 251
    :cond_10
    throw v9

    .line 242
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catch_e
    move-exception v6

    .line 243
    .restart local v6    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    if-eqz p2, :cond_11

    .line 244
    invoke-static {p1, v6}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->notifyUserOpenFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 246
    :cond_11
    throw v6

    .line 240
    .end local v6    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catch_f
    move-exception v7

    .line 241
    .local v7, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "Device credential should never be null here. "

    invoke-direct {v11, v12, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public declared-synchronized purge(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notifyUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->close(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 393
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 564
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V

    .line 566
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "called. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 568
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Not locked. Can\'t unlock. "

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 570
    return-void

    .line 573
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 575
    .local v1, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_2
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->unlock()V

    .line 576
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusChangeSessionStatusToOPENEDLocked(Landroid/content/Context;Z)V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 580
    :try_start_3
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 562
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Device credential should never be null here. "

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 579
    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catchall_0
    move-exception v2

    .line 580
    :try_start_5
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 579
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v1    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update(Landroid/content/Context;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 504
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->updateDeviceCredential(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_0
    const/4 v3, 0x0

    .line 511
    .local v3, "newStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 514
    .local v5, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_2
    invoke-virtual {v5}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->status()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v3

    .line 518
    .local v3, "newStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpenStatus(Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)Z

    move-result v4

    .line 519
    .local v4, "open":Z
    if-eqz v4, :cond_4

    .line 520
    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getSession()Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;

    move-result-object v7

    invoke-interface {v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus$Session;->getExpireTime()J

    move-result-wide v8

    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->getCreatedServerTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_3

    const/4 v2, 0x1

    .line 521
    .local v2, "expired":Z
    :goto_1
    invoke-interface {v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->isVersionMatch()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v6, 0x0

    .line 522
    .local v6, "versionNotMatch":Z
    :goto_2
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 523
    :cond_0
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "rebind"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 524
    invoke-virtual {v5}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->bind()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 530
    :cond_1
    if-eqz v3, :cond_2

    .line 531
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 534
    :cond_2
    invoke-virtual {v5}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "expired":Z
    .end local v3    # "newStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .end local v4    # "open":Z
    .end local v6    # "versionNotMatch":Z
    :goto_3
    monitor-exit p0

    .line 501
    return-void

    .line 505
    .end local v5    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    const/4 v7, 0x2

    :try_start_4
    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "IGNORE update failure caused by AccountException. "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 520
    .restart local v3    # "newStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .restart local v4    # "open":Z
    .restart local v5    # "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "expired":Z
    goto :goto_1

    .line 519
    .end local v2    # "expired":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "expired":Z
    goto :goto_1

    .line 521
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "versionNotMatch":Z
    goto :goto_2

    .line 526
    .end local v2    # "expired":Z
    .end local v3    # "newStatus":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .end local v4    # "open":Z
    .end local v6    # "versionNotMatch":Z
    :catch_1
    move-exception v1

    .line 527
    .local v1, "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    const/4 v7, 0x1

    :try_start_5
    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "NullDeviceCredentialException caught, clear status. "

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 528
    const/4 v7, 0x0

    check-cast v7, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v7}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 530
    if-eqz v3, :cond_6

    .line 531
    :try_start_6
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 534
    :cond_6
    invoke-virtual {v5}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    goto :goto_3

    .line 529
    .end local v1    # "e":Lcom/xiaomi/finddevice/v2/net/SecurityManager$NullDeviceCredentialException;
    :catchall_1
    move-exception v7

    .line 530
    if-eqz v3, :cond_7

    .line 531
    invoke-direct {p0, p1, v3}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 534
    :cond_7
    invoke-virtual {v5}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 529
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized updateDeviceCredential(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/SecurityManager$AccountException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 705
    :try_start_0
    new-instance v0, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;

    invoke-virtual {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->isOpen()Z

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;-><init>(Landroid/content/Context;Z)V

    .line 707
    .local v0, "handler":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->updateDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager$IUpdateDeviceCredentialHandler;)V

    .line 709
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->didUpdate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;->getNewStatus()Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    move-result-object v1

    .line 711
    .local v1, "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    if-nez v1, :cond_0

    .line 712
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Should not be null if update succeed. "

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "handler":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;
    .end local v1    # "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 715
    .restart local v0    # "handler":Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal$UpdateDeviceCredentialHandler;
    .restart local v1    # "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    check-cast v2, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 716
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatusManagerInternal;->changeStatusLocked(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "s":Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    :cond_1
    monitor-exit p0

    .line 703
    return-void
.end method
