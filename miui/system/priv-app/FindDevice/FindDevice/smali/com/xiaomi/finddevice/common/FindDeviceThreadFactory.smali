.class public Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;
.super Ljava/lang/Object;
.source "FindDeviceThreadFactory.java"


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;-><init>()V

    sput-object v0, Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;->sInstance:Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;->sInstance:Lcom/xiaomi/finddevice/common/FindDeviceThreadFactory;

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
