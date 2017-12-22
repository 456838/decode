.class public Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;
.super Ljava/lang/Object;
.source "StaticSymmetryBaseXCodeMapFactory.java"


# static fields
.field private static sV20150814:Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;

.field private static sV20151119:Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapV20150814;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapV20150814;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->sV20150814:Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;

    .line 11
    new-instance v0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapV20151119;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapV20151119;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->sV20151119:Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getV20150814()Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;
    .locals 2

    .prologue
    const-class v0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->sV20150814:Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getV20151119()Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;
    .locals 2

    .prologue
    const-class v0, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->sV20151119:Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
